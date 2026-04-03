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
        0 NAMECALL                         R1 R0 K0 ["ToLocalTime"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [DateTime.fromLocalTime]
        5 GETTABLEKS                       R3 R1 K4 ["Year"]
        7 GETTABLEKS                       R4 R1 K5 ["Month"]
        9 GETTABLEKS                       R5 R1 K6 ["Day"]
       11 GETTABLEKS                       R6 R1 K7 ["Hour"]
       13 GETTABLEKS                       R7 R1 K8 ["Minute"]
       15 LOADN                            R8 0
       16 CALL                             R2 6 -1
       17 RETURN                           R2 -1

PROTO_5:
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

PROTO_6:
        0 LOADK                            R3 K0 ["%s+"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 GETIMPORT                        R2 K5 [string.match]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K6 ["^%d%d:%d%d$"]
        9 CALL                             R2 2 1
       10 GETIMPORT                        R3 K5 [string.match]
       12 MOVE                             R4 R1
       13 LOADK                            R5 K7 ["^%d%d?:%d%d[AP]M$"]
       14 CALL                             R3 2 1
       15 JUMPIF                           R2 ; [+3]
       16 JUMPIF                           R3 ; [+2]
       17 LOADNIL                          R4
       18 RETURN                           R4 1
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 JUMPIFNOT                        R3 ; [+60]
       22 GETIMPORT                        R6 K5 [string.match]
       24 MOVE                             R7 R1
       25 LOADK                            R8 K8 ["^(%d%d?):(%d%d)[AP]M$"]
       26 CALL                             R6 2 2
       27 FASTCALL1                        TONUMBER R6 ; [+3]
       28 MOVE                             R9 R6
       29 GETIMPORT                        R8 K10 [tonumber]
       31 CALL                             R8 1 1
       32 FASTCALL1                        TONUMBER R7 ; [+3]
       33 MOVE                             R10 R7
       34 GETIMPORT                        R9 K10 [tonumber]
       36 CALL                             R9 1 1
       37 MOVE                             R5 R9
       38 JUMPIFNOT                        R8 ; [+13]
       39 JUMPIFNOT                        R5 ; [+12]
       40 LOADN                            R9 1
       41 JUMPIFLT                         R8 R9 ; [+10]
       43 LOADN                            R9 12
       44 JUMPIFLT                         R9 R8 ; [+7]
       46 LOADN                            R9 0
       47 JUMPIFLT                         R5 R9 ; [+4]
       49 LOADN                            R9 59
       50 JUMPIFNOTLT                      R9 R5 ; [+3]
       52 LOADNIL                          R9
       53 RETURN                           R9 1
       54 FASTCALL2K                       STRING_SUB R1 K11 ; [+5]
       56 MOVE                             R10 R1
       57 LOADK                            R11 K11 [-2]
       58 GETIMPORT                        R9 K13 [string.sub]
       60 CALL                             R9 2 1
       61 JUMPIFNOTEQKS                    R9 K14 ["PM"] ; [+5]
       63 JUMPIFEQKN                       R8 K15 [12] ; [+3]
       65 ADDK                             R4 R8 K15 [12]
       66 RETURN                           R4 2
       67 FASTCALL2K                       STRING_SUB R1 K11 ; [+5]
       69 MOVE                             R10 R1
       70 LOADK                            R11 K11 [-2]
       71 GETIMPORT                        R9 K13 [string.sub]
       73 CALL                             R9 2 1
       74 JUMPIFNOTEQKS                    R9 K16 ["AM"] ; [+5]
       76 JUMPIFNOTEQKN                    R8 K15 [12] ; [+3]
       78 LOADN                            R4 0
       79 RETURN                           R4 2
       80 MOVE                             R4 R8
       81 RETURN                           R4 2
       82 GETIMPORT                        R6 K5 [string.match]
       84 MOVE                             R7 R1
       85 LOADK                            R8 K17 ["^(%d%d?):(%d%d)$"]
       86 CALL                             R6 2 2
       87 FASTCALL1                        TONUMBER R6 ; [+3]
       88 MOVE                             R9 R6
       89 GETIMPORT                        R8 K10 [tonumber]
       91 CALL                             R8 1 1
       92 MOVE                             R4 R8
       93 FASTCALL1                        TONUMBER R7 ; [+3]
       94 MOVE                             R9 R7
       95 GETIMPORT                        R8 K10 [tonumber]
       97 CALL                             R8 1 1
       98 MOVE                             R5 R8
       99 JUMPIFNOT                        R4 ; [+13]
      100 JUMPIFNOT                        R5 ; [+12]
      101 LOADN                            R8 0
      102 JUMPIFLT                         R4 R8 ; [+10]
      104 LOADN                            R8 23
      105 JUMPIFLT                         R8 R4 ; [+7]
      107 LOADN                            R8 0
      108 JUMPIFLT                         R5 R8 ; [+4]
      110 LOADN                            R8 59
      111 JUMPIFNOTLT                      R8 R5 ; [+3]
      113 LOADNIL                          R8
      114 RETURN                           R8 1
      115 RETURN                           R4 2

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [3] ; [+28]
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
       25 GETUPVAL                         R7 2
       26 GETUPVAL                         R8 3
       27 LOADN                            R9 0
       28 CALL                             R3 6 -1
       29 RETURN                           R3 -1
       30 GETUPVAL                         R0 0
       31 JUMPIFNOTEQKN                    R0 K8 [5] ; [+28]
       33 GETUPVAL                         R0 1
       34 LOADK                            R2 K9 ["^(%d%d%d%d)[/%.%-](%d%d)[/%.%-](%d%d)$"]
       35 NAMECALL                         R0 R0 K2 ["match"]
       37 CALL                             R0 2 3
       38 GETIMPORT                        R3 K5 [DateTime.fromLocalTime]
       40 FASTCALL1                        TONUMBER R0 ; [+3]
       41 MOVE                             R5 R0
       42 GETIMPORT                        R4 K7 [tonumber]
       44 CALL                             R4 1 1
       45 FASTCALL1                        TONUMBER R1 ; [+3]
       46 MOVE                             R6 R1
       47 GETIMPORT                        R5 K7 [tonumber]
       49 CALL                             R5 1 1
       50 FASTCALL1                        TONUMBER R2 ; [+3]
       51 MOVE                             R7 R2
       52 GETIMPORT                        R6 K7 [tonumber]
       54 CALL                             R6 1 1
       55 GETUPVAL                         R7 2
       56 GETUPVAL                         R8 3
       57 LOADN                            R9 0
       58 CALL                             R3 6 -1
       59 RETURN                           R3 -1
       60 GETIMPORT                        R0 K11 [error]
       62 LOADK                            R2 K12 ["Invalid date format: "]
       63 GETUPVAL                         R3 1
       64 CONCAT                           R1 R2 R3
       65 CALL                             R0 1 0
       66 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETIMPORT                        R3 K2 [string.find]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K3 [","]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+7]
        8 LOADK                            R5 K4 ["^([^,]+),%s*(.+)$"]
        9 NAMECALL                         R3 R0 K5 ["match"]
       11 CALL                             R3 2 2
       12 MOVE                             R1 R3
       13 MOVE                             R2 R4
       14 JUMP                             ; [+2]
       15 MOVE                             R1 R0
       16 LOADK                            R2 K6 ["00:00"]
       17 JUMPIFNOT                        R1 ; [+1]
       18 JUMPIF                           R2 ; [+2]
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 LOADK                            R5 K7 ["%s+"]
       22 LOADK                            R6 K8 [""]
       23 NAMECALL                         R3 R1 K9 ["gsub"]
       25 CALL                             R3 3 1
       26 GETUPVAL                         R4 0
       27 MOVE                             R5 R2
       28 CALL                             R4 1 2
       29 JUMPIFNOT                        R1 ; [+33]
       30 LOADK                            R8 K10 ["[/%.%-]"]
       31 NAMECALL                         R6 R3 K1 ["find"]
       33 CALL                             R6 2 1
       34 GETIMPORT                        R7 K12 [pcall]
       36 NEWCLOSURE                       R8 P0
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 CALL                             R7 1 2
       42 JUMPIFNOT                        R7 ; [+20]
       43 JUMPIFNOT                        R8 ; [+19]
       44 GETUPVAL                         R9 1
       45 JUMPIFNOT                        R9 ; [+16]
       46 GETIMPORT                        R10 K15 [os.date]
       48 LOADK                            R11 K16 ["*t"]
       49 GETTABLEKS                       R12 R8 K17 ["UnixTimestamp"]
       51 CALL                             R10 2 1
       52 GETTABLEKS                       R9 R10 K18 ["isdst"]
       54 JUMPIFNOT                        R9 ; [+7]
       55 GETTABLEKS                       R10 R8 K17 ["UnixTimestamp"]
       57 GETIMPORT                        R11 K21 [DateTime.fromUnixTimestamp]
       59 SUBK                             R12 R10 K22 [3600]
       60 CALL                             R11 1 1
       61 MOVE                             R8 R11
       62 RETURN                           R8 1
       63 LOADNIL                          R6
       64 RETURN                           R6 1

PROTO_9:
        0 JUMPIFNOTEQKN                    R0 K0 [1] ; [+4]
        2 LOADN                            R2 12
        3 SUBK                             R3 R1 K0 [1]
        4 RETURN                           R2 2
        5 SUBK                             R2 R0 K0 [1]
        6 MOVE                             R3 R1
        7 RETURN                           R2 2

PROTO_10:
        0 JUMPIFNOTEQKN                    R0 K0 [12] ; [+4]
        2 LOADN                            R2 1
        3 ADDK                             R3 R1 K1 [1]
        4 RETURN                           R2 2
        5 ADDK                             R2 R0 K1 [1]
        6 MOVE                             R3 R1
        7 RETURN                           R2 2

PROTO_11:
        0 LOADK                            R4 K0 ["L"]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K1 ["RobloxLocaleId"]
        4 NAMECALL                         R2 R0 K2 ["FormatLocalTime"]
        6 CALL                             R2 3 1
        7 JUMPIFNOT                        R1 ; [+10]
        8 MOVE                             R3 R2
        9 LOADK                            R4 K3 [", "]
       10 LOADK                            R7 K4 ["LT"]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K1 ["RobloxLocaleId"]
       14 NAMECALL                         R5 R0 K2 ["FormatLocalTime"]
       16 CALL                             R5 3 1
       17 CONCAT                           R2 R3 R5
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R4 K5 [require]
       16 GETTABLEKS                       R6 R0 K6 ["Utility"]
       18 GETTABLEKS                       R5 R6 K8 ["Wrappers"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R3 R4 K9 ["Services"]
       23 GETTABLEKS                       R2 R3 K10 ["LocalizationService"]
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Utility"]
       29 GETTABLEKS                       R5 R6 K11 ["Localization"]
       31 GETTABLEKS                       R4 R5 K12 ["Translator"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K13 ["FFlagFoundationDateTimePickerDSTFix"]
       36 NEWTABLE                         R5 0 12
       38 LOADK                            R8 K14 ["CommonUI.Controls.Label.January"]
       39 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       41 CALL                             R6 2 1
       42 SETTABLEN                        R6 R5 1
       43 LOADK                            R8 K16 ["CommonUI.Controls.Label.February"]
       44 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       46 CALL                             R6 2 1
       47 SETTABLEN                        R6 R5 2
       48 LOADK                            R8 K17 ["CommonUI.Controls.Label.March"]
       49 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       51 CALL                             R6 2 1
       52 SETTABLEN                        R6 R5 3
       53 LOADK                            R8 K18 ["CommonUI.Controls.Label.April"]
       54 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       56 CALL                             R6 2 1
       57 SETTABLEN                        R6 R5 4
       58 LOADK                            R8 K19 ["CommonUI.Controls.Label.May"]
       59 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       61 CALL                             R6 2 1
       62 SETTABLEN                        R6 R5 5
       63 LOADK                            R8 K20 ["CommonUI.Controls.Label.June"]
       64 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       66 CALL                             R6 2 1
       67 SETTABLEN                        R6 R5 6
       68 LOADK                            R8 K21 ["CommonUI.Controls.Label.July"]
       69 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       71 CALL                             R6 2 1
       72 SETTABLEN                        R6 R5 7
       73 LOADK                            R8 K22 ["CommonUI.Controls.Label.August"]
       74 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       76 CALL                             R6 2 1
       77 SETTABLEN                        R6 R5 8
       78 LOADK                            R8 K23 ["CommonUI.Controls.Label.September"]
       79 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       81 CALL                             R6 2 1
       82 SETTABLEN                        R6 R5 9
       83 LOADK                            R8 K24 ["CommonUI.Controls.Label.October"]
       84 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       86 CALL                             R6 2 1
       87 SETTABLEN                        R6 R5 10
       88 LOADK                            R8 K25 ["CommonUI.Controls.Label.November"]
       89 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       91 CALL                             R6 2 1
       92 SETTABLEN                        R6 R5 11
       93 LOADK                            R8 K26 ["CommonUI.Controls.Label.December"]
       94 NAMECALL                         R6 R3 K15 ["FormatByKey"]
       96 CALL                             R6 2 1
       97 SETTABLEN                        R6 R5 12
       98 NEWTABLE                         R6 0 7
      100 LOADK                            R9 K27 ["CommonUI.Controls.Label.SundayAbbreviated"]
      101 NAMECALL                         R7 R3 K15 ["FormatByKey"]
      103 CALL                             R7 2 1
      104 SETTABLEN                        R7 R6 1
      105 LOADK                            R9 K28 ["CommonUI.Controls.Label.MondayAbbreviated"]
      106 NAMECALL                         R7 R3 K15 ["FormatByKey"]
      108 CALL                             R7 2 1
      109 SETTABLEN                        R7 R6 2
      110 LOADK                            R9 K29 ["CommonUI.Controls.Label.TuesdayAbbreviated"]
      111 NAMECALL                         R7 R3 K15 ["FormatByKey"]
      113 CALL                             R7 2 1
      114 SETTABLEN                        R7 R6 3
      115 LOADK                            R9 K30 ["CommonUI.Controls.Label.WednesdayAbbreviated"]
      116 NAMECALL                         R7 R3 K15 ["FormatByKey"]
      118 CALL                             R7 2 1
      119 SETTABLEN                        R7 R6 4
      120 LOADK                            R9 K31 ["CommonUI.Controls.Label.ThursdayAbbreviated"]
      121 NAMECALL                         R7 R3 K15 ["FormatByKey"]
      123 CALL                             R7 2 1
      124 SETTABLEN                        R7 R6 5
      125 LOADK                            R9 K32 ["CommonUI.Controls.Label.FridayAbbreviated"]
      126 NAMECALL                         R7 R3 K15 ["FormatByKey"]
      128 CALL                             R7 2 1
      129 SETTABLEN                        R7 R6 6
      130 LOADK                            R9 K33 ["CommonUI.Controls.Label.SaturdayAbbreviated"]
      131 NAMECALL                         R7 R3 K15 ["FormatByKey"]
      133 CALL                             R7 2 1
      134 SETTABLEN                        R7 R6 7
      135 DUPCLOSURE                       R7 K34 [PROTO_0]
      136 DUPCLOSURE                       R8 K35 [PROTO_1]
      137 DUPCLOSURE                       R9 K36 [PROTO_2]
      138 CAPTURE                          VAL R7
      139 DUPCLOSURE                       R10 K37 [PROTO_3]
      140 DUPCLOSURE                       R11 K38 [PROTO_4]
      141 DUPCLOSURE                       R12 K39 [PROTO_5]
      142 DUPCLOSURE                       R13 K40 [PROTO_6]
      143 DUPCLOSURE                       R14 K41 [PROTO_8]
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R4
      146 DUPCLOSURE                       R15 K42 [PROTO_9]
      147 DUPCLOSURE                       R16 K43 [PROTO_10]
      148 DUPCLOSURE                       R17 K44 [PROTO_11]
      149 CAPTURE                          VAL R2
      150 DUPTABLE                         R18 K59 [{"DATE_COMPOSITE_TOKEN", "TIME_COMPOSITE_TOKEN", "formatLocalTime", "getDaysInMonth", "getFirstDayOfWeek", "getLastDayOfWeek", "getNextMonthInfo", "getPrevMonthInfo", "isDateWithinRange", "getDateTimeFromText", "monthMap", "roundDownToNearestMinute", "roundToStartOfDay", "weekdays"}]
      151 LOADK                            R19 K60 ["L"]
      152 SETTABLEKS                       R19 R18 K45 ["DATE_COMPOSITE_TOKEN"]
      154 LOADK                            R19 K61 ["LT"]
      155 SETTABLEKS                       R19 R18 K46 ["TIME_COMPOSITE_TOKEN"]
      157 SETTABLEKS                       R17 R18 K47 ["formatLocalTime"]
      159 SETTABLEKS                       R7 R18 K48 ["getDaysInMonth"]
      161 SETTABLEKS                       R8 R18 K49 ["getFirstDayOfWeek"]
      163 SETTABLEKS                       R9 R18 K50 ["getLastDayOfWeek"]
      165 SETTABLEKS                       R16 R18 K51 ["getNextMonthInfo"]
      167 SETTABLEKS                       R15 R18 K52 ["getPrevMonthInfo"]
      169 SETTABLEKS                       R12 R18 K53 ["isDateWithinRange"]
      171 SETTABLEKS                       R14 R18 K54 ["getDateTimeFromText"]
      173 SETTABLEKS                       R5 R18 K55 ["monthMap"]
      175 SETTABLEKS                       R11 R18 K56 ["roundDownToNearestMinute"]
      177 SETTABLEKS                       R10 R18 K57 ["roundToStartOfDay"]
      179 SETTABLEKS                       R6 R18 K58 ["weekdays"]
      181 RETURN                           R18 1
