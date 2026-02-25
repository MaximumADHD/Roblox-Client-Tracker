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
       29 JUMPIFNOT                        R1 ; [+15]
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
       42 JUMPIFNOT                        R7 ; [+2]
       43 JUMPIFNOT                        R8 ; [+1]
       44 RETURN                           R8 1
       45 LOADNIL                          R6
       46 RETURN                           R6 1

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
        7 GETIMPORT                        R3 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Utility"]
       11 GETTABLEKS                       R4 R5 K7 ["Wrappers"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R2 R3 K8 ["Services"]
       16 GETTABLEKS                       R1 R2 K9 ["LocalizationService"]
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Utility"]
       22 GETTABLEKS                       R4 R5 K10 ["Localization"]
       24 GETTABLEKS                       R3 R4 K11 ["Translator"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 0 12
       29 LOADK                            R6 K12 ["CommonUI.Controls.Label.January"]
       30 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       32 CALL                             R4 2 1
       33 SETTABLEN                        R4 R3 1
       34 LOADK                            R6 K14 ["CommonUI.Controls.Label.February"]
       35 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       37 CALL                             R4 2 1
       38 SETTABLEN                        R4 R3 2
       39 LOADK                            R6 K15 ["CommonUI.Controls.Label.March"]
       40 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       42 CALL                             R4 2 1
       43 SETTABLEN                        R4 R3 3
       44 LOADK                            R6 K16 ["CommonUI.Controls.Label.April"]
       45 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       47 CALL                             R4 2 1
       48 SETTABLEN                        R4 R3 4
       49 LOADK                            R6 K17 ["CommonUI.Controls.Label.May"]
       50 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       52 CALL                             R4 2 1
       53 SETTABLEN                        R4 R3 5
       54 LOADK                            R6 K18 ["CommonUI.Controls.Label.June"]
       55 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       57 CALL                             R4 2 1
       58 SETTABLEN                        R4 R3 6
       59 LOADK                            R6 K19 ["CommonUI.Controls.Label.July"]
       60 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       62 CALL                             R4 2 1
       63 SETTABLEN                        R4 R3 7
       64 LOADK                            R6 K20 ["CommonUI.Controls.Label.August"]
       65 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       67 CALL                             R4 2 1
       68 SETTABLEN                        R4 R3 8
       69 LOADK                            R6 K21 ["CommonUI.Controls.Label.September"]
       70 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       72 CALL                             R4 2 1
       73 SETTABLEN                        R4 R3 9
       74 LOADK                            R6 K22 ["CommonUI.Controls.Label.October"]
       75 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       77 CALL                             R4 2 1
       78 SETTABLEN                        R4 R3 10
       79 LOADK                            R6 K23 ["CommonUI.Controls.Label.November"]
       80 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       82 CALL                             R4 2 1
       83 SETTABLEN                        R4 R3 11
       84 LOADK                            R6 K24 ["CommonUI.Controls.Label.December"]
       85 NAMECALL                         R4 R2 K13 ["FormatByKey"]
       87 CALL                             R4 2 1
       88 SETTABLEN                        R4 R3 12
       89 NEWTABLE                         R4 0 7
       91 LOADK                            R7 K25 ["CommonUI.Controls.Label.SundayAbbreviated"]
       92 NAMECALL                         R5 R2 K13 ["FormatByKey"]
       94 CALL                             R5 2 1
       95 SETTABLEN                        R5 R4 1
       96 LOADK                            R7 K26 ["CommonUI.Controls.Label.MondayAbbreviated"]
       97 NAMECALL                         R5 R2 K13 ["FormatByKey"]
       99 CALL                             R5 2 1
      100 SETTABLEN                        R5 R4 2
      101 LOADK                            R7 K27 ["CommonUI.Controls.Label.TuesdayAbbreviated"]
      102 NAMECALL                         R5 R2 K13 ["FormatByKey"]
      104 CALL                             R5 2 1
      105 SETTABLEN                        R5 R4 3
      106 LOADK                            R7 K28 ["CommonUI.Controls.Label.WednesdayAbbreviation"]
      107 NAMECALL                         R5 R2 K13 ["FormatByKey"]
      109 CALL                             R5 2 1
      110 SETTABLEN                        R5 R4 4
      111 LOADK                            R7 K29 ["CommonUI.Controls.Label.ThursdayAbbreviated"]
      112 NAMECALL                         R5 R2 K13 ["FormatByKey"]
      114 CALL                             R5 2 1
      115 SETTABLEN                        R5 R4 5
      116 LOADK                            R7 K30 ["CommonUI.Controls.Label.FridayAbbreviated"]
      117 NAMECALL                         R5 R2 K13 ["FormatByKey"]
      119 CALL                             R5 2 1
      120 SETTABLEN                        R5 R4 6
      121 LOADK                            R7 K31 ["CommonUI.Controls.Label.SaturdayAbbreviated"]
      122 NAMECALL                         R5 R2 K13 ["FormatByKey"]
      124 CALL                             R5 2 1
      125 SETTABLEN                        R5 R4 7
      126 DUPCLOSURE                       R5 K32 [PROTO_0]
      127 DUPCLOSURE                       R6 K33 [PROTO_1]
      128 DUPCLOSURE                       R7 K34 [PROTO_2]
      129 CAPTURE                          VAL R5
      130 DUPCLOSURE                       R8 K35 [PROTO_3]
      131 DUPCLOSURE                       R9 K36 [PROTO_4]
      132 DUPCLOSURE                       R10 K37 [PROTO_5]
      133 DUPCLOSURE                       R11 K38 [PROTO_6]
      134 DUPCLOSURE                       R12 K39 [PROTO_8]
      135 CAPTURE                          VAL R11
      136 DUPCLOSURE                       R13 K40 [PROTO_9]
      137 DUPCLOSURE                       R14 K41 [PROTO_10]
      138 DUPCLOSURE                       R15 K42 [PROTO_11]
      139 CAPTURE                          VAL R1
      140 DUPTABLE                         R16 K57 [{"DATE_COMPOSITE_TOKEN", "TIME_COMPOSITE_TOKEN", "formatLocalTime", "getDaysInMonth", "getFirstDayOfWeek", "getLastDayOfWeek", "getNextMonthInfo", "getPrevMonthInfo", "isDateWithinRange", "getDateTimeFromText", "monthMap", "roundDownToNearestMinute", "roundToStartOfDay", "weekdays"}]
      141 LOADK                            R17 K58 ["L"]
      142 SETTABLEKS                       R17 R16 K43 ["DATE_COMPOSITE_TOKEN"]
      144 LOADK                            R17 K59 ["LT"]
      145 SETTABLEKS                       R17 R16 K44 ["TIME_COMPOSITE_TOKEN"]
      147 SETTABLEKS                       R15 R16 K45 ["formatLocalTime"]
      149 SETTABLEKS                       R5 R16 K46 ["getDaysInMonth"]
      151 SETTABLEKS                       R6 R16 K47 ["getFirstDayOfWeek"]
      153 SETTABLEKS                       R7 R16 K48 ["getLastDayOfWeek"]
      155 SETTABLEKS                       R14 R16 K49 ["getNextMonthInfo"]
      157 SETTABLEKS                       R13 R16 K50 ["getPrevMonthInfo"]
      159 SETTABLEKS                       R10 R16 K51 ["isDateWithinRange"]
      161 SETTABLEKS                       R12 R16 K52 ["getDateTimeFromText"]
      163 SETTABLEKS                       R3 R16 K53 ["monthMap"]
      165 SETTABLEKS                       R9 R16 K54 ["roundDownToNearestMinute"]
      167 SETTABLEKS                       R8 R16 K55 ["roundToStartOfDay"]
      169 SETTABLEKS                       R4 R16 K56 ["weekdays"]
      171 RETURN                           R16 1
