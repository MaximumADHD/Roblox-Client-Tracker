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
       35 JUMPIFNOT                        R4 ; [+137]
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K8 ["showEndDateTimeCalendarInput"]
       39 JUMPIFNOT                        R4 ; [+104]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R4 R4 K9 ["startDateTimeInput"]
       43 JUMPIFNOT                        R4 ; [+31]
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
       66 DUPTABLE                         R5 K15 [{"startDateTimeInput", "endDateTimeInput"}]
       67 LOADB                            R6 0
       68 SETTABLEKS                       R6 R5 K9 ["startDateTimeInput"]
       70 LOADB                            R6 1
       71 SETTABLEKS                       R6 R5 K14 ["endDateTimeInput"]
       73 CALL                             R4 1 0
       74 JUMP                             ; [+90]
       75 GETUPVAL                         R4 3
       76 GETTABLEKS                       R4 R4 K14 ["endDateTimeInput"]
       78 JUMPIFNOT                        R4 ; [+31]
       79 GETUPVAL                         R4 8
       80 GETUPVAL                         R6 0
       81 GETTABLEKS                       R6 R6 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
       83 JUMPIFNOT                        R6 ; [+6]
       84 GETUPVAL                         R5 5
       85 GETTABLEKS                       R5 R5 K10 ["formatLocalTime"]
       87 MOVE                             R6 R3
       88 CALL                             R5 1 1
       89 JUMP                             ; [+9]
       90 GETUPVAL                         R7 5
       91 GETTABLEKS                       R7 R7 K11 ["DATE_COMPOSITE_TOKEN"]
       93 GETUPVAL                         R8 6
       94 GETTABLEKS                       R8 R8 K12 ["RobloxLocaleId"]
       96 NAMECALL                         R5 R3 K13 ["FormatLocalTime"]
       98 CALL                             R5 3 1
       99 CALL                             R4 1 0
      100 GETUPVAL                         R4 7
      101 DUPTABLE                         R5 K15 [{"startDateTimeInput", "endDateTimeInput"}]
      102 LOADB                            R6 0
      103 SETTABLEKS                       R6 R5 K9 ["startDateTimeInput"]
      105 LOADB                            R6 0
      106 SETTABLEKS                       R6 R5 K14 ["endDateTimeInput"]
      108 CALL                             R4 1 0
      109 JUMP                             ; [+55]
      110 GETUPVAL                         R4 4
      111 GETUPVAL                         R6 0
      112 GETTABLEKS                       R6 R6 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
      114 JUMPIFNOT                        R6 ; [+6]
      115 GETUPVAL                         R5 5
      116 GETTABLEKS                       R5 R5 K10 ["formatLocalTime"]
      118 MOVE                             R6 R3
      119 CALL                             R5 1 1
      120 JUMP                             ; [+9]
      121 GETUPVAL                         R7 5
      122 GETTABLEKS                       R7 R7 K11 ["DATE_COMPOSITE_TOKEN"]
      124 GETUPVAL                         R8 6
      125 GETTABLEKS                       R8 R8 K12 ["RobloxLocaleId"]
      127 NAMECALL                         R5 R3 K13 ["FormatLocalTime"]
      129 CALL                             R5 3 1
      130 CALL                             R4 1 0
      131 GETUPVAL                         R4 8
      132 LOADK                            R5 K16 [""]
      133 CALL                             R4 1 0
      134 GETUPVAL                         R4 7
      135 DUPTABLE                         R5 K15 [{"startDateTimeInput", "endDateTimeInput"}]
      136 LOADB                            R6 0
      137 SETTABLEKS                       R6 R5 K9 ["startDateTimeInput"]
      139 LOADB                            R6 1
      140 SETTABLEKS                       R6 R5 K14 ["endDateTimeInput"]
      142 CALL                             R4 1 0
      143 JUMP                             ; [+21]
      144 GETUPVAL                         R4 4
      145 GETUPVAL                         R6 0
      146 GETTABLEKS                       R6 R6 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
      148 JUMPIFNOT                        R6 ; [+6]
      149 GETUPVAL                         R5 5
      150 GETTABLEKS                       R5 R5 K10 ["formatLocalTime"]
      152 MOVE                             R6 R3
      153 CALL                             R5 1 1
      154 JUMP                             ; [+9]
      155 GETUPVAL                         R7 5
      156 GETTABLEKS                       R7 R7 K11 ["DATE_COMPOSITE_TOKEN"]
      158 GETUPVAL                         R8 6
      159 GETTABLEKS                       R8 R8 K12 ["RobloxLocaleId"]
      161 NAMECALL                         R5 R3 K13 ["FormatLocalTime"]
      163 CALL                             R5 3 1
      164 CALL                             R4 1 0
      165 GETUPVAL                         R4 9
      166 DUPTABLE                         R5 K19 [{"month", "year"}]
      167 SETTABLEKS                       R1 R5 K17 ["month"]
      169 SETTABLEKS                       R2 R5 K18 ["year"]
      171 CALL                             R4 1 0
      172 RETURN                           R0 0
      173 GETUPVAL                         R4 9
      174 DUPTABLE                         R5 K19 [{"month", "year"}]
      175 SETTABLEKS                       R1 R5 K17 ["month"]
      177 SETTABLEKS                       R2 R5 K18 ["year"]
      179 CALL                             R4 1 0
      180 GETUPVAL                         R4 10
      181 NEWTABLE                         R5 0 1
      183 MOVE                             R6 R3
      184 SETLIST                          R5 R6 1 [1]
      186 CALL                             R4 1 0
      187 GETUPVAL                         R4 2
      188 GETTABLEKS                       R4 R4 K20 ["onSelectedDateChanged"]
      190 NEWTABLE                         R5 0 1
      192 MOVE                             R6 R3
      193 SETLIST                          R5 R6 1 [1]
      195 CALL                             R4 1 0
      196 RETURN                           R0 0

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
        7 DUPTABLE                         R5 K10 [{"CellPadding", "CellSize", "FillDirection", "FillDirectionMaxCells", "HorizontalAlignment", "key", "SortOrder", "VerticalAlignment"}]
        8 GETIMPORT                        R6 K13 [UDim2.fromOffset]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K14 ["Padding"]
       13 GETTABLEKS                       R7 R7 K15 ["None"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K14 ["Padding"]
       18 GETTABLEKS                       R8 R8 K15 ["None"]
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K2 ["CellPadding"]
       23 GETIMPORT                        R6 K13 [UDim2.fromOffset]
       25 GETUPVAL                         R8 2
       26 DIVK                             R7 R8 K16 [7]
       27 GETUPVAL                         R9 2
       28 DIVK                             R8 R9 K16 [7]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K3 ["CellSize"]
       32 GETIMPORT                        R6 K19 [Enum.FillDirection.Horizontal]
       34 SETTABLEKS                       R6 R5 K4 ["FillDirection"]
       36 LOADN                            R6 7
       37 SETTABLEKS                       R6 R5 K5 ["FillDirectionMaxCells"]
       39 GETIMPORT                        R6 K21 [Enum.HorizontalAlignment.Center]
       41 SETTABLEKS                       R6 R5 K6 ["HorizontalAlignment"]
       43 LOADK                            R6 K22 ["layout"]
       44 SETTABLEKS                       R6 R5 K7 ["key"]
       46 GETIMPORT                        R6 K24 [Enum.SortOrder.LayoutOrder]
       48 SETTABLEKS                       R6 R5 K8 ["SortOrder"]
       50 GETIMPORT                        R6 K25 [Enum.VerticalAlignment.Center]
       52 SETTABLEKS                       R6 R5 K9 ["VerticalAlignment"]
       54 CALL                             R3 2 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R1 K28 [table.insert]
       58 CALL                             R1 -1 0
       59 LOADN                            R1 1
       60 GETUPVAL                         R2 3
       61 GETTABLEKS                       R2 R2 K29 ["weekdays"]
       63 LOADNIL                          R3
       64 LOADNIL                          R4
       65 FORGPREP                         R2
       66 MOVE                             R8 R0
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R9 R9 K0 ["createElement"]
       70 GETUPVAL                         R10 4
       71 DUPTABLE                         R11 K32 [{"key", "LayoutOrder", "Text", "tag"}]
       72 SETTABLEKS                       R6 R11 K7 ["key"]
       74 SETTABLEKS                       R1 R11 K23 ["LayoutOrder"]
       76 SETTABLEKS                       R6 R11 K30 ["Text"]
       78 LOADK                            R12 K33 ["text-align-x-center text-align-y-center text-body-small"]
       79 SETTABLEKS                       R12 R11 K31 ["tag"]
       81 CALL                             R9 2 -1
       82 FASTCALL                         TABLE_INSERT ; [+2]
       83 GETIMPORT                        R7 K28 [table.insert]
       85 CALL                             R7 -1 0
       86 ADDK                             R1 R1 K34 [1]
       87 FORGLOOP                         R2 2 ; [-22]
       89 GETUPVAL                         R2 3
       90 GETTABLEKS                       R2 R2 K35 ["getFirstDayOfWeek"]
       92 GETUPVAL                         R3 5
       93 GETTABLEKS                       R3 R3 K36 ["month"]
       95 GETUPVAL                         R4 5
       96 GETTABLEKS                       R4 R4 K37 ["year"]
       98 CALL                             R2 2 1
       99 GETUPVAL                         R3 3
      100 GETTABLEKS                       R3 R3 K38 ["getPrevMonthInfo"]
      102 GETUPVAL                         R4 5
      103 GETTABLEKS                       R4 R4 K36 ["month"]
      105 GETUPVAL                         R5 5
      106 GETTABLEKS                       R5 R5 K37 ["year"]
      108 CALL                             R3 2 2
      109 GETUPVAL                         R5 3
      110 GETTABLEKS                       R5 R5 K39 ["getDaysInMonth"]
      112 GETUPVAL                         R6 3
      113 GETTABLEKS                       R6 R6 K38 ["getPrevMonthInfo"]
      115 GETUPVAL                         R7 5
      116 GETTABLEKS                       R7 R7 K36 ["month"]
      118 GETUPVAL                         R8 5
      119 GETTABLEKS                       R8 R8 K37 ["year"]
      121 CALL                             R6 2 -1
      122 CALL                             R5 -1 1
      123 LOADN                            R8 1
      124 MOVE                             R6 R2
      125 LOADN                            R7 1
      126 FORNPREP                         R6
      127 SUB                              R10 R5 R2
      128 ADD                              R9 R10 R8
      129 GETIMPORT                        R10 K42 [DateTime.fromLocalTime]
      131 MOVE                             R11 R4
      132 MOVE                             R12 R3
      133 MOVE                             R13 R9
      134 CALL                             R10 3 1
      135 MOVE                             R12 R0
      136 GETUPVAL                         R13 0
      137 GETTABLEKS                       R13 R13 K0 ["createElement"]
      139 GETUPVAL                         R14 6
      140 DUPTABLE                         R15 K48 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      141 GETUPVAL                         R16 7
      142 MOVE                             R17 R10
      143 CALL                             R16 1 1
      144 SETTABLEKS                       R16 R15 K43 ["highlight"]
      146 GETUPVAL                         R16 8
      147 MOVE                             R17 R10
      148 CALL                             R16 1 1
      149 SETTABLEKS                       R16 R15 K44 ["isSelectable"]
      151 GETUPVAL                         R16 9
      152 MOVE                             R17 R10
      153 CALL                             R16 1 1
      154 SETTABLEKS                       R16 R15 K45 ["isSelected"]
      156 LOADK                            R17 K49 ["prev-month-day-"]
      157 MOVE                             R18 R9
      158 CONCAT                           R16 R17 R18
      159 SETTABLEKS                       R16 R15 K7 ["key"]
      161 SETTABLEKS                       R1 R15 K23 ["LayoutOrder"]
      163 NEWCLOSURE                       R16 P0
      164 CAPTURE                          UPVAL U10
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R4
      168 SETTABLEKS                       R16 R15 K46 ["onActivated"]
      170 FASTCALL1                        TOSTRING R9 ; [+3]
      171 MOVE                             R17 R9
      172 GETIMPORT                        R16 K51 [tostring]
      174 CALL                             R16 1 1
      175 SETTABLEKS                       R16 R15 K30 ["Text"]
      177 LOADK                            R17 K52 ["%*--prev-month-calendar-day-%*"]
      178 GETUPVAL                         R19 11
      179 GETTABLEKS                       R19 R19 K47 ["testId"]
      181 MOVE                             R20 R9
      182 NAMECALL                         R17 R17 K53 ["format"]
      184 CALL                             R17 3 1
      185 MOVE                             R16 R17
      186 SETTABLEKS                       R16 R15 K47 ["testId"]
      188 CALL                             R13 2 -1
      189 FASTCALL                         TABLE_INSERT ; [+2]
      190 GETIMPORT                        R11 K28 [table.insert]
      192 CALL                             R11 -1 0
      193 ADDK                             R1 R1 K34 [1]
      194 FORNLOOP                         R6
      195 LOADN                            R8 1
      196 GETUPVAL                         R9 3
      197 GETTABLEKS                       R9 R9 K39 ["getDaysInMonth"]
      199 GETUPVAL                         R10 5
      200 GETTABLEKS                       R10 R10 K36 ["month"]
      202 GETUPVAL                         R11 5
      203 GETTABLEKS                       R11 R11 K37 ["year"]
      205 CALL                             R9 2 1
      206 MOVE                             R6 R9
      207 LOADN                            R7 1
      208 FORNPREP                         R6
      209 GETUPVAL                         R9 8
      210 GETIMPORT                        R10 K42 [DateTime.fromLocalTime]
      212 GETUPVAL                         R11 5
      213 GETTABLEKS                       R11 R11 K37 ["year"]
      215 GETUPVAL                         R12 5
      216 GETTABLEKS                       R12 R12 K36 ["month"]
      218 MOVE                             R13 R8
      219 CALL                             R10 3 -1
      220 CALL                             R9 -1 1
      221 GETUPVAL                         R10 9
      222 GETIMPORT                        R11 K42 [DateTime.fromLocalTime]
      224 GETUPVAL                         R12 5
      225 GETTABLEKS                       R12 R12 K37 ["year"]
      227 GETUPVAL                         R13 5
      228 GETTABLEKS                       R13 R13 K36 ["month"]
      230 MOVE                             R14 R8
      231 CALL                             R11 3 -1
      232 CALL                             R10 -1 1
      233 MOVE                             R12 R0
      234 GETUPVAL                         R13 0
      235 GETTABLEKS                       R13 R13 K0 ["createElement"]
      237 GETUPVAL                         R14 6
      238 DUPTABLE                         R15 K55 [{"emphasizeText", "highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      239 MOVE                             R16 R9
      240 JUMPIFNOT                        R16 ; [+1]
      241 NOT                              R16 R10
      242 SETTABLEKS                       R16 R15 K54 ["emphasizeText"]
      244 GETUPVAL                         R16 7
      245 GETIMPORT                        R17 K42 [DateTime.fromLocalTime]
      247 GETUPVAL                         R18 5
      248 GETTABLEKS                       R18 R18 K37 ["year"]
      250 GETUPVAL                         R19 5
      251 GETTABLEKS                       R19 R19 K36 ["month"]
      253 MOVE                             R20 R8
      254 CALL                             R17 3 -1
      255 CALL                             R16 -1 1
      256 SETTABLEKS                       R16 R15 K43 ["highlight"]
      258 SETTABLEKS                       R9 R15 K44 ["isSelectable"]
      260 SETTABLEKS                       R10 R15 K45 ["isSelected"]
      262 LOADK                            R17 K56 ["current-month-day-"]
      263 MOVE                             R18 R8
      264 CONCAT                           R16 R17 R18
      265 SETTABLEKS                       R16 R15 K7 ["key"]
      267 SETTABLEKS                       R1 R15 K23 ["LayoutOrder"]
      269 NEWCLOSURE                       R16 P1
      270 CAPTURE                          UPVAL U10
      271 CAPTURE                          VAL R8
      272 CAPTURE                          UPVAL U5
      273 SETTABLEKS                       R16 R15 K46 ["onActivated"]
      275 FASTCALL1                        TOSTRING R8 ; [+3]
      276 MOVE                             R17 R8
      277 GETIMPORT                        R16 K51 [tostring]
      279 CALL                             R16 1 1
      280 SETTABLEKS                       R16 R15 K30 ["Text"]
      282 LOADK                            R17 K57 ["%*--current-month-calendar-day-%*"]
      283 GETUPVAL                         R19 11
      284 GETTABLEKS                       R19 R19 K47 ["testId"]
      286 MOVE                             R20 R8
      287 NAMECALL                         R17 R17 K53 ["format"]
      289 CALL                             R17 3 1
      290 MOVE                             R16 R17
      291 SETTABLEKS                       R16 R15 K47 ["testId"]
      293 CALL                             R13 2 -1
      294 FASTCALL                         TABLE_INSERT ; [+2]
      295 GETIMPORT                        R11 K28 [table.insert]
      297 CALL                             R11 -1 0
      298 ADDK                             R1 R1 K34 [1]
      299 FORNLOOP                         R6
      300 GETUPVAL                         R6 3
      301 GETTABLEKS                       R6 R6 K58 ["getLastDayOfWeek"]
      303 GETUPVAL                         R7 5
      304 GETTABLEKS                       R7 R7 K36 ["month"]
      306 GETUPVAL                         R8 5
      307 GETTABLEKS                       R8 R8 K37 ["year"]
      309 CALL                             R6 2 1
      310 GETUPVAL                         R7 3
      311 GETTABLEKS                       R7 R7 K59 ["getNextMonthInfo"]
      313 GETUPVAL                         R8 5
      314 GETTABLEKS                       R8 R8 K36 ["month"]
      316 GETUPVAL                         R9 5
      317 GETTABLEKS                       R9 R9 K37 ["year"]
      319 CALL                             R7 2 2
      320 ADDK                             R10 R6 K34 [1]
      321 SUBRK                            R9 R16 K10 [{"CellPadding", "CellSize", "FillDirection", "FillDirectionMaxCells", "HorizontalAlignment", "key", "SortOrder", "VerticalAlignment"}]
      322 LOADN                            R12 1
      323 MOVE                             R10 R9
      324 LOADN                            R11 1
      325 FORNPREP                         R10
      326 GETIMPORT                        R13 K42 [DateTime.fromLocalTime]
      328 MOVE                             R14 R8
      329 MOVE                             R15 R7
      330 MOVE                             R16 R12
      331 CALL                             R13 3 1
      332 MOVE                             R15 R0
      333 GETUPVAL                         R16 0
      334 GETTABLEKS                       R16 R16 K0 ["createElement"]
      336 GETUPVAL                         R17 6
      337 DUPTABLE                         R18 K48 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      338 GETUPVAL                         R19 7
      339 MOVE                             R20 R13
      340 CALL                             R19 1 1
      341 SETTABLEKS                       R19 R18 K43 ["highlight"]
      343 GETUPVAL                         R19 8
      344 MOVE                             R20 R13
      345 CALL                             R19 1 1
      346 SETTABLEKS                       R19 R18 K44 ["isSelectable"]
      348 GETUPVAL                         R19 9
      349 MOVE                             R20 R13
      350 CALL                             R19 1 1
      351 SETTABLEKS                       R19 R18 K45 ["isSelected"]
      353 LOADK                            R20 K60 ["next-month-day-"]
      354 MOVE                             R21 R12
      355 CONCAT                           R19 R20 R21
      356 SETTABLEKS                       R19 R18 K7 ["key"]
      358 SETTABLEKS                       R1 R18 K23 ["LayoutOrder"]
      360 NEWCLOSURE                       R19 P2
      361 CAPTURE                          UPVAL U10
      362 CAPTURE                          VAL R12
      363 CAPTURE                          VAL R7
      364 CAPTURE                          VAL R8
      365 SETTABLEKS                       R19 R18 K46 ["onActivated"]
      367 FASTCALL1                        TOSTRING R12 ; [+3]
      368 MOVE                             R20 R12
      369 GETIMPORT                        R19 K51 [tostring]
      371 CALL                             R19 1 1
      372 SETTABLEKS                       R19 R18 K30 ["Text"]
      374 LOADK                            R20 K61 ["%*--next-month-calendar-day-%*"]
      375 GETUPVAL                         R22 11
      376 GETTABLEKS                       R22 R22 K47 ["testId"]
      378 MOVE                             R23 R12
      379 NAMECALL                         R20 R20 K53 ["format"]
      381 CALL                             R20 3 1
      382 MOVE                             R19 R20
      383 SETTABLEKS                       R19 R18 K47 ["testId"]
      385 CALL                             R16 2 -1
      386 FASTCALL                         TABLE_INSERT ; [+2]
      387 GETIMPORT                        R14 K28 [table.insert]
      389 CALL                             R14 -1 0
      390 ADDK                             R1 R1 K34 [1]
      391 FORNLOOP                         R10
      392 RETURN                           R0 1

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
        1 DUPTABLE                         R1 K2 [{"startDateTimeInput", "endDateTimeInput"}]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R1 K0 ["startDateTimeInput"]
        5 LOADB                            R2 0
        6 SETTABLEKS                       R2 R1 K1 ["endDateTimeInput"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"startDateTimeInput", "endDateTimeInput"}]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R1 K0 ["startDateTimeInput"]
        5 LOADB                            R2 1
        6 SETTABLEKS                       R2 R1 K1 ["endDateTimeInput"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADN                            R3 16
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
       26 JUMPIFNOT                        R9 ; [+8]
       27 DUPTABLE                         R8 K6 [{"startDateTimeInput", "endDateTimeInput"}]
       28 LOADB                            R9 0
       29 SETTABLEKS                       R9 R8 K4 ["startDateTimeInput"]
       31 LOADB                            R9 1
       32 SETTABLEKS                       R9 R8 K5 ["endDateTimeInput"]
       34 JUMP                             ; [+7]
       35 DUPTABLE                         R8 K6 [{"startDateTimeInput", "endDateTimeInput"}]
       36 LOADB                            R9 1
       37 SETTABLEKS                       R9 R8 K4 ["startDateTimeInput"]
       39 LOADB                            R9 0
       40 SETTABLEKS                       R9 R8 K5 ["endDateTimeInput"]
       42 CALL                             R7 1 2
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       46 NEWCLOSURE                       R10 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R6
       50 NEWTABLE                         R11 0 1
       52 MOVE                             R12 R7
       53 SETLIST                          R11 R12 1 [1]
       55 CALL                             R9 2 0
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R9 R9 K1 ["useState"]
       59 GETUPVAL                         R11 3
       60 GETTABLEKS                       R11 R11 K8 ["FoundationDateTimePickerTimeVariantEnabled"]
       62 JUMPIFNOT                        R11 ; [+8]
       63 GETUPVAL                         R10 4
       64 GETTABLEKS                       R10 R10 K9 ["formatLocalTime"]
       66 GETTABLEKS                       R12 R0 K2 ["defaultDates"]
       68 GETTABLEN                        R11 R12 1
       69 CALL                             R10 1 1
       70 JUMP                             ; [+12]
       71 GETTABLEKS                       R11 R0 K2 ["defaultDates"]
       73 GETTABLEN                        R10 R11 1
       74 GETUPVAL                         R12 4
       75 GETTABLEKS                       R12 R12 K10 ["DATE_COMPOSITE_TOKEN"]
       77 GETUPVAL                         R13 5
       78 GETTABLEKS                       R13 R13 K11 ["RobloxLocaleId"]
       80 NAMECALL                         R10 R10 K12 ["FormatLocalTime"]
       82 CALL                             R10 3 1
       83 CALL                             R9 1 2
       84 GETUPVAL                         R11 2
       85 GETTABLEKS                       R11 R11 K1 ["useState"]
       87 GETTABLEKS                       R14 R0 K2 ["defaultDates"]
       89 GETTABLEN                        R13 R14 2
       90 JUMPIFNOT                        R13 ; [+25]
       91 GETUPVAL                         R13 3
       92 GETTABLEKS                       R13 R13 K8 ["FoundationDateTimePickerTimeVariantEnabled"]
       94 JUMPIFNOT                        R13 ; [+8]
       95 GETUPVAL                         R12 4
       96 GETTABLEKS                       R12 R12 K9 ["formatLocalTime"]
       98 GETTABLEKS                       R14 R0 K2 ["defaultDates"]
      100 GETTABLEN                        R13 R14 2
      101 CALL                             R12 1 1
      102 JUMP                             ; [+14]
      103 GETTABLEKS                       R13 R0 K2 ["defaultDates"]
      105 GETTABLEN                        R12 R13 2
      106 GETUPVAL                         R14 4
      107 GETTABLEKS                       R14 R14 K10 ["DATE_COMPOSITE_TOKEN"]
      109 GETUPVAL                         R15 5
      110 GETTABLEKS                       R15 R15 K11 ["RobloxLocaleId"]
      112 NAMECALL                         R12 R12 K12 ["FormatLocalTime"]
      114 CALL                             R12 3 1
      115 JUMP                             ; [+1]
      116 LOADK                            R12 K13 [""]
      117 CALL                             R11 1 2
      118 GETUPVAL                         R13 2
      119 GETTABLEKS                       R13 R13 K7 ["useEffect"]
      121 NEWCLOSURE                       R14 P1
      122 CAPTURE                          VAL R3
      123 NEWTABLE                         R15 0 0
      125 CALL                             R13 2 0
      126 GETUPVAL                         R13 2
      127 GETTABLEKS                       R13 R13 K1 ["useState"]
      129 DUPTABLE                         R14 K16 [{"month", "year"}]
      130 GETTABLEKS                       R16 R0 K2 ["defaultDates"]
      132 GETTABLEN                        R15 R16 1
      133 NAMECALL                         R15 R15 K17 ["ToLocalTime"]
      135 CALL                             R15 1 1
      136 GETTABLEKS                       R15 R15 K18 ["Month"]
      138 SETTABLEKS                       R15 R14 K14 ["month"]
      140 GETTABLEKS                       R16 R0 K2 ["defaultDates"]
      142 GETTABLEN                        R15 R16 1
      143 NAMECALL                         R15 R15 K17 ["ToLocalTime"]
      145 CALL                             R15 1 1
      146 GETTABLEKS                       R15 R15 K19 ["Year"]
      148 SETTABLEKS                       R15 R14 K15 ["year"]
      150 CALL                             R13 1 2
      151 NEWTABLE                         R15 0 0
      153 MOVE                             R16 R4
      154 LOADNIL                          R17
      155 LOADNIL                          R18
      156 FORGPREP                         R16
      157 MOVE                             R22 R15
      158 NAMECALL                         R23 R20 K17 ["ToLocalTime"]
      160 CALL                             R23 1 -1
      161 FASTCALL                         TABLE_INSERT ; [+2]
      162 GETIMPORT                        R21 K22 [table.insert]
      164 CALL                             R21 -1 0
      165 FORGLOOP                         R16 2 ; [-9]
      167 NEWCLOSURE                       R16 P2
      168 CAPTURE                          UPVAL U4
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R10
      172 CAPTURE                          UPVAL U3
      173 CAPTURE                          VAL R0
      174 CAPTURE                          UPVAL U5
      175 NEWCLOSURE                       R17 P3
      176 CAPTURE                          UPVAL U4
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R12
      180 CAPTURE                          UPVAL U3
      181 CAPTURE                          VAL R0
      182 CAPTURE                          UPVAL U5
      183 GETUPVAL                         R18 2
      184 GETTABLEKS                       R18 R18 K23 ["useCallback"]
      186 NEWCLOSURE                       R19 P4
      187 CAPTURE                          UPVAL U4
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R14
      190 NEWTABLE                         R20 0 1
      192 MOVE                             R21 R13
      193 SETLIST                          R20 R21 1 [1]
      195 CALL                             R18 2 1
      196 GETUPVAL                         R19 2
      197 GETTABLEKS                       R19 R19 K23 ["useCallback"]
      199 NEWCLOSURE                       R20 P5
      200 CAPTURE                          UPVAL U4
      201 CAPTURE                          VAL R13
      202 CAPTURE                          VAL R14
      203 NEWTABLE                         R21 0 1
      205 MOVE                             R22 R13
      206 SETLIST                          R21 R22 1 [1]
      208 CALL                             R19 2 1
      209 GETUPVAL                         R20 2
      210 GETTABLEKS                       R20 R20 K23 ["useCallback"]
      212 NEWCLOSURE                       R21 P6
      213 CAPTURE                          UPVAL U3
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R0
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R10
      218 CAPTURE                          UPVAL U4
      219 CAPTURE                          UPVAL U5
      220 CAPTURE                          VAL R8
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R14
      223 CAPTURE                          VAL R5
      224 NEWTABLE                         R22 0 5
      226 GETTABLEKS                       R23 R0 K24 ["showStartDateTimeCalendarInput"]
      228 GETTABLEKS                       R24 R0 K3 ["showEndDateTimeCalendarInput"]
      230 MOVE                             R25 R4
      231 MOVE                             R26 R7
      232 MOVE                             R27 R6
      233 SETLIST                          R22 R23 5 [1]
      235 CALL                             R20 2 1
      236 GETUPVAL                         R21 2
      237 GETTABLEKS                       R21 R21 K23 ["useCallback"]
      239 NEWCLOSURE                       R22 P7
      240 CAPTURE                          VAL R15
      241 NEWTABLE                         R23 0 1
      243 MOVE                             R24 R15
      244 SETLIST                          R23 R24 1 [1]
      246 CALL                             R21 2 1
      247 GETUPVAL                         R22 2
      248 GETTABLEKS                       R22 R22 K23 ["useCallback"]
      250 NEWCLOSURE                       R23 P8
      251 CAPTURE                          VAL R0
      252 CAPTURE                          VAL R4
      253 CAPTURE                          UPVAL U4
      254 NEWTABLE                         R24 0 2
      256 GETTABLEKS                       R25 R0 K3 ["showEndDateTimeCalendarInput"]
      258 MOVE                             R26 R4
      259 SETLIST                          R24 R25 2 [1]
      261 CALL                             R22 2 1
      262 GETUPVAL                         R23 2
      263 GETTABLEKS                       R23 R23 K23 ["useCallback"]
      265 NEWCLOSURE                       R24 P9
      266 CAPTURE                          VAL R0
      267 CAPTURE                          UPVAL U4
      268 CAPTURE                          VAL R7
      269 CAPTURE                          VAL R4
      270 NEWTABLE                         R25 0 4
      272 MOVE                             R26 R4
      273 GETTABLEKS                       R27 R0 K25 ["selectableDateRange"]
      275 MOVE                             R28 R7
      276 GETTABLEKS                       R29 R0 K3 ["showEndDateTimeCalendarInput"]
      278 SETLIST                          R25 R26 4 [1]
      280 CALL                             R23 2 1
      281 GETUPVAL                         R24 2
      282 GETTABLEKS                       R24 R24 K23 ["useCallback"]
      284 NEWCLOSURE                       R25 P10
      285 CAPTURE                          VAL R3
      286 CAPTURE                          VAL R10
      287 CAPTURE                          UPVAL U4
      288 CAPTURE                          VAL R0
      289 CAPTURE                          VAL R4
      290 CAPTURE                          VAL R14
      291 CAPTURE                          VAL R5
      292 NEWTABLE                         R26 0 5
      294 GETTABLEKS                       R27 R0 K26 ["onSelectedDateChanged"]
      296 GETTABLEKS                       R28 R0 K3 ["showEndDateTimeCalendarInput"]
      298 MOVE                             R29 R23
      299 MOVE                             R30 R4
      300 MOVE                             R31 R3
      301 SETLIST                          R26 R27 5 [1]
      303 CALL                             R24 2 1
      304 GETUPVAL                         R25 2
      305 GETTABLEKS                       R25 R25 K23 ["useCallback"]
      307 NEWCLOSURE                       R26 P11
      308 CAPTURE                          VAL R3
      309 CAPTURE                          VAL R12
      310 CAPTURE                          UPVAL U4
      311 CAPTURE                          VAL R4
      312 CAPTURE                          VAL R14
      313 CAPTURE                          VAL R5
      314 CAPTURE                          VAL R0
      315 NEWTABLE                         R27 0 4
      317 GETTABLEKS                       R28 R0 K26 ["onSelectedDateChanged"]
      319 MOVE                             R29 R4
      320 MOVE                             R30 R23
      321 MOVE                             R31 R3
      322 SETLIST                          R27 R28 4 [1]
      324 CALL                             R25 2 1
      325 GETUPVAL                         R26 2
      326 GETTABLEKS                       R26 R26 K27 ["useMemo"]
      328 NEWCLOSURE                       R27 P12
      329 CAPTURE                          UPVAL U2
      330 CAPTURE                          VAL R1
      331 CAPTURE                          VAL R2
      332 CAPTURE                          UPVAL U4
      333 CAPTURE                          UPVAL U6
      334 CAPTURE                          VAL R13
      335 CAPTURE                          UPVAL U7
      336 CAPTURE                          VAL R22
      337 CAPTURE                          VAL R23
      338 CAPTURE                          VAL R21
      339 CAPTURE                          VAL R20
      340 CAPTURE                          VAL R0
      341 NEWTABLE                         R28 0 8
      343 MOVE                             R29 R21
      344 MOVE                             R30 R22
      345 MOVE                             R31 R23
      346 MOVE                             R32 R13
      347 MOVE                             R33 R4
      348 MOVE                             R34 R20
      349 GETTABLEKS                       R35 R0 K25 ["selectableDateRange"]
      351 GETTABLEKS                       R36 R0 K3 ["showEndDateTimeCalendarInput"]
      353 SETLIST                          R28 R29 8 [1]
      355 CALL                             R26 2 1
      356 GETUPVAL                         R27 2
      357 GETTABLEKS                       R27 R27 K23 ["useCallback"]
      359 NEWCLOSURE                       R28 P13
      360 CAPTURE                          VAL R5
      361 CAPTURE                          VAL R0
      362 NEWTABLE                         R29 0 2
      364 MOVE                             R30 R4
      365 GETTABLEKS                       R31 R0 K26 ["onSelectedDateChanged"]
      367 SETLIST                          R29 R30 2 [1]
      369 CALL                             R27 2 1
      370 GETUPVAL                         R28 2
      371 GETTABLEKS                       R28 R28 K28 ["createElement"]
      373 GETUPVAL                         R29 8
      374 DUPTABLE                         R30 K33 [{"LayoutOrder", "tag", "Size", "testId"}]
      375 GETTABLEKS                       R31 R0 K29 ["LayoutOrder"]
      377 SETTABLEKS                       R31 R30 K29 ["LayoutOrder"]
      379 LOADK                            R31 K34 ["col auto-y"]
      380 SETTABLEKS                       R31 R30 K30 ["tag"]
      382 GETIMPORT                        R31 K37 [UDim2.fromOffset]
      384 MOVE                             R32 R2
      385 LOADN                            R33 0
      386 CALL                             R31 2 1
      387 SETTABLEKS                       R31 R30 K31 ["Size"]
      389 GETTABLEKS                       R31 R0 K32 ["testId"]
      391 SETTABLEKS                       R31 R30 K32 ["testId"]
      393 DUPTABLE                         R31 K42 [{"CalendarHeader", "TimeDropdown", "CalendarInputContainer", "WeekAndDates"}]
      394 GETUPVAL                         R32 2
      395 GETTABLEKS                       R32 R32 K28 ["createElement"]
      397 GETUPVAL                         R33 8
      398 DUPTABLE                         R34 K43 [{"LayoutOrder", "tag"}]
      399 LOADN                            R35 1
      400 SETTABLEKS                       R35 R34 K29 ["LayoutOrder"]
      402 LOADK                            R35 K44 ["row size-full-0 auto-y gap-small align-y-center padding-y-small"]
      403 SETTABLEKS                       R35 R34 K30 ["tag"]
      405 DUPTABLE                         R35 K49 [{"PreviousMonthButton", "MonthText", "YearText", "NextMonthButton"}]
      406 GETUPVAL                         R36 2
      407 GETTABLEKS                       R36 R36 K28 ["createElement"]
      409 GETUPVAL                         R37 9
      410 DUPTABLE                         R38 K55 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      411 LOADN                            R39 1
      412 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      414 GETUPVAL                         R39 10
      415 GETTABLEKS                       R39 R39 K56 ["ChevronSmallLeft"]
      417 SETTABLEKS                       R39 R38 K50 ["icon"]
      419 LOADB                            R39 1
      420 SETTABLEKS                       R39 R38 K51 ["isCircular"]
      422 SETTABLEKS                       R19 R38 K52 ["onActivated"]
      424 GETUPVAL                         R39 11
      425 GETTABLEKS                       R39 R39 K57 ["Small"]
      427 SETTABLEKS                       R39 R38 K53 ["size"]
      429 GETUPVAL                         R39 12
      430 GETTABLEKS                       R39 R39 K58 ["Utility"]
      432 SETTABLEKS                       R39 R38 K54 ["variant"]
      434 LOADK                            R40 K59 ["%*--previous-month-button"]
      435 GETTABLEKS                       R42 R0 K32 ["testId"]
      437 NAMECALL                         R40 R40 K60 ["format"]
      439 CALL                             R40 2 1
      440 MOVE                             R39 R40
      441 SETTABLEKS                       R39 R38 K32 ["testId"]
      443 CALL                             R36 2 1
      444 SETTABLEKS                       R36 R35 K45 ["PreviousMonthButton"]
      446 GETUPVAL                         R36 2
      447 GETTABLEKS                       R36 R36 K28 ["createElement"]
      449 GETUPVAL                         R37 6
      450 DUPTABLE                         R38 K62 [{"LayoutOrder", "Text", "tag", "testId"}]
      451 LOADN                            R39 2
      452 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      454 GETUPVAL                         R40 4
      455 GETTABLEKS                       R40 R40 K63 ["monthMap"]
      457 GETTABLEKS                       R41 R13 K14 ["month"]
      459 GETTABLE                         R39 R40 R41
      460 SETTABLEKS                       R39 R38 K61 ["Text"]
      462 LOADK                            R39 K64 ["grow text-align-x-right auto-xy"]
      463 SETTABLEKS                       R39 R38 K30 ["tag"]
      465 LOADK                            R40 K65 ["%*--month-text"]
      466 GETTABLEKS                       R42 R0 K32 ["testId"]
      468 NAMECALL                         R40 R40 K60 ["format"]
      470 CALL                             R40 2 1
      471 MOVE                             R39 R40
      472 SETTABLEKS                       R39 R38 K32 ["testId"]
      474 CALL                             R36 2 1
      475 SETTABLEKS                       R36 R35 K46 ["MonthText"]
      477 GETUPVAL                         R36 2
      478 GETTABLEKS                       R36 R36 K28 ["createElement"]
      480 GETUPVAL                         R37 6
      481 DUPTABLE                         R38 K62 [{"LayoutOrder", "Text", "tag", "testId"}]
      482 LOADN                            R39 3
      483 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      485 GETTABLEKS                       R40 R13 K15 ["year"]
      487 FASTCALL1                        TOSTRING R40 ; [+2]
      488 GETIMPORT                        R39 K67 [tostring]
      490 CALL                             R39 1 1
      491 SETTABLEKS                       R39 R38 K61 ["Text"]
      493 LOADK                            R39 K68 ["grow text-align-x-left auto-xy"]
      494 SETTABLEKS                       R39 R38 K30 ["tag"]
      496 LOADK                            R40 K69 ["%*--year-text"]
      497 GETTABLEKS                       R42 R0 K32 ["testId"]
      499 NAMECALL                         R40 R40 K60 ["format"]
      501 CALL                             R40 2 1
      502 MOVE                             R39 R40
      503 SETTABLEKS                       R39 R38 K32 ["testId"]
      505 CALL                             R36 2 1
      506 SETTABLEKS                       R36 R35 K47 ["YearText"]
      508 GETUPVAL                         R36 2
      509 GETTABLEKS                       R36 R36 K28 ["createElement"]
      511 GETUPVAL                         R37 9
      512 DUPTABLE                         R38 K55 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      513 LOADN                            R39 4
      514 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      516 GETUPVAL                         R39 10
      517 GETTABLEKS                       R39 R39 K70 ["ChevronSmallRight"]
      519 SETTABLEKS                       R39 R38 K50 ["icon"]
      521 LOADB                            R39 1
      522 SETTABLEKS                       R39 R38 K51 ["isCircular"]
      524 SETTABLEKS                       R18 R38 K52 ["onActivated"]
      526 GETUPVAL                         R39 11
      527 GETTABLEKS                       R39 R39 K57 ["Small"]
      529 SETTABLEKS                       R39 R38 K53 ["size"]
      531 GETUPVAL                         R39 12
      532 GETTABLEKS                       R39 R39 K58 ["Utility"]
      534 SETTABLEKS                       R39 R38 K54 ["variant"]
      536 LOADK                            R40 K71 ["%*--next-month-button"]
      537 GETTABLEKS                       R42 R0 K32 ["testId"]
      539 NAMECALL                         R40 R40 K60 ["format"]
      541 CALL                             R40 2 1
      542 MOVE                             R39 R40
      543 SETTABLEKS                       R39 R38 K32 ["testId"]
      545 CALL                             R36 2 1
      546 SETTABLEKS                       R36 R35 K48 ["NextMonthButton"]
      548 CALL                             R32 3 1
      549 SETTABLEKS                       R32 R31 K38 ["CalendarHeader"]
      551 GETUPVAL                         R32 3
      552 GETTABLEKS                       R32 R32 K8 ["FoundationDateTimePickerTimeVariantEnabled"]
      554 JUMPIFNOT                        R32 ; [+35]
      555 GETTABLEKS                       R33 R0 K72 ["showTimeDropdown"]
      557 JUMPIFNOT                        R33 ; [+31]
      558 GETUPVAL                         R32 2
      559 GETTABLEKS                       R32 R32 K28 ["createElement"]
      561 GETUPVAL                         R33 13
      562 DUPTABLE                         R34 K77 [{"dateTime", "layoutOrder", "onItemChanged", "width", "testId"}]
      563 GETTABLEN                        R35 R4 1
      564 SETTABLEKS                       R35 R34 K73 ["dateTime"]
      566 LOADN                            R35 2
      567 SETTABLEKS                       R35 R34 K74 ["layoutOrder"]
      569 SETTABLEKS                       R27 R34 K75 ["onItemChanged"]
      571 GETIMPORT                        R35 K80 [UDim.new]
      573 LOADN                            R36 1
      574 LOADN                            R37 0
      575 CALL                             R35 2 1
      576 SETTABLEKS                       R35 R34 K76 ["width"]
      578 LOADK                            R36 K81 ["%*--time-dropdown"]
      579 GETTABLEKS                       R38 R0 K32 ["testId"]
      581 NAMECALL                         R36 R36 K60 ["format"]
      583 CALL                             R36 2 1
      584 MOVE                             R35 R36
      585 SETTABLEKS                       R35 R34 K32 ["testId"]
      587 CALL                             R32 2 1
      588 JUMP                             ; [+1]
      589 LOADNIL                          R32
      590 SETTABLEKS                       R32 R31 K39 ["TimeDropdown"]
      592 GETTABLEKS                       R33 R0 K24 ["showStartDateTimeCalendarInput"]
      594 JUMPIFNOT                        R33 ; [+172]
      595 GETUPVAL                         R32 2
      596 GETTABLEKS                       R32 R32 K28 ["createElement"]
      598 GETUPVAL                         R33 8
      599 DUPTABLE                         R34 K82 [{"LayoutOrder", "tag", "testId"}]
      600 GETUPVAL                         R36 3
      601 GETTABLEKS                       R36 R36 K8 ["FoundationDateTimePickerTimeVariantEnabled"]
      603 JUMPIFNOT                        R36 ; [+2]
      604 LOADN                            R35 3
      605 JUMP                             ; [+1]
      606 LOADN                            R35 2
      607 SETTABLEKS                       R35 R34 K29 ["LayoutOrder"]
      609 LOADK                            R35 K83 ["flex-x-fill size-full-0 auto-y row gap-small align-y-center"]
      610 SETTABLEKS                       R35 R34 K30 ["tag"]
      612 LOADK                            R36 K84 ["%*--input"]
      613 GETTABLEKS                       R38 R0 K32 ["testId"]
      615 NAMECALL                         R36 R36 K60 ["format"]
      617 CALL                             R36 2 1
      618 MOVE                             R35 R36
      619 SETTABLEKS                       R35 R34 K32 ["testId"]
      621 DUPTABLE                         R35 K88 [{"StartDateTime", "InputSeparator", "EndDateTime"}]
      622 GETUPVAL                         R36 2
      623 GETTABLEKS                       R36 R36 K28 ["createElement"]
      625 GETUPVAL                         R37 14
      626 DUPTABLE                         R38 K96 [{"hasError", "label", "LayoutOrder", "onChanged", "onFocusLost", "placeholder", "size", "text", "onFocusGained", "testId"}]
      627 LOADB                            R39 0
      628 JUMPIFEQKS                       R9 K13 [""] ; [+10]
      630 GETUPVAL                         R40 4
      631 GETTABLEKS                       R40 R40 K97 ["getDateTimeFromText"]
      633 MOVE                             R41 R9
      634 CALL                             R40 1 1
      635 JUMPIFEQKNIL                     R40 ; [+2]
      637 LOADB                            R39 0 +1
      638 LOADB                            R39 1
      639 SETTABLEKS                       R39 R38 K89 ["hasError"]
      641 LOADK                            R39 K13 [""]
      642 SETTABLEKS                       R39 R38 K90 ["label"]
      644 LOADN                            R39 1
      645 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      647 SETTABLEKS                       R24 R38 K91 ["onChanged"]
      649 SETTABLEKS                       R16 R38 K92 ["onFocusLost"]
      651 LOADK                            R39 K98 ["MM/DD/YYYY"]
      652 SETTABLEKS                       R39 R38 K93 ["placeholder"]
      654 GETUPVAL                         R39 11
      655 GETTABLEKS                       R39 R39 K99 ["Medium"]
      657 SETTABLEKS                       R39 R38 K53 ["size"]
      659 SETTABLEKS                       R9 R38 K94 ["text"]
      661 NEWCLOSURE                       R39 P14
      662 CAPTURE                          VAL R8
      663 SETTABLEKS                       R39 R38 K95 ["onFocusGained"]
      665 LOADK                            R40 K100 ["%*--start-datetime-input"]
      666 GETTABLEKS                       R42 R0 K32 ["testId"]
      668 NAMECALL                         R40 R40 K60 ["format"]
      670 CALL                             R40 2 1
      671 MOVE                             R39 R40
      672 SETTABLEKS                       R39 R38 K32 ["testId"]
      674 CALL                             R36 2 1
      675 SETTABLEKS                       R36 R35 K85 ["StartDateTime"]
      677 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      679 JUMPIFNOT                        R37 ; [+16]
      680 GETUPVAL                         R36 2
      681 GETTABLEKS                       R36 R36 K28 ["createElement"]
      683 GETUPVAL                         R37 6
      684 DUPTABLE                         R38 K101 [{"LayoutOrder", "tag", "Text"}]
      685 LOADN                            R39 2
      686 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      688 LOADK                            R39 K102 ["auto-xy"]
      689 SETTABLEKS                       R39 R38 K30 ["tag"]
      691 LOADK                            R39 K103 ["-"]
      692 SETTABLEKS                       R39 R38 K61 ["Text"]
      694 CALL                             R36 2 1
      695 JUMP                             ; [+1]
      696 LOADNIL                          R36
      697 SETTABLEKS                       R36 R35 K86 ["InputSeparator"]
      699 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      701 JUMPIFNOT                        R37 ; [+60]
      702 GETUPVAL                         R36 2
      703 GETTABLEKS                       R36 R36 K28 ["createElement"]
      705 GETUPVAL                         R37 14
      706 DUPTABLE                         R38 K106 [{"hasError", "isDisabled", "label", "LayoutOrder", "onChanged", "onFocusGained", "onFocusLost", "placeholder", "size", "text", "textBoxRef", "testId"}]
      707 LOADB                            R39 0
      708 JUMPIFEQKS                       R11 K13 [""] ; [+10]
      710 GETUPVAL                         R40 4
      711 GETTABLEKS                       R40 R40 K97 ["getDateTimeFromText"]
      713 MOVE                             R41 R11
      714 CALL                             R40 1 1
      715 JUMPIFEQKNIL                     R40 ; [+2]
      717 LOADB                            R39 0 +1
      718 LOADB                            R39 1
      719 SETTABLEKS                       R39 R38 K89 ["hasError"]
      721 GETTABLEN                        R40 R4 1
      722 NOT                              R39 R40
      723 SETTABLEKS                       R39 R38 K104 ["isDisabled"]
      725 LOADK                            R39 K13 [""]
      726 SETTABLEKS                       R39 R38 K90 ["label"]
      728 LOADN                            R39 3
      729 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      731 SETTABLEKS                       R25 R38 K91 ["onChanged"]
      733 NEWCLOSURE                       R39 P15
      734 CAPTURE                          VAL R8
      735 SETTABLEKS                       R39 R38 K95 ["onFocusGained"]
      737 SETTABLEKS                       R17 R38 K92 ["onFocusLost"]
      739 LOADK                            R39 K98 ["MM/DD/YYYY"]
      740 SETTABLEKS                       R39 R38 K93 ["placeholder"]
      742 GETUPVAL                         R39 11
      743 GETTABLEKS                       R39 R39 K99 ["Medium"]
      745 SETTABLEKS                       R39 R38 K53 ["size"]
      747 SETTABLEKS                       R11 R38 K94 ["text"]
      749 SETTABLEKS                       R6 R38 K105 ["textBoxRef"]
      751 LOADK                            R40 K107 ["%*--end-datetime-input"]
      752 GETTABLEKS                       R42 R0 K32 ["testId"]
      754 NAMECALL                         R40 R40 K60 ["format"]
      756 CALL                             R40 2 1
      757 MOVE                             R39 R40
      758 SETTABLEKS                       R39 R38 K32 ["testId"]
      760 CALL                             R36 2 1
      761 JUMP                             ; [+1]
      762 LOADNIL                          R36
      763 SETTABLEKS                       R36 R35 K87 ["EndDateTime"]
      765 CALL                             R32 3 1
      766 JUMP                             ; [+1]
      767 LOADNIL                          R32
      768 SETTABLEKS                       R32 R31 K40 ["CalendarInputContainer"]
      770 GETUPVAL                         R32 2
      771 GETTABLEKS                       R32 R32 K28 ["createElement"]
      773 GETUPVAL                         R33 8
      774 DUPTABLE                         R34 K43 [{"LayoutOrder", "tag"}]
      775 GETUPVAL                         R36 3
      776 GETTABLEKS                       R36 R36 K8 ["FoundationDateTimePickerTimeVariantEnabled"]
      778 JUMPIFNOT                        R36 ; [+2]
      779 LOADN                            R35 4
      780 JUMP                             ; [+1]
      781 LOADN                            R35 3
      782 SETTABLEKS                       R35 R34 K29 ["LayoutOrder"]
      784 LOADK                            R35 K108 ["size-full-0 auto-y"]
      785 SETTABLEKS                       R35 R34 K30 ["tag"]
      787 MOVE                             R35 R26
      788 CALL                             R32 3 1
      789 SETTABLEKS                       R32 R31 K41 ["WeekAndDates"]
      791 CALL                             R28 3 -1
      792 RETURN                           R28 -1

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
