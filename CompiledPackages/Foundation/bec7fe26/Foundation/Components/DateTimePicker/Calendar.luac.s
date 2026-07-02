PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showEndDateTimeCalendarInput"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["endDateTimeInput"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["current"]
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K2 ["current"]
       15 GETTABLEKS                       R0 R0 K3 ["focus"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDateTimeFromText"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R2 2
        7 GETTABLEN                        R1 R2 1
        8 JUMPIF                           R1 ; [+17]
        9 JUMPIFNOT                        R0 ; [+44]
       10 GETUPVAL                         R2 2
       11 GETTABLEN                        R1 R2 2
       12 JUMPIFNOT                        R1 ; [+41]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 2
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R2 R1 ; [+29]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       30 JUMPIFNOT                        R3 ; [+9]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K3 ["formatLocalTime"]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R4 R4 K4 ["defaultDates"]
       37 GETTABLEN                        R3 R4 1
       38 CALL                             R2 1 1
       39 JUMP                             ; [+13]
       40 GETUPVAL                         R3 5
       41 GETTABLEKS                       R3 R3 K4 ["defaultDates"]
       43 GETTABLEN                        R2 R3 1
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K5 ["DATE_COMPOSITE_TOKEN"]
       47 GETUPVAL                         R5 6
       48 GETTABLEKS                       R5 R5 K6 ["RobloxLocaleId"]
       50 NAMECALL                         R2 R2 K7 ["FormatLocalTime"]
       52 CALL                             R2 3 1
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDateTimeFromText"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R2 2
        7 GETTABLEN                        R1 R2 2
        8 JUMPIF                           R1 ; [+17]
        9 JUMPIFNOT                        R0 ; [+42]
       10 GETUPVAL                         R2 2
       11 GETTABLEN                        R1 R2 1
       12 JUMPIFNOT                        R1 ; [+39]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 1
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R1 R2 ; [+27]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       30 JUMPIFNOT                        R3 ; [+9]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K3 ["formatLocalTime"]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R4 R4 K4 ["defaultDates"]
       37 GETTABLEN                        R3 R4 2
       38 CALL                             R2 1 1
       39 JUMP                             ; [+11]
       40 GETUPVAL                         R3 2
       41 GETTABLEN                        R2 R3 2
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K5 ["DATE_COMPOSITE_TOKEN"]
       45 GETUPVAL                         R5 6
       46 GETTABLEKS                       R5 R5 K6 ["RobloxLocaleId"]
       48 NAMECALL                         R2 R2 K7 ["FormatLocalTime"]
       50 CALL                             R2 3 1
       51 CALL                             R1 1 0
       52 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getNextMonthInfo"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["month"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["year"]
        9 CALL                             R0 2 2
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K3 [{"month", "year"}]
       12 SETTABLEKS                       R0 R3 K1 ["month"]
       14 SETTABLEKS                       R1 R3 K2 ["year"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPrevMonthInfo"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["month"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["year"]
        9 CALL                             R0 2 2
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K3 [{"month", "year"}]
       12 SETTABLEKS                       R0 R3 K1 ["month"]
       14 SETTABLEKS                       R1 R3 K2 ["year"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R3 K2 [DateTime.fromLocalTime]
        2 MOVE                             R4 R2
        3 MOVE                             R5 R1
        4 MOVE                             R6 R0
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R8 R8 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
        8 JUMPIFNOT                        R8 ; [+8]
        9 GETUPVAL                         R8 1
       10 GETTABLEN                        R7 R8 1
       11 NAMECALL                         R7 R7 K4 ["ToLocalTime"]
       13 CALL                             R7 1 1
       14 GETTABLEKS                       R7 R7 K5 ["Hour"]
       16 JUMP                             ; [+1]
       17 LOADN                            R7 0
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R9 R9 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
       21 JUMPIFNOT                        R9 ; [+8]
       22 GETUPVAL                         R9 1
       23 GETTABLEN                        R8 R9 1
       24 NAMECALL                         R8 R8 K4 ["ToLocalTime"]
       26 CALL                             R8 1 1
       27 GETTABLEKS                       R8 R8 K6 ["Minute"]
       29 JUMP                             ; [+1]
       30 LOADN                            R8 0
       31 CALL                             R3 5 1
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K7 ["showStartDateTimeCalendarInput"]
       35 JUMPIFNOT                        R4 ; [+119]
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K8 ["showEndDateTimeCalendarInput"]
       39 JUMPIFNOT                        R4 ; [+86]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R4 R4 K9 ["startDateTimeInput"]
       43 JUMPIFNOT                        R4 ; [+25]
       44 GETUPVAL                         R4 4
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
       48 JUMPIFNOT                        R6 ; [+6]
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R5 R5 K10 ["formatLocalTime"]
       52 MOVE                             R6 R3
       53 CALL                             R5 1 1
       54 JUMP                             ; [+9]
       55 GETUPVAL                         R7 5
       56 GETTABLEKS                       R7 R7 K11 ["DATE_COMPOSITE_TOKEN"]
       58 GETUPVAL                         R8 6
       59 GETTABLEKS                       R8 R8 K12 ["RobloxLocaleId"]
       61 NAMECALL                         R5 R3 K13 ["FormatLocalTime"]
       63 CALL                             R5 3 1
       64 CALL                             R4 1 0
       65 GETUPVAL                         R4 7
       66 DUPTABLE                         R5 K17 [{["startDateTimeInput"] = False, ["endDateTimeInput"] = True}]
       67 CALL                             R4 1 0
       68 JUMP                             ; [+78]
       69 GETUPVAL                         R4 3
       70 GETTABLEKS                       R4 R4 K15 ["endDateTimeInput"]
       72 JUMPIFNOT                        R4 ; [+25]
       73 GETUPVAL                         R4 8
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
       77 JUMPIFNOT                        R6 ; [+6]
       78 GETUPVAL                         R5 5
       79 GETTABLEKS                       R5 R5 K10 ["formatLocalTime"]
       81 MOVE                             R6 R3
       82 CALL                             R5 1 1
       83 JUMP                             ; [+9]
       84 GETUPVAL                         R7 5
       85 GETTABLEKS                       R7 R7 K11 ["DATE_COMPOSITE_TOKEN"]
       87 GETUPVAL                         R8 6
       88 GETTABLEKS                       R8 R8 K12 ["RobloxLocaleId"]
       90 NAMECALL                         R5 R3 K13 ["FormatLocalTime"]
       92 CALL                             R5 3 1
       93 CALL                             R4 1 0
       94 GETUPVAL                         R4 7
       95 DUPTABLE                         R5 K18 [{["startDateTimeInput"] = False, ["endDateTimeInput"] = False}]
       96 CALL                             R4 1 0
       97 JUMP                             ; [+49]
       98 GETUPVAL                         R4 4
       99 GETUPVAL                         R6 0
      100 GETTABLEKS                       R6 R6 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
      102 JUMPIFNOT                        R6 ; [+6]
      103 GETUPVAL                         R5 5
      104 GETTABLEKS                       R5 R5 K10 ["formatLocalTime"]
      106 MOVE                             R6 R3
      107 CALL                             R5 1 1
      108 JUMP                             ; [+9]
      109 GETUPVAL                         R7 5
      110 GETTABLEKS                       R7 R7 K11 ["DATE_COMPOSITE_TOKEN"]
      112 GETUPVAL                         R8 6
      113 GETTABLEKS                       R8 R8 K12 ["RobloxLocaleId"]
      115 NAMECALL                         R5 R3 K13 ["FormatLocalTime"]
      117 CALL                             R5 3 1
      118 CALL                             R4 1 0
      119 GETUPVAL                         R4 8
      120 LOADK                            R5 K19 [""]
      121 CALL                             R4 1 0
      122 GETUPVAL                         R4 7
      123 DUPTABLE                         R5 K17 [{["startDateTimeInput"] = False, ["endDateTimeInput"] = True}]
      124 CALL                             R4 1 0
      125 JUMP                             ; [+21]
      126 GETUPVAL                         R4 4
      127 GETUPVAL                         R6 0
      128 GETTABLEKS                       R6 R6 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
      130 JUMPIFNOT                        R6 ; [+6]
      131 GETUPVAL                         R5 5
      132 GETTABLEKS                       R5 R5 K10 ["formatLocalTime"]
      134 MOVE                             R6 R3
      135 CALL                             R5 1 1
      136 JUMP                             ; [+9]
      137 GETUPVAL                         R7 5
      138 GETTABLEKS                       R7 R7 K11 ["DATE_COMPOSITE_TOKEN"]
      140 GETUPVAL                         R8 6
      141 GETTABLEKS                       R8 R8 K12 ["RobloxLocaleId"]
      143 NAMECALL                         R5 R3 K13 ["FormatLocalTime"]
      145 CALL                             R5 3 1
      146 CALL                             R4 1 0
      147 GETUPVAL                         R4 9
      148 DUPTABLE                         R5 K22 [{"month", "year"}]
      149 SETTABLEKS                       R1 R5 K20 ["month"]
      151 SETTABLEKS                       R2 R5 K21 ["year"]
      153 CALL                             R4 1 0
      154 RETURN                           R0 0
      155 GETUPVAL                         R4 9
      156 DUPTABLE                         R5 K22 [{"month", "year"}]
      157 SETTABLEKS                       R1 R5 K20 ["month"]
      159 SETTABLEKS                       R2 R5 K21 ["year"]
      161 CALL                             R4 1 0
      162 GETUPVAL                         R4 10
      163 NEWTABLE                         R5 0 1
      165 MOVE                             R6 R3
      166 SETLIST                          R5 R6 1 [1]
      168 CALL                             R4 1 0
      169 GETUPVAL                         R4 2
      170 GETTABLEKS                       R4 R4 K23 ["onSelectedDateChanged"]
      172 NEWTABLE                         R5 0 1
      174 MOVE                             R6 R3
      175 SETLIST                          R5 R6 1 [1]
      177 CALL                             R4 1 0
      178 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["ToLocalTime"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["Day"]
        9 GETTABLEKS                       R8 R1 K1 ["Day"]
       11 JUMPIFNOTEQ                      R7 R8 ; [+15]
       13 GETTABLEKS                       R7 R6 K2 ["Month"]
       15 GETTABLEKS                       R8 R1 K2 ["Month"]
       17 JUMPIFNOTEQ                      R7 R8 ; [+9]
       19 GETTABLEKS                       R7 R6 K3 ["Year"]
       21 GETTABLEKS                       R8 R1 K3 ["Year"]
       23 JUMPIFNOTEQ                      R7 R8 ; [+3]
       25 LOADB                            R7 1
       26 RETURN                           R7 1
       27 FORGLOOP                         R2 2 ; [-21]
       29 LOADB                            R2 0
       30 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["showEndDateTimeCalendarInput"]
        3 JUMPIFNOT                        R1 ; [+20]
        4 GETUPVAL                         R2 1
        5 GETTABLEN                        R1 R2 1
        6 JUMPIFNOT                        R1 ; [+17]
        7 GETUPVAL                         R2 1
        8 GETTABLEN                        R1 R2 2
        9 JUMPIFNOT                        R1 ; [+14]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["isDateWithinRange"]
       13 MOVE                             R2 R0
       14 DUPTABLE                         R3 K4 [{"startDate", "endDate"}]
       15 GETUPVAL                         R5 1
       16 GETTABLEN                        R4 R5 1
       17 SETTABLEKS                       R4 R3 K2 ["startDate"]
       19 GETUPVAL                         R5 1
       20 GETTABLEN                        R4 R5 2
       21 SETTABLEKS                       R4 R3 K3 ["endDate"]
       23 CALL                             R1 2 1
       24 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectableDateRange"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["isDateWithinRange"]
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["selectableDateRange"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADB                            R1 0
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K2 ["showEndDateTimeCalendarInput"]
       18 JUMPIFNOT                        R1 ; [+41]
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K3 ["endDateTimeInput"]
       22 JUMPIFNOT                        R1 ; [+15]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K4 ["roundToStartOfDay"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 1
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K4 ["roundToStartOfDay"]
       31 GETUPVAL                         R4 3
       32 GETTABLEN                        R3 R4 1
       33 CALL                             R2 1 1
       34 JUMPIFNOTLT                      R1 R2 ; [+3]
       36 LOADB                            R1 0
       37 RETURN                           R1 1
       38 GETUPVAL                         R1 2
       39 GETTABLEKS                       R1 R1 K5 ["startDateTimeInput"]
       41 JUMPIFNOT                        R1 ; [+18]
       42 GETUPVAL                         R2 3
       43 GETTABLEN                        R1 R2 2
       44 JUMPIFNOT                        R1 ; [+15]
       45 GETUPVAL                         R1 1
       46 GETTABLEKS                       R1 R1 K4 ["roundToStartOfDay"]
       48 MOVE                             R2 R0
       49 CALL                             R1 1 1
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K4 ["roundToStartOfDay"]
       53 GETUPVAL                         R4 3
       54 GETTABLEN                        R3 R4 2
       55 CALL                             R2 1 1
       56 JUMPIFNOTLT                      R2 R1 ; [+3]
       58 LOADB                            R1 0
       59 RETURN                           R1 1
       60 LOADB                            R1 1
       61 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["getDateTimeFromText"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+59]
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K2 ["showEndDateTimeCalendarInput"]
       18 JUMPIFNOT                        R3 ; [+26]
       19 GETUPVAL                         R4 4
       20 GETTABLEN                        R3 R4 2
       21 JUMPIFNOT                        R3 ; [+14]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K3 ["roundToStartOfDay"]
       25 MOVE                             R4 R1
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K3 ["roundToStartOfDay"]
       30 GETUPVAL                         R6 4
       31 GETTABLEN                        R5 R6 2
       32 CALL                             R4 1 1
       33 JUMPIFNOTLT                      R4 R3 ; [+2]
       35 RETURN                           R0 0
       36 NEWTABLE                         R3 0 2
       38 MOVE                             R4 R1
       39 GETUPVAL                         R6 4
       40 GETTABLEN                        R5 R6 2
       41 SETLIST                          R3 R4 2 [1]
       43 MOVE                             R2 R3
       44 JUMP                             ; [+6]
       45 NEWTABLE                         R3 0 1
       47 MOVE                             R4 R1
       48 SETLIST                          R3 R4 1 [1]
       50 MOVE                             R2 R3
       51 NAMECALL                         R3 R1 K4 ["ToLocalTime"]
       53 CALL                             R3 1 1
       54 GETUPVAL                         R4 5
       55 DUPTABLE                         R5 K7 [{"month", "year"}]
       56 GETTABLEKS                       R6 R3 K8 ["Month"]
       58 SETTABLEKS                       R6 R5 K5 ["month"]
       60 GETTABLEKS                       R6 R3 K9 ["Year"]
       62 SETTABLEKS                       R6 R5 K6 ["year"]
       64 CALL                             R4 1 0
       65 GETUPVAL                         R4 6
       66 MOVE                             R5 R2
       67 CALL                             R4 1 0
       68 GETUPVAL                         R4 3
       69 GETTABLEKS                       R4 R4 K10 ["onSelectedDateChanged"]
       71 MOVE                             R5 R2
       72 CALL                             R4 1 0
       73 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onSelectedDateChanged"]
        3 NEWTABLE                         R2 0 1
        5 GETTABLEN                        R3 R0 1
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 0
        9 NEWTABLE                         R1 0 1
       11 GETTABLEN                        R2 R0 1
       12 SETLIST                          R1 R2 1 [1]
       14 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["getDateTimeFromText"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+47]
       14 GETUPVAL                         R3 3
       15 GETTABLEN                        R2 R3 1
       16 JUMPIFNOT                        R2 ; [+14]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K2 ["roundToStartOfDay"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K2 ["roundToStartOfDay"]
       25 GETUPVAL                         R5 3
       26 GETTABLEN                        R4 R5 1
       27 CALL                             R3 1 1
       28 JUMPIFNOTLT                      R2 R3 ; [+2]
       30 RETURN                           R0 0
       31 NEWTABLE                         R2 0 2
       33 GETUPVAL                         R4 3
       34 GETTABLEN                        R3 R4 1
       35 MOVE                             R4 R1
       36 SETLIST                          R2 R3 2 [1]
       38 NAMECALL                         R3 R1 K3 ["ToLocalTime"]
       40 CALL                             R3 1 1
       41 GETUPVAL                         R4 4
       42 DUPTABLE                         R5 K6 [{"month", "year"}]
       43 GETTABLEKS                       R6 R3 K7 ["Month"]
       45 SETTABLEKS                       R6 R5 K4 ["month"]
       47 GETTABLEKS                       R6 R3 K8 ["Year"]
       49 SETTABLEKS                       R6 R5 K5 ["year"]
       51 CALL                             R4 1 0
       52 GETUPVAL                         R4 5
       53 MOVE                             R5 R2
       54 CALL                             R4 1 0
       55 GETUPVAL                         R4 6
       56 GETTABLEKS                       R4 R4 K9 ["onSelectedDateChanged"]
       58 MOVE                             R5 R2
       59 CALL                             R4 1 0
       60 RETURN                           R0 0
       61 JUMPIFNOTEQKS                    R0 K10 [""] ; [+6]
       63 GETUPVAL                         R2 5
       64 NEWCLOSURE                       R3 P0
       65 CAPTURE                          UPVAL U6
       66 CALL                             R2 1 0
       67 RETURN                           R0 0
       68 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["month"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["year"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["createElement"]
        6 LOADK                            R4 K1 ["UIGridLayout"]
        7 DUPTABLE                         R5 K12 [{["CellPadding"], ["CellSize"], ["FillDirection"], ["FillDirectionMaxCells"] = 7, ["HorizontalAlignment"], ["key"] = "layout", ["SortOrder"], ["VerticalAlignment"]}]
        8 GETIMPORT                        R6 K15 [UDim2.fromOffset]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K16 ["Padding"]
       13 GETTABLEKS                       R7 R7 K17 ["None"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K16 ["Padding"]
       18 GETTABLEKS                       R8 R8 K17 ["None"]
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K2 ["CellPadding"]
       23 GETIMPORT                        R6 K15 [UDim2.fromOffset]
       25 GETUPVAL                         R8 2
       26 DIVK                             R7 R8 K6 [7]
       27 GETUPVAL                         R9 2
       28 DIVK                             R8 R9 K6 [7]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K3 ["CellSize"]
       32 GETIMPORT                        R6 K20 [Enum.FillDirection.Horizontal]
       34 SETTABLEKS                       R6 R5 K4 ["FillDirection"]
       36 GETIMPORT                        R6 K22 [Enum.HorizontalAlignment.Center]
       38 SETTABLEKS                       R6 R5 K7 ["HorizontalAlignment"]
       40 GETIMPORT                        R6 K24 [Enum.SortOrder.LayoutOrder]
       42 SETTABLEKS                       R6 R5 K10 ["SortOrder"]
       44 GETIMPORT                        R6 K25 [Enum.VerticalAlignment.Center]
       46 SETTABLEKS                       R6 R5 K11 ["VerticalAlignment"]
       48 CALL                             R3 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R1 K28 [table.insert]
       52 CALL                             R1 -1 0
       53 LOADN                            R1 1
       54 GETUPVAL                         R2 3
       55 GETTABLEKS                       R2 R2 K29 ["weekdays"]
       57 LOADNIL                          R3
       58 LOADNIL                          R4
       59 FORGPREP                         R2
       60 MOVE                             R8 R0
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K0 ["createElement"]
       64 GETUPVAL                         R10 4
       65 DUPTABLE                         R11 K33 [{["key"], ["LayoutOrder"], ["Text"], ["tag"] = "text-align-x-center text-align-y-center text-body-small"}]
       66 SETTABLEKS                       R6 R11 K8 ["key"]
       68 SETTABLEKS                       R1 R11 K23 ["LayoutOrder"]
       70 SETTABLEKS                       R6 R11 K30 ["Text"]
       72 CALL                             R9 2 -1
       73 FASTCALL                         TABLE_INSERT ; [+2]
       74 GETIMPORT                        R7 K28 [table.insert]
       76 CALL                             R7 -1 0
       77 ADDK                             R1 R1 K34 [1]
       78 FORGLOOP                         R2 2 ; [-19]
       80 GETUPVAL                         R2 3
       81 GETTABLEKS                       R2 R2 K35 ["getFirstDayOfWeek"]
       83 GETUPVAL                         R3 5
       84 GETTABLEKS                       R3 R3 K36 ["month"]
       86 GETUPVAL                         R4 5
       87 GETTABLEKS                       R4 R4 K37 ["year"]
       89 CALL                             R2 2 1
       90 GETUPVAL                         R3 3
       91 GETTABLEKS                       R3 R3 K38 ["getPrevMonthInfo"]
       93 GETUPVAL                         R4 5
       94 GETTABLEKS                       R4 R4 K36 ["month"]
       96 GETUPVAL                         R5 5
       97 GETTABLEKS                       R5 R5 K37 ["year"]
       99 CALL                             R3 2 2
      100 GETUPVAL                         R5 3
      101 GETTABLEKS                       R5 R5 K39 ["getDaysInMonth"]
      103 GETUPVAL                         R6 3
      104 GETTABLEKS                       R6 R6 K38 ["getPrevMonthInfo"]
      106 GETUPVAL                         R7 5
      107 GETTABLEKS                       R7 R7 K36 ["month"]
      109 GETUPVAL                         R8 5
      110 GETTABLEKS                       R8 R8 K37 ["year"]
      112 CALL                             R6 2 -1
      113 CALL                             R5 -1 1
      114 LOADN                            R8 1
      115 MOVE                             R6 R2
      116 LOADN                            R7 1
      117 FORNPREP                         R6
      118 SUB                              R10 R5 R2
      119 ADD                              R9 R10 R8
      120 GETIMPORT                        R10 K42 [DateTime.fromLocalTime]
      122 MOVE                             R11 R4
      123 MOVE                             R12 R3
      124 MOVE                             R13 R9
      125 CALL                             R10 3 1
      126 MOVE                             R12 R0
      127 GETUPVAL                         R13 0
      128 GETTABLEKS                       R13 R13 K0 ["createElement"]
      130 GETUPVAL                         R14 6
      131 DUPTABLE                         R15 K48 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      132 GETUPVAL                         R16 7
      133 MOVE                             R17 R10
      134 CALL                             R16 1 1
      135 SETTABLEKS                       R16 R15 K43 ["highlight"]
      137 GETUPVAL                         R16 8
      138 MOVE                             R17 R10
      139 CALL                             R16 1 1
      140 SETTABLEKS                       R16 R15 K44 ["isSelectable"]
      142 GETUPVAL                         R16 9
      143 MOVE                             R17 R10
      144 CALL                             R16 1 1
      145 SETTABLEKS                       R16 R15 K45 ["isSelected"]
      147 LOADK                            R17 K49 ["prev-month-day-"]
      148 MOVE                             R18 R9
      149 CONCAT                           R16 R17 R18
      150 SETTABLEKS                       R16 R15 K8 ["key"]
      152 SETTABLEKS                       R1 R15 K23 ["LayoutOrder"]
      154 NEWCLOSURE                       R16 P0
      155 CAPTURE                          UPVAL U10
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R4
      159 SETTABLEKS                       R16 R15 K46 ["onActivated"]
      161 FASTCALL1                        TOSTRING R9 ; [+3]
      162 MOVE                             R17 R9
      163 GETIMPORT                        R16 K51 [tostring]
      165 CALL                             R16 1 1
      166 SETTABLEKS                       R16 R15 K30 ["Text"]
      168 LOADK                            R17 K52 ["%*--prev-month-calendar-day-%*"]
      169 GETUPVAL                         R19 11
      170 GETTABLEKS                       R19 R19 K47 ["testId"]
      172 MOVE                             R20 R9
      173 NAMECALL                         R17 R17 K53 ["format"]
      175 CALL                             R17 3 1
      176 MOVE                             R16 R17
      177 SETTABLEKS                       R16 R15 K47 ["testId"]
      179 CALL                             R13 2 -1
      180 FASTCALL                         TABLE_INSERT ; [+2]
      181 GETIMPORT                        R11 K28 [table.insert]
      183 CALL                             R11 -1 0
      184 ADDK                             R1 R1 K34 [1]
      185 FORNLOOP                         R6
      186 LOADN                            R8 1
      187 GETUPVAL                         R9 3
      188 GETTABLEKS                       R9 R9 K39 ["getDaysInMonth"]
      190 GETUPVAL                         R10 5
      191 GETTABLEKS                       R10 R10 K36 ["month"]
      193 GETUPVAL                         R11 5
      194 GETTABLEKS                       R11 R11 K37 ["year"]
      196 CALL                             R9 2 1
      197 MOVE                             R6 R9
      198 LOADN                            R7 1
      199 FORNPREP                         R6
      200 GETUPVAL                         R9 8
      201 GETIMPORT                        R10 K42 [DateTime.fromLocalTime]
      203 GETUPVAL                         R11 5
      204 GETTABLEKS                       R11 R11 K37 ["year"]
      206 GETUPVAL                         R12 5
      207 GETTABLEKS                       R12 R12 K36 ["month"]
      209 MOVE                             R13 R8
      210 CALL                             R10 3 -1
      211 CALL                             R9 -1 1
      212 GETUPVAL                         R10 9
      213 GETIMPORT                        R11 K42 [DateTime.fromLocalTime]
      215 GETUPVAL                         R12 5
      216 GETTABLEKS                       R12 R12 K37 ["year"]
      218 GETUPVAL                         R13 5
      219 GETTABLEKS                       R13 R13 K36 ["month"]
      221 MOVE                             R14 R8
      222 CALL                             R11 3 -1
      223 CALL                             R10 -1 1
      224 MOVE                             R12 R0
      225 GETUPVAL                         R13 0
      226 GETTABLEKS                       R13 R13 K0 ["createElement"]
      228 GETUPVAL                         R14 6
      229 DUPTABLE                         R15 K55 [{"emphasizeText", "highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      230 MOVE                             R16 R9
      231 JUMPIFNOT                        R16 ; [+1]
      232 NOT                              R16 R10
      233 SETTABLEKS                       R16 R15 K54 ["emphasizeText"]
      235 GETUPVAL                         R16 7
      236 GETIMPORT                        R17 K42 [DateTime.fromLocalTime]
      238 GETUPVAL                         R18 5
      239 GETTABLEKS                       R18 R18 K37 ["year"]
      241 GETUPVAL                         R19 5
      242 GETTABLEKS                       R19 R19 K36 ["month"]
      244 MOVE                             R20 R8
      245 CALL                             R17 3 -1
      246 CALL                             R16 -1 1
      247 SETTABLEKS                       R16 R15 K43 ["highlight"]
      249 SETTABLEKS                       R9 R15 K44 ["isSelectable"]
      251 SETTABLEKS                       R10 R15 K45 ["isSelected"]
      253 LOADK                            R17 K56 ["current-month-day-"]
      254 MOVE                             R18 R8
      255 CONCAT                           R16 R17 R18
      256 SETTABLEKS                       R16 R15 K8 ["key"]
      258 SETTABLEKS                       R1 R15 K23 ["LayoutOrder"]
      260 NEWCLOSURE                       R16 P1
      261 CAPTURE                          UPVAL U10
      262 CAPTURE                          VAL R8
      263 CAPTURE                          UPVAL U5
      264 SETTABLEKS                       R16 R15 K46 ["onActivated"]
      266 FASTCALL1                        TOSTRING R8 ; [+3]
      267 MOVE                             R17 R8
      268 GETIMPORT                        R16 K51 [tostring]
      270 CALL                             R16 1 1
      271 SETTABLEKS                       R16 R15 K30 ["Text"]
      273 LOADK                            R17 K57 ["%*--current-month-calendar-day-%*"]
      274 GETUPVAL                         R19 11
      275 GETTABLEKS                       R19 R19 K47 ["testId"]
      277 MOVE                             R20 R8
      278 NAMECALL                         R17 R17 K53 ["format"]
      280 CALL                             R17 3 1
      281 MOVE                             R16 R17
      282 SETTABLEKS                       R16 R15 K47 ["testId"]
      284 CALL                             R13 2 -1
      285 FASTCALL                         TABLE_INSERT ; [+2]
      286 GETIMPORT                        R11 K28 [table.insert]
      288 CALL                             R11 -1 0
      289 ADDK                             R1 R1 K34 [1]
      290 FORNLOOP                         R6
      291 GETUPVAL                         R6 3
      292 GETTABLEKS                       R6 R6 K58 ["getLastDayOfWeek"]
      294 GETUPVAL                         R7 5
      295 GETTABLEKS                       R7 R7 K36 ["month"]
      297 GETUPVAL                         R8 5
      298 GETTABLEKS                       R8 R8 K37 ["year"]
      300 CALL                             R6 2 1
      301 GETUPVAL                         R7 3
      302 GETTABLEKS                       R7 R7 K59 ["getNextMonthInfo"]
      304 GETUPVAL                         R8 5
      305 GETTABLEKS                       R8 R8 K36 ["month"]
      307 GETUPVAL                         R9 5
      308 GETTABLEKS                       R9 R9 K37 ["year"]
      310 CALL                             R7 2 2
      311 ADDK                             R10 R6 K34 [1]
      312 SUBRK                            R9 K6 [7] R10
      313 LOADN                            R12 1
      314 MOVE                             R10 R9
      315 LOADN                            R11 1
      316 FORNPREP                         R10
      317 GETIMPORT                        R13 K42 [DateTime.fromLocalTime]
      319 MOVE                             R14 R8
      320 MOVE                             R15 R7
      321 MOVE                             R16 R12
      322 CALL                             R13 3 1
      323 MOVE                             R15 R0
      324 GETUPVAL                         R16 0
      325 GETTABLEKS                       R16 R16 K0 ["createElement"]
      327 GETUPVAL                         R17 6
      328 DUPTABLE                         R18 K48 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      329 GETUPVAL                         R19 7
      330 MOVE                             R20 R13
      331 CALL                             R19 1 1
      332 SETTABLEKS                       R19 R18 K43 ["highlight"]
      334 GETUPVAL                         R19 8
      335 MOVE                             R20 R13
      336 CALL                             R19 1 1
      337 SETTABLEKS                       R19 R18 K44 ["isSelectable"]
      339 GETUPVAL                         R19 9
      340 MOVE                             R20 R13
      341 CALL                             R19 1 1
      342 SETTABLEKS                       R19 R18 K45 ["isSelected"]
      344 LOADK                            R20 K60 ["next-month-day-"]
      345 MOVE                             R21 R12
      346 CONCAT                           R19 R20 R21
      347 SETTABLEKS                       R19 R18 K8 ["key"]
      349 SETTABLEKS                       R1 R18 K23 ["LayoutOrder"]
      351 NEWCLOSURE                       R19 P2
      352 CAPTURE                          UPVAL U10
      353 CAPTURE                          VAL R12
      354 CAPTURE                          VAL R7
      355 CAPTURE                          VAL R8
      356 SETTABLEKS                       R19 R18 K46 ["onActivated"]
      358 FASTCALL1                        TOSTRING R12 ; [+3]
      359 MOVE                             R20 R12
      360 GETIMPORT                        R19 K51 [tostring]
      362 CALL                             R19 1 1
      363 SETTABLEKS                       R19 R18 K30 ["Text"]
      365 LOADK                            R20 K61 ["%*--next-month-calendar-day-%*"]
      366 GETUPVAL                         R22 11
      367 GETTABLEKS                       R22 R22 K47 ["testId"]
      369 MOVE                             R23 R12
      370 NAMECALL                         R20 R20 K53 ["format"]
      372 CALL                             R20 3 1
      373 MOVE                             R19 R20
      374 SETTABLEKS                       R19 R18 K47 ["testId"]
      376 CALL                             R16 2 -1
      377 FASTCALL                         TABLE_INSERT ; [+2]
      378 GETIMPORT                        R14 K28 [table.insert]
      380 CALL                             R14 -1 0
      381 ADDK                             R1 R1 K34 [1]
      382 FORNLOOP                         R10
      383 RETURN                           R0 1

PROTO_17:
        0 GETIMPORT                        R1 K2 [DateTime.fromUnixTimestamp]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K5 [os.date]
        6 LOADK                            R3 K6 ["*t"]
        7 MOVE                             R4 R0
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R2 R2 K7 ["isdst"]
       11 JUMPIFNOT                        R2 ; [+26]
       12 NAMECALL                         R3 R1 K8 ["ToLocalTime"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K10 [DateTime.fromLocalTime]
       17 GETTABLEKS                       R5 R3 K11 ["Year"]
       19 GETTABLEKS                       R6 R3 K12 ["Month"]
       21 GETTABLEKS                       R7 R3 K13 ["Day"]
       23 GETTABLEKS                       R9 R3 K14 ["Hour"]
       25 JUMPIFNOTEQKN                    R9 K15 [0] ; [+3]
       27 LOADN                            R8 23
       28 JUMP                             ; [+3]
       29 GETTABLEKS                       R9 R3 K14 ["Hour"]
       31 SUBK                             R8 R9 K16 [1]
       32 GETTABLEKS                       R9 R3 K17 ["Minute"]
       34 GETTABLEKS                       R10 R3 K18 ["Second"]
       36 CALL                             R4 6 1
       37 MOVE                             R1 R4
       38 GETUPVAL                         R3 0
       39 NEWTABLE                         R4 0 1
       41 MOVE                             R5 R1
       42 SETLIST                          R4 R5 1 [1]
       44 CALL                             R3 1 0
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K19 ["onSelectedDateChanged"]
       48 NEWTABLE                         R4 0 1
       50 MOVE                             R5 R1
       51 SETLIST                          R4 R5 1 [1]
       53 CALL                             R3 1 0
       54 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{[1] = True, ["endDateTimeInput"] = False}]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{[1] = False, ["endDateTimeInput"] = True}]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADN                            R3 272
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["useRef"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 GETTABLEKS                       R5 R0 K2 ["defaultDates"]
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K0 ["useRef"]
       19 LOADNIL                          R7
       20 CALL                             R6 1 1
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K1 ["useState"]
       24 GETTABLEKS                       R9 R0 K3 ["showEndDateTimeCalendarInput"]
       26 JUMPIFNOT                        R9 ; [+2]
       27 DUPTABLE                         R8 K8 [{["startDateTimeInput"] = False, ["endDateTimeInput"] = True}]
       28 JUMP                             ; [+1]
       29 DUPTABLE                         R8 K9 [{["startDateTimeInput"] = True, ["endDateTimeInput"] = False}]
       30 CALL                             R7 1 2
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K10 ["useEffect"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R6
       38 NEWTABLE                         R11 0 1
       40 MOVE                             R12 R7
       41 SETLIST                          R11 R12 1 [1]
       43 CALL                             R9 2 0
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R9 R9 K1 ["useState"]
       47 GETUPVAL                         R11 3
       48 GETTABLEKS                       R11 R11 K11 ["FoundationDateTimePickerTimeVariantEnabled"]
       50 JUMPIFNOT                        R11 ; [+8]
       51 GETUPVAL                         R10 4
       52 GETTABLEKS                       R10 R10 K12 ["formatLocalTime"]
       54 GETTABLEKS                       R12 R0 K2 ["defaultDates"]
       56 GETTABLEN                        R11 R12 1
       57 CALL                             R10 1 1
       58 JUMP                             ; [+12]
       59 GETTABLEKS                       R11 R0 K2 ["defaultDates"]
       61 GETTABLEN                        R10 R11 1
       62 GETUPVAL                         R12 4
       63 GETTABLEKS                       R12 R12 K13 ["DATE_COMPOSITE_TOKEN"]
       65 GETUPVAL                         R13 5
       66 GETTABLEKS                       R13 R13 K14 ["RobloxLocaleId"]
       68 NAMECALL                         R10 R10 K15 ["FormatLocalTime"]
       70 CALL                             R10 3 1
       71 CALL                             R9 1 2
       72 GETUPVAL                         R11 2
       73 GETTABLEKS                       R11 R11 K1 ["useState"]
       75 GETTABLEKS                       R14 R0 K2 ["defaultDates"]
       77 GETTABLEN                        R13 R14 2
       78 JUMPIFNOT                        R13 ; [+25]
       79 GETUPVAL                         R13 3
       80 GETTABLEKS                       R13 R13 K11 ["FoundationDateTimePickerTimeVariantEnabled"]
       82 JUMPIFNOT                        R13 ; [+8]
       83 GETUPVAL                         R12 4
       84 GETTABLEKS                       R12 R12 K12 ["formatLocalTime"]
       86 GETTABLEKS                       R14 R0 K2 ["defaultDates"]
       88 GETTABLEN                        R13 R14 2
       89 CALL                             R12 1 1
       90 JUMP                             ; [+14]
       91 GETTABLEKS                       R13 R0 K2 ["defaultDates"]
       93 GETTABLEN                        R12 R13 2
       94 GETUPVAL                         R14 4
       95 GETTABLEKS                       R14 R14 K13 ["DATE_COMPOSITE_TOKEN"]
       97 GETUPVAL                         R15 5
       98 GETTABLEKS                       R15 R15 K14 ["RobloxLocaleId"]
      100 NAMECALL                         R12 R12 K15 ["FormatLocalTime"]
      102 CALL                             R12 3 1
      103 JUMP                             ; [+1]
      104 LOADK                            R12 K16 [""]
      105 CALL                             R11 1 2
      106 GETUPVAL                         R13 2
      107 GETTABLEKS                       R13 R13 K10 ["useEffect"]
      109 NEWCLOSURE                       R14 P1
      110 CAPTURE                          VAL R3
      111 NEWTABLE                         R15 0 0
      113 CALL                             R13 2 0
      114 GETUPVAL                         R13 2
      115 GETTABLEKS                       R13 R13 K1 ["useState"]
      117 DUPTABLE                         R14 K19 [{"month", "year"}]
      118 GETTABLEKS                       R16 R0 K2 ["defaultDates"]
      120 GETTABLEN                        R15 R16 1
      121 NAMECALL                         R15 R15 K20 ["ToLocalTime"]
      123 CALL                             R15 1 1
      124 GETTABLEKS                       R15 R15 K21 ["Month"]
      126 SETTABLEKS                       R15 R14 K17 ["month"]
      128 GETTABLEKS                       R16 R0 K2 ["defaultDates"]
      130 GETTABLEN                        R15 R16 1
      131 NAMECALL                         R15 R15 K20 ["ToLocalTime"]
      133 CALL                             R15 1 1
      134 GETTABLEKS                       R15 R15 K22 ["Year"]
      136 SETTABLEKS                       R15 R14 K18 ["year"]
      138 CALL                             R13 1 2
      139 NEWTABLE                         R15 0 0
      141 MOVE                             R16 R4
      142 LOADNIL                          R17
      143 LOADNIL                          R18
      144 FORGPREP                         R16
      145 MOVE                             R22 R15
      146 NAMECALL                         R23 R20 K20 ["ToLocalTime"]
      148 CALL                             R23 1 -1
      149 FASTCALL                         TABLE_INSERT ; [+2]
      150 GETIMPORT                        R21 K25 [table.insert]
      152 CALL                             R21 -1 0
      153 FORGLOOP                         R16 2 ; [-9]
      155 NEWCLOSURE                       R16 P2
      156 CAPTURE                          UPVAL U4
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R10
      160 CAPTURE                          UPVAL U3
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U5
      163 NEWCLOSURE                       R17 P3
      164 CAPTURE                          UPVAL U4
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R12
      168 CAPTURE                          UPVAL U3
      169 CAPTURE                          VAL R0
      170 CAPTURE                          UPVAL U5
      171 GETUPVAL                         R18 2
      172 GETTABLEKS                       R18 R18 K26 ["useCallback"]
      174 NEWCLOSURE                       R19 P4
      175 CAPTURE                          UPVAL U4
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R14
      178 NEWTABLE                         R20 0 1
      180 MOVE                             R21 R13
      181 SETLIST                          R20 R21 1 [1]
      183 CALL                             R18 2 1
      184 GETUPVAL                         R19 2
      185 GETTABLEKS                       R19 R19 K26 ["useCallback"]
      187 NEWCLOSURE                       R20 P5
      188 CAPTURE                          UPVAL U4
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R14
      191 NEWTABLE                         R21 0 1
      193 MOVE                             R22 R13
      194 SETLIST                          R21 R22 1 [1]
      196 CALL                             R19 2 1
      197 GETUPVAL                         R20 2
      198 GETTABLEKS                       R20 R20 K26 ["useCallback"]
      200 NEWCLOSURE                       R21 P6
      201 CAPTURE                          UPVAL U3
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R0
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R10
      206 CAPTURE                          UPVAL U4
      207 CAPTURE                          UPVAL U5
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R5
      212 NEWTABLE                         R22 0 5
      214 GETTABLEKS                       R23 R0 K27 ["showStartDateTimeCalendarInput"]
      216 GETTABLEKS                       R24 R0 K3 ["showEndDateTimeCalendarInput"]
      218 MOVE                             R25 R4
      219 MOVE                             R26 R7
      220 MOVE                             R27 R6
      221 SETLIST                          R22 R23 5 [1]
      223 CALL                             R20 2 1
      224 GETUPVAL                         R21 2
      225 GETTABLEKS                       R21 R21 K26 ["useCallback"]
      227 NEWCLOSURE                       R22 P7
      228 CAPTURE                          VAL R15
      229 NEWTABLE                         R23 0 1
      231 MOVE                             R24 R15
      232 SETLIST                          R23 R24 1 [1]
      234 CALL                             R21 2 1
      235 GETUPVAL                         R22 2
      236 GETTABLEKS                       R22 R22 K26 ["useCallback"]
      238 NEWCLOSURE                       R23 P8
      239 CAPTURE                          VAL R0
      240 CAPTURE                          VAL R4
      241 CAPTURE                          UPVAL U4
      242 NEWTABLE                         R24 0 2
      244 GETTABLEKS                       R25 R0 K3 ["showEndDateTimeCalendarInput"]
      246 MOVE                             R26 R4
      247 SETLIST                          R24 R25 2 [1]
      249 CALL                             R22 2 1
      250 GETUPVAL                         R23 2
      251 GETTABLEKS                       R23 R23 K26 ["useCallback"]
      253 NEWCLOSURE                       R24 P9
      254 CAPTURE                          VAL R0
      255 CAPTURE                          UPVAL U4
      256 CAPTURE                          VAL R7
      257 CAPTURE                          VAL R4
      258 NEWTABLE                         R25 0 4
      260 MOVE                             R26 R4
      261 GETTABLEKS                       R27 R0 K28 ["selectableDateRange"]
      263 MOVE                             R28 R7
      264 GETTABLEKS                       R29 R0 K3 ["showEndDateTimeCalendarInput"]
      266 SETLIST                          R25 R26 4 [1]
      268 CALL                             R23 2 1
      269 GETUPVAL                         R24 2
      270 GETTABLEKS                       R24 R24 K26 ["useCallback"]
      272 NEWCLOSURE                       R25 P10
      273 CAPTURE                          VAL R3
      274 CAPTURE                          VAL R10
      275 CAPTURE                          UPVAL U4
      276 CAPTURE                          VAL R0
      277 CAPTURE                          VAL R4
      278 CAPTURE                          VAL R14
      279 CAPTURE                          VAL R5
      280 NEWTABLE                         R26 0 5
      282 GETTABLEKS                       R27 R0 K29 ["onSelectedDateChanged"]
      284 GETTABLEKS                       R28 R0 K3 ["showEndDateTimeCalendarInput"]
      286 MOVE                             R29 R23
      287 MOVE                             R30 R4
      288 MOVE                             R31 R3
      289 SETLIST                          R26 R27 5 [1]
      291 CALL                             R24 2 1
      292 GETUPVAL                         R25 2
      293 GETTABLEKS                       R25 R25 K26 ["useCallback"]
      295 NEWCLOSURE                       R26 P11
      296 CAPTURE                          VAL R3
      297 CAPTURE                          VAL R12
      298 CAPTURE                          UPVAL U4
      299 CAPTURE                          VAL R4
      300 CAPTURE                          VAL R14
      301 CAPTURE                          VAL R5
      302 CAPTURE                          VAL R0
      303 NEWTABLE                         R27 0 4
      305 GETTABLEKS                       R28 R0 K29 ["onSelectedDateChanged"]
      307 MOVE                             R29 R4
      308 MOVE                             R30 R23
      309 MOVE                             R31 R3
      310 SETLIST                          R27 R28 4 [1]
      312 CALL                             R25 2 1
      313 GETUPVAL                         R26 2
      314 GETTABLEKS                       R26 R26 K30 ["useMemo"]
      316 NEWCLOSURE                       R27 P12
      317 CAPTURE                          UPVAL U2
      318 CAPTURE                          VAL R1
      319 CAPTURE                          VAL R2
      320 CAPTURE                          UPVAL U4
      321 CAPTURE                          UPVAL U6
      322 CAPTURE                          VAL R13
      323 CAPTURE                          UPVAL U7
      324 CAPTURE                          VAL R22
      325 CAPTURE                          VAL R23
      326 CAPTURE                          VAL R21
      327 CAPTURE                          VAL R20
      328 CAPTURE                          VAL R0
      329 NEWTABLE                         R28 0 8
      331 MOVE                             R29 R21
      332 MOVE                             R30 R22
      333 MOVE                             R31 R23
      334 MOVE                             R32 R13
      335 MOVE                             R33 R4
      336 MOVE                             R34 R20
      337 GETTABLEKS                       R35 R0 K28 ["selectableDateRange"]
      339 GETTABLEKS                       R36 R0 K3 ["showEndDateTimeCalendarInput"]
      341 SETLIST                          R28 R29 8 [1]
      343 CALL                             R26 2 1
      344 GETUPVAL                         R27 2
      345 GETTABLEKS                       R27 R27 K26 ["useCallback"]
      347 NEWCLOSURE                       R28 P13
      348 CAPTURE                          VAL R5
      349 CAPTURE                          VAL R0
      350 NEWTABLE                         R29 0 2
      352 MOVE                             R30 R4
      353 GETTABLEKS                       R31 R0 K29 ["onSelectedDateChanged"]
      355 SETLIST                          R29 R30 2 [1]
      357 CALL                             R27 2 1
      358 GETUPVAL                         R28 2
      359 GETTABLEKS                       R28 R28 K31 ["createElement"]
      361 GETUPVAL                         R29 8
      362 DUPTABLE                         R30 K37 [{["LayoutOrder"], ["tag"] = "col auto-y", ["Size"], ["testId"]}]
      363 GETTABLEKS                       R31 R0 K32 ["LayoutOrder"]
      365 SETTABLEKS                       R31 R30 K32 ["LayoutOrder"]
      367 GETIMPORT                        R31 K40 [UDim2.fromOffset]
      369 MOVE                             R32 R2
      370 LOADN                            R33 0
      371 CALL                             R31 2 1
      372 SETTABLEKS                       R31 R30 K35 ["Size"]
      374 GETTABLEKS                       R31 R0 K36 ["testId"]
      376 SETTABLEKS                       R31 R30 K36 ["testId"]
      378 DUPTABLE                         R31 K45 [{"CalendarHeader", "TimeDropdown", "CalendarInputContainer", "WeekAndDates"}]
      379 GETUPVAL                         R32 2
      380 GETTABLEKS                       R32 R32 K31 ["createElement"]
      382 GETUPVAL                         R33 8
      383 DUPTABLE                         R34 K48 [{["LayoutOrder"] = 1, ["tag"] = "row size-full-0 auto-y gap-small align-y-center padding-y-small"}]
      384 DUPTABLE                         R35 K53 [{"PreviousMonthButton", "MonthText", "YearText", "NextMonthButton"}]
      385 GETUPVAL                         R36 2
      386 GETTABLEKS                       R36 R36 K31 ["createElement"]
      388 GETUPVAL                         R37 9
      389 DUPTABLE                         R38 K59 [{["LayoutOrder"] = 1, ["icon"], ["isCircular"] = True, ["onActivated"], ["size"], ["variant"], ["testId"]}]
      390 GETUPVAL                         R39 10
      391 GETTABLEKS                       R39 R39 K60 ["ChevronSmallLeft"]
      393 SETTABLEKS                       R39 R38 K54 ["icon"]
      395 SETTABLEKS                       R19 R38 K56 ["onActivated"]
      397 GETUPVAL                         R39 11
      398 GETTABLEKS                       R39 R39 K61 ["Small"]
      400 SETTABLEKS                       R39 R38 K57 ["size"]
      402 GETUPVAL                         R39 12
      403 GETTABLEKS                       R39 R39 K62 ["Utility"]
      405 SETTABLEKS                       R39 R38 K58 ["variant"]
      407 LOADK                            R40 K63 ["%*--previous-month-button"]
      408 GETTABLEKS                       R42 R0 K36 ["testId"]
      410 NAMECALL                         R40 R40 K64 ["format"]
      412 CALL                             R40 2 1
      413 MOVE                             R39 R40
      414 SETTABLEKS                       R39 R38 K36 ["testId"]
      416 CALL                             R36 2 1
      417 SETTABLEKS                       R36 R35 K49 ["PreviousMonthButton"]
      419 GETUPVAL                         R36 2
      420 GETTABLEKS                       R36 R36 K31 ["createElement"]
      422 GETUPVAL                         R37 6
      423 DUPTABLE                         R38 K68 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "grow text-align-x-right auto-xy", ["testId"]}]
      424 GETUPVAL                         R40 4
      425 GETTABLEKS                       R40 R40 K69 ["monthMap"]
      427 GETTABLEKS                       R41 R13 K17 ["month"]
      429 GETTABLE                         R39 R40 R41
      430 SETTABLEKS                       R39 R38 K66 ["Text"]
      432 LOADK                            R40 K70 ["%*--month-text"]
      433 GETTABLEKS                       R42 R0 K36 ["testId"]
      435 NAMECALL                         R40 R40 K64 ["format"]
      437 CALL                             R40 2 1
      438 MOVE                             R39 R40
      439 SETTABLEKS                       R39 R38 K36 ["testId"]
      441 CALL                             R36 2 1
      442 SETTABLEKS                       R36 R35 K50 ["MonthText"]
      444 GETUPVAL                         R36 2
      445 GETTABLEKS                       R36 R36 K31 ["createElement"]
      447 GETUPVAL                         R37 6
      448 DUPTABLE                         R38 K73 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "grow text-align-x-left auto-xy", ["testId"]}]
      449 GETTABLEKS                       R40 R13 K18 ["year"]
      451 FASTCALL1                        TOSTRING R40 ; [+2]
      452 GETIMPORT                        R39 K75 [tostring]
      454 CALL                             R39 1 1
      455 SETTABLEKS                       R39 R38 K66 ["Text"]
      457 LOADK                            R40 K76 ["%*--year-text"]
      458 GETTABLEKS                       R42 R0 K36 ["testId"]
      460 NAMECALL                         R40 R40 K64 ["format"]
      462 CALL                             R40 2 1
      463 MOVE                             R39 R40
      464 SETTABLEKS                       R39 R38 K36 ["testId"]
      466 CALL                             R36 2 1
      467 SETTABLEKS                       R36 R35 K51 ["YearText"]
      469 GETUPVAL                         R36 2
      470 GETTABLEKS                       R36 R36 K31 ["createElement"]
      472 GETUPVAL                         R37 9
      473 DUPTABLE                         R38 K78 [{["LayoutOrder"] = 4, ["icon"], ["isCircular"] = True, ["onActivated"], ["size"], ["variant"], ["testId"]}]
      474 GETUPVAL                         R39 10
      475 GETTABLEKS                       R39 R39 K79 ["ChevronSmallRight"]
      477 SETTABLEKS                       R39 R38 K54 ["icon"]
      479 SETTABLEKS                       R18 R38 K56 ["onActivated"]
      481 GETUPVAL                         R39 11
      482 GETTABLEKS                       R39 R39 K61 ["Small"]
      484 SETTABLEKS                       R39 R38 K57 ["size"]
      486 GETUPVAL                         R39 12
      487 GETTABLEKS                       R39 R39 K62 ["Utility"]
      489 SETTABLEKS                       R39 R38 K58 ["variant"]
      491 LOADK                            R40 K80 ["%*--next-month-button"]
      492 GETTABLEKS                       R42 R0 K36 ["testId"]
      494 NAMECALL                         R40 R40 K64 ["format"]
      496 CALL                             R40 2 1
      497 MOVE                             R39 R40
      498 SETTABLEKS                       R39 R38 K36 ["testId"]
      500 CALL                             R36 2 1
      501 SETTABLEKS                       R36 R35 K52 ["NextMonthButton"]
      503 CALL                             R32 3 1
      504 SETTABLEKS                       R32 R31 K41 ["CalendarHeader"]
      506 GETUPVAL                         R32 3
      507 GETTABLEKS                       R32 R32 K11 ["FoundationDateTimePickerTimeVariantEnabled"]
      509 JUMPIFNOT                        R32 ; [+32]
      510 GETTABLEKS                       R33 R0 K81 ["showTimeDropdown"]
      512 JUMPIFNOT                        R33 ; [+28]
      513 GETUPVAL                         R32 2
      514 GETTABLEKS                       R32 R32 K31 ["createElement"]
      516 GETUPVAL                         R33 13
      517 DUPTABLE                         R34 K86 [{["dateTime"], ["layoutOrder"] = 2, ["onItemChanged"], ["width"], ["testId"]}]
      518 GETTABLEN                        R35 R4 1
      519 SETTABLEKS                       R35 R34 K82 ["dateTime"]
      521 SETTABLEKS                       R27 R34 K84 ["onItemChanged"]
      523 GETIMPORT                        R35 K89 [UDim.new]
      525 LOADN                            R36 1
      526 LOADN                            R37 0
      527 CALL                             R35 2 1
      528 SETTABLEKS                       R35 R34 K85 ["width"]
      530 LOADK                            R36 K90 ["%*--time-dropdown"]
      531 GETTABLEKS                       R38 R0 K36 ["testId"]
      533 NAMECALL                         R36 R36 K64 ["format"]
      535 CALL                             R36 2 1
      536 MOVE                             R35 R36
      537 SETTABLEKS                       R35 R34 K36 ["testId"]
      539 CALL                             R32 2 1
      540 JUMP                             ; [+1]
      541 LOADNIL                          R32
      542 SETTABLEKS                       R32 R31 K42 ["TimeDropdown"]
      544 GETTABLEKS                       R33 R0 K27 ["showStartDateTimeCalendarInput"]
      546 JUMPIFNOT                        R33 ; [+142]
      547 GETUPVAL                         R32 2
      548 GETTABLEKS                       R32 R32 K31 ["createElement"]
      550 GETUPVAL                         R33 8
      551 DUPTABLE                         R34 K92 [{["LayoutOrder"], ["tag"] = "flex-x-fill size-full-0 auto-y row gap-small align-y-center", ["testId"]}]
      552 GETUPVAL                         R36 3
      553 GETTABLEKS                       R36 R36 K11 ["FoundationDateTimePickerTimeVariantEnabled"]
      555 JUMPIFNOT                        R36 ; [+2]
      556 LOADN                            R35 3
      557 JUMP                             ; [+1]
      558 LOADN                            R35 2
      559 SETTABLEKS                       R35 R34 K32 ["LayoutOrder"]
      561 LOADK                            R36 K93 ["%*--input"]
      562 GETTABLEKS                       R38 R0 K36 ["testId"]
      564 NAMECALL                         R36 R36 K64 ["format"]
      566 CALL                             R36 2 1
      567 MOVE                             R35 R36
      568 SETTABLEKS                       R35 R34 K36 ["testId"]
      570 DUPTABLE                         R35 K97 [{"StartDateTime", "InputSeparator", "EndDateTime"}]
      571 GETUPVAL                         R36 2
      572 GETTABLEKS                       R36 R36 K31 ["createElement"]
      574 GETUPVAL                         R37 14
      575 DUPTABLE                         R38 K106 [{["hasError"], ["label"] = "", ["LayoutOrder"] = 1, ["onChanged"], ["onFocusLost"], ["placeholder"] = "MM/DD/YYYY", ["size"], ["text"], ["onFocusGained"], ["testId"]}]
      576 LOADB                            R39 0
      577 JUMPIFEQKS                       R9 K16 [""] ; [+10]
      579 GETUPVAL                         R40 4
      580 GETTABLEKS                       R40 R40 K107 ["getDateTimeFromText"]
      582 MOVE                             R41 R9
      583 CALL                             R40 1 1
      584 JUMPIFEQKNIL                     R40 ; [+2]
      586 LOADB                            R39 0 +1
      587 LOADB                            R39 1
      588 SETTABLEKS                       R39 R38 K98 ["hasError"]
      590 SETTABLEKS                       R24 R38 K100 ["onChanged"]
      592 SETTABLEKS                       R16 R38 K101 ["onFocusLost"]
      594 GETUPVAL                         R39 11
      595 GETTABLEKS                       R39 R39 K108 ["Medium"]
      597 SETTABLEKS                       R39 R38 K57 ["size"]
      599 SETTABLEKS                       R9 R38 K104 ["text"]
      601 NEWCLOSURE                       R39 P14
      602 CAPTURE                          VAL R8
      603 SETTABLEKS                       R39 R38 K105 ["onFocusGained"]
      605 LOADK                            R40 K109 ["%*--start-datetime-input"]
      606 GETTABLEKS                       R42 R0 K36 ["testId"]
      608 NAMECALL                         R40 R40 K64 ["format"]
      610 CALL                             R40 2 1
      611 MOVE                             R39 R40
      612 SETTABLEKS                       R39 R38 K36 ["testId"]
      614 CALL                             R36 2 1
      615 SETTABLEKS                       R36 R35 K94 ["StartDateTime"]
      617 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      619 JUMPIFNOT                        R37 ; [+7]
      620 GETUPVAL                         R36 2
      621 GETTABLEKS                       R36 R36 K31 ["createElement"]
      623 GETUPVAL                         R37 6
      624 DUPTABLE                         R38 K112 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy", ["Text"] = "-"}]
      625 CALL                             R36 2 1
      626 JUMP                             ; [+1]
      627 LOADNIL                          R36
      628 SETTABLEKS                       R36 R35 K95 ["InputSeparator"]
      630 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      632 JUMPIFNOT                        R37 ; [+51]
      633 GETUPVAL                         R36 2
      634 GETTABLEKS                       R36 R36 K31 ["createElement"]
      636 GETUPVAL                         R37 14
      637 DUPTABLE                         R38 K115 [{["hasError"], ["isDisabled"], ["label"] = "", ["LayoutOrder"] = 3, ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["placeholder"] = "MM/DD/YYYY", ["size"], ["text"], ["textBoxRef"], ["testId"]}]
      638 LOADB                            R39 0
      639 JUMPIFEQKS                       R11 K16 [""] ; [+10]
      641 GETUPVAL                         R40 4
      642 GETTABLEKS                       R40 R40 K107 ["getDateTimeFromText"]
      644 MOVE                             R41 R11
      645 CALL                             R40 1 1
      646 JUMPIFEQKNIL                     R40 ; [+2]
      648 LOADB                            R39 0 +1
      649 LOADB                            R39 1
      650 SETTABLEKS                       R39 R38 K98 ["hasError"]
      652 GETTABLEN                        R40 R4 1
      653 NOT                              R39 R40
      654 SETTABLEKS                       R39 R38 K113 ["isDisabled"]
      656 SETTABLEKS                       R25 R38 K100 ["onChanged"]
      658 NEWCLOSURE                       R39 P15
      659 CAPTURE                          VAL R8
      660 SETTABLEKS                       R39 R38 K105 ["onFocusGained"]
      662 SETTABLEKS                       R17 R38 K101 ["onFocusLost"]
      664 GETUPVAL                         R39 11
      665 GETTABLEKS                       R39 R39 K108 ["Medium"]
      667 SETTABLEKS                       R39 R38 K57 ["size"]
      669 SETTABLEKS                       R11 R38 K104 ["text"]
      671 SETTABLEKS                       R6 R38 K114 ["textBoxRef"]
      673 LOADK                            R40 K116 ["%*--end-datetime-input"]
      674 GETTABLEKS                       R42 R0 K36 ["testId"]
      676 NAMECALL                         R40 R40 K64 ["format"]
      678 CALL                             R40 2 1
      679 MOVE                             R39 R40
      680 SETTABLEKS                       R39 R38 K36 ["testId"]
      682 CALL                             R36 2 1
      683 JUMP                             ; [+1]
      684 LOADNIL                          R36
      685 SETTABLEKS                       R36 R35 K96 ["EndDateTime"]
      687 CALL                             R32 3 1
      688 JUMP                             ; [+1]
      689 LOADNIL                          R32
      690 SETTABLEKS                       R32 R31 K43 ["CalendarInputContainer"]
      692 GETUPVAL                         R32 2
      693 GETTABLEKS                       R32 R32 K31 ["createElement"]
      695 GETUPVAL                         R33 8
      696 DUPTABLE                         R34 K118 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      697 GETUPVAL                         R36 3
      698 GETTABLEKS                       R36 R36 K11 ["FoundationDateTimePickerTimeVariantEnabled"]
      700 JUMPIFNOT                        R36 ; [+2]
      701 LOADN                            R35 4
      702 JUMP                             ; [+1]
      703 LOADN                            R35 3
      704 SETTABLEKS                       R35 R34 K32 ["LayoutOrder"]
      706 MOVE                             R35 R26
      707 CALL                             R32 3 1
      708 SETTABLEKS                       R32 R31 K44 ["WeekAndDates"]
      710 CALL                             R28 3 -1
      711 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K4 ["Parent"]
       25 GETTABLEKS                       R5 R5 K9 ["CalendarDay"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K10 ["DateTimeUtilities"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R2 K11 ["Icon"]
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Enums"]
       43 GETTABLEKS                       R8 R8 K13 ["ButtonVariant"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Utility"]
       50 GETTABLEKS                       R9 R9 K15 ["Flags"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K16 ["Components"]
       57 GETTABLEKS                       R10 R10 K17 ["IconButton"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R11 R0 K12 ["Enums"]
       64 GETTABLEKS                       R11 R11 K18 ["InputSize"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R12 R0 K14 ["Utility"]
       71 GETTABLEKS                       R12 R12 K19 ["Wrappers"]
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R11 R11 K20 ["Services"]
       76 GETTABLEKS                       R11 R11 K21 ["LocalizationService"]
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R13 R0 K16 ["Components"]
       82 GETTABLEKS                       R13 R13 K22 ["Text"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R14 R0 K16 ["Components"]
       89 GETTABLEKS                       R14 R14 K23 ["TextInput"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETIMPORT                        R15 K1 [script]
       96 GETTABLEKS                       R15 R15 K4 ["Parent"]
       98 GETTABLEKS                       R15 R15 K24 ["TimeDropdown"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K6 [require]
      103 GETTABLEKS                       R16 R0 K14 ["Utility"]
      105 GETTABLEKS                       R16 R16 K25 ["useScaledValue"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K6 [require]
      110 GETTABLEKS                       R17 R0 K26 ["Providers"]
      112 GETTABLEKS                       R17 R17 K27 ["Style"]
      114 GETTABLEKS                       R17 R17 K28 ["useTokens"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K6 [require]
      119 GETTABLEKS                       R18 R0 K16 ["Components"]
      121 GETTABLEKS                       R18 R18 K29 ["View"]
      123 CALL                             R17 1 1
      124 DUPCLOSURE                       R18 K30 [PROTO_20]
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R13
      140 RETURN                           R18 1
