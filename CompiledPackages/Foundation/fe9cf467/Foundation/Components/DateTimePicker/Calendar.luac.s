PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["showEndDateTimeCalendarInput"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["endDateTimeInput"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K2 ["current"]
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K2 ["current"]
       15 GETTABLEKS                       R0 R1 K3 ["focus"]
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDateTimeFromText"]
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
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 2
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R2 R1 ; [+29]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R3 R4 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       30 JUMPIFNOT                        R3 ; [+9]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K3 ["formatLocalTime"]
       34 GETUPVAL                         R5 5
       35 GETTABLEKS                       R4 R5 K4 ["defaultDates"]
       37 GETTABLEN                        R3 R4 1
       38 CALL                             R2 1 1
       39 JUMP                             ; [+13]
       40 GETUPVAL                         R4 5
       41 GETTABLEKS                       R3 R4 K4 ["defaultDates"]
       43 GETTABLEN                        R2 R3 1
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R4 R5 K5 ["DATE_COMPOSITE_TOKEN"]
       47 GETUPVAL                         R6 6
       48 GETTABLEKS                       R5 R6 K6 ["RobloxLocaleId"]
       50 NAMECALL                         R2 R2 K7 ["FormatLocalTime"]
       52 CALL                             R2 3 1
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDateTimeFromText"]
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
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 1
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R1 R2 ; [+27]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R3 R4 K2 ["FoundationDateTimePickerTimeVariantEnabled"]
       30 JUMPIFNOT                        R3 ; [+9]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K3 ["formatLocalTime"]
       34 GETUPVAL                         R5 5
       35 GETTABLEKS                       R4 R5 K4 ["defaultDates"]
       37 GETTABLEN                        R3 R4 2
       38 CALL                             R2 1 1
       39 JUMP                             ; [+11]
       40 GETUPVAL                         R3 2
       41 GETTABLEN                        R2 R3 2
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R4 R5 K5 ["DATE_COMPOSITE_TOKEN"]
       45 GETUPVAL                         R6 6
       46 GETTABLEKS                       R5 R6 K6 ["RobloxLocaleId"]
       48 NAMECALL                         R2 R2 K7 ["FormatLocalTime"]
       50 CALL                             R2 3 1
       51 CALL                             R1 1 0
       52 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getNextMonthInfo"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["month"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["year"]
        9 CALL                             R0 2 2
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K3 [{"month", "year"}]
       12 SETTABLEKS                       R0 R3 K1 ["month"]
       14 SETTABLEKS                       R1 R3 K2 ["year"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getPrevMonthInfo"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["month"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["year"]
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
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R8 R9 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
        8 JUMPIFNOT                        R8 ; [+8]
        9 GETUPVAL                         R9 1
       10 GETTABLEN                        R8 R9 1
       11 NAMECALL                         R8 R8 K4 ["ToLocalTime"]
       13 CALL                             R8 1 1
       14 GETTABLEKS                       R7 R8 K5 ["Hour"]
       16 JUMP                             ; [+1]
       17 LOADN                            R7 0
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R9 R10 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
       21 JUMPIFNOT                        R9 ; [+8]
       22 GETUPVAL                         R10 1
       23 GETTABLEN                        R9 R10 1
       24 NAMECALL                         R9 R9 K4 ["ToLocalTime"]
       26 CALL                             R9 1 1
       27 GETTABLEKS                       R8 R9 K6 ["Minute"]
       29 JUMP                             ; [+1]
       30 LOADN                            R8 0
       31 CALL                             R3 5 1
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R4 R5 K7 ["showStartDateTimeCalendarInput"]
       35 JUMPIFNOT                        R4 ; [+137]
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R4 R5 K8 ["showEndDateTimeCalendarInput"]
       39 JUMPIFNOT                        R4 ; [+104]
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R4 R5 K9 ["startDateTimeInput"]
       43 JUMPIFNOT                        R4 ; [+31]
       44 GETUPVAL                         R4 4
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
       48 JUMPIFNOT                        R6 ; [+6]
       49 GETUPVAL                         R6 5
       50 GETTABLEKS                       R5 R6 K10 ["formatLocalTime"]
       52 MOVE                             R6 R3
       53 CALL                             R5 1 1
       54 JUMP                             ; [+9]
       55 GETUPVAL                         R8 5
       56 GETTABLEKS                       R7 R8 K11 ["DATE_COMPOSITE_TOKEN"]
       58 GETUPVAL                         R9 6
       59 GETTABLEKS                       R8 R9 K12 ["RobloxLocaleId"]
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
       75 GETUPVAL                         R5 3
       76 GETTABLEKS                       R4 R5 K14 ["endDateTimeInput"]
       78 JUMPIFNOT                        R4 ; [+31]
       79 GETUPVAL                         R4 8
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R6 R7 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
       83 JUMPIFNOT                        R6 ; [+6]
       84 GETUPVAL                         R6 5
       85 GETTABLEKS                       R5 R6 K10 ["formatLocalTime"]
       87 MOVE                             R6 R3
       88 CALL                             R5 1 1
       89 JUMP                             ; [+9]
       90 GETUPVAL                         R8 5
       91 GETTABLEKS                       R7 R8 K11 ["DATE_COMPOSITE_TOKEN"]
       93 GETUPVAL                         R9 6
       94 GETTABLEKS                       R8 R9 K12 ["RobloxLocaleId"]
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
      111 GETUPVAL                         R7 0
      112 GETTABLEKS                       R6 R7 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
      114 JUMPIFNOT                        R6 ; [+6]
      115 GETUPVAL                         R6 5
      116 GETTABLEKS                       R5 R6 K10 ["formatLocalTime"]
      118 MOVE                             R6 R3
      119 CALL                             R5 1 1
      120 JUMP                             ; [+9]
      121 GETUPVAL                         R8 5
      122 GETTABLEKS                       R7 R8 K11 ["DATE_COMPOSITE_TOKEN"]
      124 GETUPVAL                         R9 6
      125 GETTABLEKS                       R8 R9 K12 ["RobloxLocaleId"]
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
      145 GETUPVAL                         R7 0
      146 GETTABLEKS                       R6 R7 K3 ["FoundationDateTimePickerTimeVariantEnabled"]
      148 JUMPIFNOT                        R6 ; [+6]
      149 GETUPVAL                         R6 5
      150 GETTABLEKS                       R5 R6 K10 ["formatLocalTime"]
      152 MOVE                             R6 R3
      153 CALL                             R5 1 1
      154 JUMP                             ; [+9]
      155 GETUPVAL                         R8 5
      156 GETTABLEKS                       R7 R8 K11 ["DATE_COMPOSITE_TOKEN"]
      158 GETUPVAL                         R9 6
      159 GETTABLEKS                       R8 R9 K12 ["RobloxLocaleId"]
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
      187 GETUPVAL                         R5 2
      188 GETTABLEKS                       R4 R5 K20 ["onSelectedDateChanged"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["showEndDateTimeCalendarInput"]
        3 JUMPIFNOT                        R1 ; [+20]
        4 GETUPVAL                         R2 1
        5 GETTABLEN                        R1 R2 1
        6 JUMPIFNOT                        R1 ; [+17]
        7 GETUPVAL                         R2 1
        8 GETTABLEN                        R1 R2 2
        9 JUMPIFNOT                        R1 ; [+14]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K1 ["isDateWithinRange"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["selectableDateRange"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["isDateWithinRange"]
        7 MOVE                             R2 R0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["selectableDateRange"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+2]
       13 LOADB                            R1 0
       14 RETURN                           R1 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K2 ["showEndDateTimeCalendarInput"]
       18 JUMPIFNOT                        R1 ; [+41]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R1 R2 K3 ["endDateTimeInput"]
       22 JUMPIFNOT                        R1 ; [+15]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K4 ["roundToStartOfDay"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 1
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R2 R3 K4 ["roundToStartOfDay"]
       31 GETUPVAL                         R4 3
       32 GETTABLEN                        R3 R4 1
       33 CALL                             R2 1 1
       34 JUMPIFNOTLT                      R1 R2 ; [+3]
       36 LOADB                            R1 0
       37 RETURN                           R1 1
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R1 R2 K5 ["startDateTimeInput"]
       41 JUMPIFNOT                        R1 ; [+18]
       42 GETUPVAL                         R2 3
       43 GETTABLEN                        R1 R2 2
       44 JUMPIFNOT                        R1 ; [+15]
       45 GETUPVAL                         R2 1
       46 GETTABLEKS                       R1 R2 K4 ["roundToStartOfDay"]
       48 MOVE                             R2 R0
       49 CALL                             R1 1 1
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R2 R3 K4 ["roundToStartOfDay"]
       53 GETUPVAL                         R4 3
       54 GETTABLEN                        R3 R4 2
       55 CALL                             R2 1 1
       56 JUMPIFNOTLT                      R2 R1 ; [+3]
       58 LOADB                            R1 0
       59 RETURN                           R1 1
       60 LOADB                            R1 1
       61 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["getDateTimeFromText"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+83]
       14 LOADNIL                          R2
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K2 ["FoundationDateTimePickerDualBugFix"]
       18 JUMPIFNOT                        R3 ; [+20]
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R3 R4 K3 ["showEndDateTimeCalendarInput"]
       22 JUMPIFNOT                        R3 ; [+9]
       23 NEWTABLE                         R3 0 2
       25 MOVE                             R4 R1
       26 GETUPVAL                         R6 5
       27 GETTABLEN                        R5 R6 2
       28 SETLIST                          R3 R4 2 [1]
       30 MOVE                             R2 R3
       31 JUMP                             ; [+43]
       32 NEWTABLE                         R3 0 1
       34 MOVE                             R4 R1
       35 SETLIST                          R3 R4 1 [1]
       37 MOVE                             R2 R3
       38 JUMP                             ; [+36]
       39 GETUPVAL                         R4 4
       40 GETTABLEKS                       R3 R4 K3 ["showEndDateTimeCalendarInput"]
       42 JUMPIFNOT                        R3 ; [+26]
       43 GETUPVAL                         R4 5
       44 GETTABLEN                        R3 R4 2
       45 JUMPIFNOT                        R3 ; [+14]
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R3 R4 K4 ["roundToStartOfDay"]
       49 MOVE                             R4 R1
       50 CALL                             R3 1 1
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R4 R5 K4 ["roundToStartOfDay"]
       54 GETUPVAL                         R6 5
       55 GETTABLEN                        R5 R6 2
       56 CALL                             R4 1 1
       57 JUMPIFNOTLT                      R4 R3 ; [+2]
       59 RETURN                           R0 0
       60 NEWTABLE                         R3 0 2
       62 MOVE                             R4 R1
       63 GETUPVAL                         R6 5
       64 GETTABLEN                        R5 R6 2
       65 SETLIST                          R3 R4 2 [1]
       67 MOVE                             R2 R3
       68 JUMP                             ; [+6]
       69 NEWTABLE                         R3 0 1
       71 MOVE                             R4 R1
       72 SETLIST                          R3 R4 1 [1]
       74 MOVE                             R2 R3
       75 NAMECALL                         R3 R1 K5 ["ToLocalTime"]
       77 CALL                             R3 1 1
       78 GETUPVAL                         R4 6
       79 DUPTABLE                         R5 K8 [{"month", "year"}]
       80 GETTABLEKS                       R6 R3 K9 ["Month"]
       82 SETTABLEKS                       R6 R5 K6 ["month"]
       84 GETTABLEKS                       R6 R3 K10 ["Year"]
       86 SETTABLEKS                       R6 R5 K7 ["year"]
       88 CALL                             R4 1 0
       89 GETUPVAL                         R4 7
       90 MOVE                             R5 R2
       91 CALL                             R4 1 0
       92 GETUPVAL                         R5 4
       93 GETTABLEKS                       R4 R5 K11 ["onSelectedDateChanged"]
       95 MOVE                             R5 R2
       96 CALL                             R4 1 0
       97 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onSelectedDateChanged"]
        3 NEWTABLE                         R2 0 1
        5 GETTABLEN                        R3 R0 1
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 0
        9 NEWTABLE                         R1 0 1
       11 GETTABLEN                        R2 R0 1
       12 SETLIST                          R1 R2 1 [1]
       14 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["getDateTimeFromText"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+47]
       14 GETUPVAL                         R3 3
       15 GETTABLEN                        R2 R3 1
       16 JUMPIFNOT                        R2 ; [+14]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K2 ["roundToStartOfDay"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K2 ["roundToStartOfDay"]
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
       55 GETUPVAL                         R5 6
       56 GETTABLEKS                       R4 R5 K9 ["onSelectedDateChanged"]
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
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["month"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["year"]
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
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["createElement"]
        6 LOADK                            R4 K1 ["UIGridLayout"]
        7 DUPTABLE                         R5 K10 [{"CellPadding", "CellSize", "FillDirection", "FillDirectionMaxCells", "HorizontalAlignment", "key", "SortOrder", "VerticalAlignment"}]
        8 GETIMPORT                        R6 K13 [UDim2.fromOffset]
       10 GETUPVAL                         R9 1
       11 GETTABLEKS                       R8 R9 K14 ["Padding"]
       13 GETTABLEKS                       R7 R8 K15 ["None"]
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R9 R10 K14 ["Padding"]
       18 GETTABLEKS                       R8 R9 K15 ["None"]
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
       60 GETUPVAL                         R5 3
       61 GETTABLEKS                       R2 R5 K29 ["weekdays"]
       63 LOADNIL                          R3
       64 LOADNIL                          R4
       65 FORGPREP                         R2
       66 MOVE                             R8 R0
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R9 R10 K0 ["createElement"]
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
       89 GETUPVAL                         R3 3
       90 GETTABLEKS                       R2 R3 K35 ["getFirstDayOfWeek"]
       92 GETUPVAL                         R4 5
       93 GETTABLEKS                       R3 R4 K36 ["month"]
       95 GETUPVAL                         R5 5
       96 GETTABLEKS                       R4 R5 K37 ["year"]
       98 CALL                             R2 2 1
       99 GETUPVAL                         R4 3
      100 GETTABLEKS                       R3 R4 K38 ["getPrevMonthInfo"]
      102 GETUPVAL                         R5 5
      103 GETTABLEKS                       R4 R5 K36 ["month"]
      105 GETUPVAL                         R6 5
      106 GETTABLEKS                       R5 R6 K37 ["year"]
      108 CALL                             R3 2 2
      109 GETUPVAL                         R6 3
      110 GETTABLEKS                       R5 R6 K39 ["getDaysInMonth"]
      112 GETUPVAL                         R7 3
      113 GETTABLEKS                       R6 R7 K38 ["getPrevMonthInfo"]
      115 GETUPVAL                         R8 5
      116 GETTABLEKS                       R7 R8 K36 ["month"]
      118 GETUPVAL                         R9 5
      119 GETTABLEKS                       R8 R9 K37 ["year"]
      121 CALL                             R6 2 -1
      122 CALL                             R5 -1 1
      123 JUMPIFNOTEQKN                    R2 K40 [0] ; [+3]
      125 LOADN                            R6 7
      126 JUMP                             ; [+1]
      127 MOVE                             R6 R2
      128 LOADN                            R9 1
      129 GETUPVAL                         R11 6
      130 GETTABLEKS                       R10 R11 K41 ["FoundationFixedHeightDateTimePicker"]
      132 JUMPIFNOT                        R10 ; [+2]
      133 MOVE                             R7 R6
      134 JUMP                             ; [+1]
      135 MOVE                             R7 R2
      136 LOADN                            R8 1
      137 FORNPREP                         R7
      138 GETUPVAL                         R14 6
      139 GETTABLEKS                       R13 R14 K41 ["FoundationFixedHeightDateTimePicker"]
      141 JUMPIFNOT                        R13 ; [+2]
      142 MOVE                             R12 R6
      143 JUMP                             ; [+1]
      144 MOVE                             R12 R2
      145 SUB                              R11 R5 R12
      146 ADD                              R10 R11 R9
      147 GETIMPORT                        R11 K44 [DateTime.fromLocalTime]
      149 MOVE                             R12 R4
      150 MOVE                             R13 R3
      151 MOVE                             R14 R10
      152 CALL                             R11 3 1
      153 MOVE                             R13 R0
      154 GETUPVAL                         R15 0
      155 GETTABLEKS                       R14 R15 K0 ["createElement"]
      157 GETUPVAL                         R15 7
      158 DUPTABLE                         R16 K50 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      159 GETUPVAL                         R17 8
      160 MOVE                             R18 R11
      161 CALL                             R17 1 1
      162 SETTABLEKS                       R17 R16 K45 ["highlight"]
      164 GETUPVAL                         R17 9
      165 MOVE                             R18 R11
      166 CALL                             R17 1 1
      167 SETTABLEKS                       R17 R16 K46 ["isSelectable"]
      169 GETUPVAL                         R17 10
      170 MOVE                             R18 R11
      171 CALL                             R17 1 1
      172 SETTABLEKS                       R17 R16 K47 ["isSelected"]
      174 LOADK                            R18 K51 ["prev-month-day-"]
      175 MOVE                             R19 R10
      176 CONCAT                           R17 R18 R19
      177 SETTABLEKS                       R17 R16 K7 ["key"]
      179 SETTABLEKS                       R1 R16 K23 ["LayoutOrder"]
      181 NEWCLOSURE                       R17 P0
      182 CAPTURE                          UPVAL U11
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R4
      186 SETTABLEKS                       R17 R16 K48 ["onActivated"]
      188 FASTCALL1                        TOSTRING R10 ; [+3]
      189 MOVE                             R18 R10
      190 GETIMPORT                        R17 K53 [tostring]
      192 CALL                             R17 1 1
      193 SETTABLEKS                       R17 R16 K30 ["Text"]
      195 LOADK                            R18 K54 ["%*--prev-month-calendar-day-%*"]
      196 GETUPVAL                         R21 12
      197 GETTABLEKS                       R20 R21 K49 ["testId"]
      199 MOVE                             R21 R10
      200 NAMECALL                         R18 R18 K55 ["format"]
      202 CALL                             R18 3 1
      203 MOVE                             R17 R18
      204 SETTABLEKS                       R17 R16 K49 ["testId"]
      206 CALL                             R14 2 -1
      207 FASTCALL                         TABLE_INSERT ; [+2]
      208 GETIMPORT                        R12 K28 [table.insert]
      210 CALL                             R12 -1 0
      211 ADDK                             R1 R1 K34 [1]
      212 FORNLOOP                         R7
      213 LOADN                            R9 1
      214 GETUPVAL                         R11 3
      215 GETTABLEKS                       R10 R11 K39 ["getDaysInMonth"]
      217 GETUPVAL                         R12 5
      218 GETTABLEKS                       R11 R12 K36 ["month"]
      220 GETUPVAL                         R13 5
      221 GETTABLEKS                       R12 R13 K37 ["year"]
      223 CALL                             R10 2 1
      224 MOVE                             R7 R10
      225 LOADN                            R8 1
      226 FORNPREP                         R7
      227 GETUPVAL                         R10 9
      228 GETIMPORT                        R11 K44 [DateTime.fromLocalTime]
      230 GETUPVAL                         R13 5
      231 GETTABLEKS                       R12 R13 K37 ["year"]
      233 GETUPVAL                         R14 5
      234 GETTABLEKS                       R13 R14 K36 ["month"]
      236 MOVE                             R14 R9
      237 CALL                             R11 3 -1
      238 CALL                             R10 -1 1
      239 GETUPVAL                         R11 10
      240 GETIMPORT                        R12 K44 [DateTime.fromLocalTime]
      242 GETUPVAL                         R14 5
      243 GETTABLEKS                       R13 R14 K37 ["year"]
      245 GETUPVAL                         R15 5
      246 GETTABLEKS                       R14 R15 K36 ["month"]
      248 MOVE                             R15 R9
      249 CALL                             R12 3 -1
      250 CALL                             R11 -1 1
      251 MOVE                             R13 R0
      252 GETUPVAL                         R15 0
      253 GETTABLEKS                       R14 R15 K0 ["createElement"]
      255 GETUPVAL                         R15 7
      256 DUPTABLE                         R16 K57 [{"emphasizeText", "highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      257 MOVE                             R17 R10
      258 JUMPIFNOT                        R17 ; [+1]
      259 NOT                              R17 R11
      260 SETTABLEKS                       R17 R16 K56 ["emphasizeText"]
      262 GETUPVAL                         R17 8
      263 GETIMPORT                        R18 K44 [DateTime.fromLocalTime]
      265 GETUPVAL                         R20 5
      266 GETTABLEKS                       R19 R20 K37 ["year"]
      268 GETUPVAL                         R21 5
      269 GETTABLEKS                       R20 R21 K36 ["month"]
      271 MOVE                             R21 R9
      272 CALL                             R18 3 -1
      273 CALL                             R17 -1 1
      274 SETTABLEKS                       R17 R16 K45 ["highlight"]
      276 SETTABLEKS                       R10 R16 K46 ["isSelectable"]
      278 SETTABLEKS                       R11 R16 K47 ["isSelected"]
      280 LOADK                            R18 K58 ["current-month-day-"]
      281 MOVE                             R19 R9
      282 CONCAT                           R17 R18 R19
      283 SETTABLEKS                       R17 R16 K7 ["key"]
      285 SETTABLEKS                       R1 R16 K23 ["LayoutOrder"]
      287 NEWCLOSURE                       R17 P1
      288 CAPTURE                          UPVAL U11
      289 CAPTURE                          VAL R9
      290 CAPTURE                          UPVAL U5
      291 SETTABLEKS                       R17 R16 K48 ["onActivated"]
      293 FASTCALL1                        TOSTRING R9 ; [+3]
      294 MOVE                             R18 R9
      295 GETIMPORT                        R17 K53 [tostring]
      297 CALL                             R17 1 1
      298 SETTABLEKS                       R17 R16 K30 ["Text"]
      300 LOADK                            R18 K59 ["%*--current-month-calendar-day-%*"]
      301 GETUPVAL                         R21 12
      302 GETTABLEKS                       R20 R21 K49 ["testId"]
      304 MOVE                             R21 R9
      305 NAMECALL                         R18 R18 K55 ["format"]
      307 CALL                             R18 3 1
      308 MOVE                             R17 R18
      309 SETTABLEKS                       R17 R16 K49 ["testId"]
      311 CALL                             R14 2 -1
      312 FASTCALL                         TABLE_INSERT ; [+2]
      313 GETIMPORT                        R12 K28 [table.insert]
      315 CALL                             R12 -1 0
      316 ADDK                             R1 R1 K34 [1]
      317 FORNLOOP                         R7
      318 GETUPVAL                         R8 3
      319 GETTABLEKS                       R7 R8 K60 ["getLastDayOfWeek"]
      321 GETUPVAL                         R9 5
      322 GETTABLEKS                       R8 R9 K36 ["month"]
      324 GETUPVAL                         R10 5
      325 GETTABLEKS                       R9 R10 K37 ["year"]
      327 CALL                             R7 2 1
      328 GETUPVAL                         R9 3
      329 GETTABLEKS                       R8 R9 K61 ["getNextMonthInfo"]
      331 GETUPVAL                         R10 5
      332 GETTABLEKS                       R9 R10 K36 ["month"]
      334 GETUPVAL                         R11 5
      335 GETTABLEKS                       R10 R11 K37 ["year"]
      337 CALL                             R8 2 2
      338 ADDK                             R10 R7 K34 [1]
      339 SUBRK                            R6 R16 K10 [{"CellPadding", "CellSize", "FillDirection", "FillDirectionMaxCells", "HorizontalAlignment", "key", "SortOrder", "VerticalAlignment"}]
      340 GETUPVAL                         R11 6
      341 GETTABLEKS                       R10 R11 K41 ["FoundationFixedHeightDateTimePicker"]
      343 JUMPIFNOT                        R10 ; [+13]
      344 JUMPIFNOTEQKN                    R6 K40 [0] ; [+3]
      346 LOADN                            R6 7
      347 JUMP                             ; [0]
      348 LENGTH                           R11 R0
      349 ADD                              R10 R6 R11
      350 LOADN                            R11 50
      351 JUMPIFNOTLT                      R10 R11 ; [+5]
      353 LENGTH                           R12 R0
      354 SUBRK                            R11 R62 K12 ["fromOffset"]
      355 SUB                              R10 R11 R6
      356 ADD                              R6 R6 R10
      357 LOADN                            R12 1
      358 MOVE                             R10 R6
      359 LOADN                            R11 1
      360 FORNPREP                         R10
      361 GETIMPORT                        R13 K44 [DateTime.fromLocalTime]
      363 MOVE                             R14 R9
      364 MOVE                             R15 R8
      365 MOVE                             R16 R12
      366 CALL                             R13 3 1
      367 MOVE                             R15 R0
      368 GETUPVAL                         R17 0
      369 GETTABLEKS                       R16 R17 K0 ["createElement"]
      371 GETUPVAL                         R17 7
      372 DUPTABLE                         R18 K50 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      373 GETUPVAL                         R19 8
      374 MOVE                             R20 R13
      375 CALL                             R19 1 1
      376 SETTABLEKS                       R19 R18 K45 ["highlight"]
      378 GETUPVAL                         R19 9
      379 MOVE                             R20 R13
      380 CALL                             R19 1 1
      381 SETTABLEKS                       R19 R18 K46 ["isSelectable"]
      383 GETUPVAL                         R19 10
      384 MOVE                             R20 R13
      385 CALL                             R19 1 1
      386 SETTABLEKS                       R19 R18 K47 ["isSelected"]
      388 LOADK                            R20 K63 ["next-month-day-"]
      389 MOVE                             R21 R12
      390 CONCAT                           R19 R20 R21
      391 SETTABLEKS                       R19 R18 K7 ["key"]
      393 SETTABLEKS                       R1 R18 K23 ["LayoutOrder"]
      395 NEWCLOSURE                       R19 P2
      396 CAPTURE                          UPVAL U11
      397 CAPTURE                          VAL R12
      398 CAPTURE                          VAL R8
      399 CAPTURE                          VAL R9
      400 SETTABLEKS                       R19 R18 K48 ["onActivated"]
      402 FASTCALL1                        TOSTRING R12 ; [+3]
      403 MOVE                             R20 R12
      404 GETIMPORT                        R19 K53 [tostring]
      406 CALL                             R19 1 1
      407 SETTABLEKS                       R19 R18 K30 ["Text"]
      409 LOADK                            R20 K64 ["%*--next-month-calendar-day-%*"]
      410 GETUPVAL                         R23 12
      411 GETTABLEKS                       R22 R23 K49 ["testId"]
      413 MOVE                             R23 R12
      414 NAMECALL                         R20 R20 K55 ["format"]
      416 CALL                             R20 3 1
      417 MOVE                             R19 R20
      418 SETTABLEKS                       R19 R18 K49 ["testId"]
      420 CALL                             R16 2 -1
      421 FASTCALL                         TABLE_INSERT ; [+2]
      422 GETIMPORT                        R14 K28 [table.insert]
      424 CALL                             R14 -1 0
      425 ADDK                             R1 R1 K34 [1]
      426 FORNLOOP                         R10
      427 RETURN                           R0 1

PROTO_17:
        0 GETIMPORT                        R1 K2 [DateTime.fromUnixTimestamp]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R3 K5 [os.date]
        6 LOADK                            R4 K6 ["*t"]
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R2 R3 K7 ["isdst"]
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
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R3 R4 K19 ["onSelectedDateChanged"]
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
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K0 ["useRef"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K1 ["useState"]
       13 GETTABLEKS                       R5 R0 K2 ["defaultDates"]
       15 CALL                             R4 1 2
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K0 ["useRef"]
       19 LOADNIL                          R7
       20 CALL                             R6 1 1
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R7 R8 K1 ["useState"]
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
       43 GETUPVAL                         R10 2
       44 GETTABLEKS                       R9 R10 K7 ["useEffect"]
       46 NEWCLOSURE                       R10 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R6
       50 NEWTABLE                         R11 0 1
       52 MOVE                             R12 R7
       53 SETLIST                          R11 R12 1 [1]
       55 CALL                             R9 2 0
       56 GETUPVAL                         R10 2
       57 GETTABLEKS                       R9 R10 K1 ["useState"]
       59 GETUPVAL                         R12 3
       60 GETTABLEKS                       R11 R12 K8 ["FoundationDateTimePickerTimeVariantEnabled"]
       62 JUMPIFNOT                        R11 ; [+8]
       63 GETUPVAL                         R11 4
       64 GETTABLEKS                       R10 R11 K9 ["formatLocalTime"]
       66 GETTABLEKS                       R12 R0 K2 ["defaultDates"]
       68 GETTABLEN                        R11 R12 1
       69 CALL                             R10 1 1
       70 JUMP                             ; [+12]
       71 GETTABLEKS                       R11 R0 K2 ["defaultDates"]
       73 GETTABLEN                        R10 R11 1
       74 GETUPVAL                         R13 4
       75 GETTABLEKS                       R12 R13 K10 ["DATE_COMPOSITE_TOKEN"]
       77 GETUPVAL                         R14 5
       78 GETTABLEKS                       R13 R14 K11 ["RobloxLocaleId"]
       80 NAMECALL                         R10 R10 K12 ["FormatLocalTime"]
       82 CALL                             R10 3 1
       83 CALL                             R9 1 2
       84 GETUPVAL                         R12 2
       85 GETTABLEKS                       R11 R12 K1 ["useState"]
       87 GETTABLEKS                       R14 R0 K2 ["defaultDates"]
       89 GETTABLEN                        R13 R14 2
       90 JUMPIFNOT                        R13 ; [+25]
       91 GETUPVAL                         R14 3
       92 GETTABLEKS                       R13 R14 K8 ["FoundationDateTimePickerTimeVariantEnabled"]
       94 JUMPIFNOT                        R13 ; [+8]
       95 GETUPVAL                         R13 4
       96 GETTABLEKS                       R12 R13 K9 ["formatLocalTime"]
       98 GETTABLEKS                       R14 R0 K2 ["defaultDates"]
      100 GETTABLEN                        R13 R14 2
      101 CALL                             R12 1 1
      102 JUMP                             ; [+14]
      103 GETTABLEKS                       R13 R0 K2 ["defaultDates"]
      105 GETTABLEN                        R12 R13 2
      106 GETUPVAL                         R15 4
      107 GETTABLEKS                       R14 R15 K10 ["DATE_COMPOSITE_TOKEN"]
      109 GETUPVAL                         R16 5
      110 GETTABLEKS                       R15 R16 K11 ["RobloxLocaleId"]
      112 NAMECALL                         R12 R12 K12 ["FormatLocalTime"]
      114 CALL                             R12 3 1
      115 JUMP                             ; [+1]
      116 LOADK                            R12 K13 [""]
      117 CALL                             R11 1 2
      118 GETUPVAL                         R14 2
      119 GETTABLEKS                       R13 R14 K7 ["useEffect"]
      121 NEWCLOSURE                       R14 P1
      122 CAPTURE                          VAL R3
      123 NEWTABLE                         R15 0 0
      125 CALL                             R13 2 0
      126 GETUPVAL                         R14 2
      127 GETTABLEKS                       R13 R14 K1 ["useState"]
      129 DUPTABLE                         R14 K16 [{"month", "year"}]
      130 GETTABLEKS                       R17 R0 K2 ["defaultDates"]
      132 GETTABLEN                        R16 R17 1
      133 NAMECALL                         R16 R16 K17 ["ToLocalTime"]
      135 CALL                             R16 1 1
      136 GETTABLEKS                       R15 R16 K18 ["Month"]
      138 SETTABLEKS                       R15 R14 K14 ["month"]
      140 GETTABLEKS                       R17 R0 K2 ["defaultDates"]
      142 GETTABLEN                        R16 R17 1
      143 NAMECALL                         R16 R16 K17 ["ToLocalTime"]
      145 CALL                             R16 1 1
      146 GETTABLEKS                       R15 R16 K19 ["Year"]
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
      183 GETUPVAL                         R19 2
      184 GETTABLEKS                       R18 R19 K23 ["useCallback"]
      186 NEWCLOSURE                       R19 P4
      187 CAPTURE                          UPVAL U4
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R14
      190 NEWTABLE                         R20 0 1
      192 MOVE                             R21 R13
      193 SETLIST                          R20 R21 1 [1]
      195 CALL                             R18 2 1
      196 GETUPVAL                         R20 2
      197 GETTABLEKS                       R19 R20 K23 ["useCallback"]
      199 NEWCLOSURE                       R20 P5
      200 CAPTURE                          UPVAL U4
      201 CAPTURE                          VAL R13
      202 CAPTURE                          VAL R14
      203 NEWTABLE                         R21 0 1
      205 MOVE                             R22 R13
      206 SETLIST                          R21 R22 1 [1]
      208 CALL                             R19 2 1
      209 GETUPVAL                         R21 2
      210 GETTABLEKS                       R20 R21 K23 ["useCallback"]
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
      236 GETUPVAL                         R22 2
      237 GETTABLEKS                       R21 R22 K23 ["useCallback"]
      239 NEWCLOSURE                       R22 P7
      240 CAPTURE                          VAL R15
      241 NEWTABLE                         R23 0 1
      243 MOVE                             R24 R15
      244 SETLIST                          R23 R24 1 [1]
      246 CALL                             R21 2 1
      247 GETUPVAL                         R23 2
      248 GETTABLEKS                       R22 R23 K23 ["useCallback"]
      250 NEWCLOSURE                       R23 P8
      251 CAPTURE                          VAL R0
      252 CAPTURE                          VAL R4
      253 CAPTURE                          UPVAL U4
      254 NEWTABLE                         R24 0 2
      256 GETTABLEKS                       R25 R0 K3 ["showEndDateTimeCalendarInput"]
      258 MOVE                             R26 R4
      259 SETLIST                          R24 R25 2 [1]
      261 CALL                             R22 2 1
      262 GETUPVAL                         R24 2
      263 GETTABLEKS                       R23 R24 K23 ["useCallback"]
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
      281 GETUPVAL                         R25 2
      282 GETTABLEKS                       R24 R25 K23 ["useCallback"]
      284 NEWCLOSURE                       R25 P10
      285 CAPTURE                          VAL R3
      286 CAPTURE                          VAL R10
      287 CAPTURE                          UPVAL U4
      288 CAPTURE                          UPVAL U3
      289 CAPTURE                          VAL R0
      290 CAPTURE                          VAL R4
      291 CAPTURE                          VAL R14
      292 CAPTURE                          VAL R5
      293 NEWTABLE                         R26 0 5
      295 GETTABLEKS                       R27 R0 K26 ["onSelectedDateChanged"]
      297 GETTABLEKS                       R28 R0 K3 ["showEndDateTimeCalendarInput"]
      299 MOVE                             R29 R23
      300 MOVE                             R30 R4
      301 MOVE                             R31 R3
      302 SETLIST                          R26 R27 5 [1]
      304 CALL                             R24 2 1
      305 GETUPVAL                         R26 2
      306 GETTABLEKS                       R25 R26 K23 ["useCallback"]
      308 NEWCLOSURE                       R26 P11
      309 CAPTURE                          VAL R3
      310 CAPTURE                          VAL R12
      311 CAPTURE                          UPVAL U4
      312 CAPTURE                          VAL R4
      313 CAPTURE                          VAL R14
      314 CAPTURE                          VAL R5
      315 CAPTURE                          VAL R0
      316 NEWTABLE                         R27 0 4
      318 GETTABLEKS                       R28 R0 K26 ["onSelectedDateChanged"]
      320 MOVE                             R29 R4
      321 MOVE                             R30 R23
      322 MOVE                             R31 R3
      323 SETLIST                          R27 R28 4 [1]
      325 CALL                             R25 2 1
      326 GETUPVAL                         R27 2
      327 GETTABLEKS                       R26 R27 K27 ["useMemo"]
      329 NEWCLOSURE                       R27 P12
      330 CAPTURE                          UPVAL U2
      331 CAPTURE                          VAL R1
      332 CAPTURE                          VAL R2
      333 CAPTURE                          UPVAL U4
      334 CAPTURE                          UPVAL U6
      335 CAPTURE                          VAL R13
      336 CAPTURE                          UPVAL U3
      337 CAPTURE                          UPVAL U7
      338 CAPTURE                          VAL R22
      339 CAPTURE                          VAL R23
      340 CAPTURE                          VAL R21
      341 CAPTURE                          VAL R20
      342 CAPTURE                          VAL R0
      343 NEWTABLE                         R28 0 8
      345 MOVE                             R29 R21
      346 MOVE                             R30 R22
      347 MOVE                             R31 R23
      348 MOVE                             R32 R13
      349 MOVE                             R33 R4
      350 MOVE                             R34 R20
      351 GETTABLEKS                       R35 R0 K25 ["selectableDateRange"]
      353 GETTABLEKS                       R36 R0 K3 ["showEndDateTimeCalendarInput"]
      355 SETLIST                          R28 R29 8 [1]
      357 CALL                             R26 2 1
      358 GETUPVAL                         R28 2
      359 GETTABLEKS                       R27 R28 K23 ["useCallback"]
      361 NEWCLOSURE                       R28 P13
      362 CAPTURE                          VAL R5
      363 CAPTURE                          VAL R0
      364 NEWTABLE                         R29 0 2
      366 MOVE                             R30 R4
      367 GETTABLEKS                       R31 R0 K26 ["onSelectedDateChanged"]
      369 SETLIST                          R29 R30 2 [1]
      371 CALL                             R27 2 1
      372 GETUPVAL                         R29 2
      373 GETTABLEKS                       R28 R29 K28 ["createElement"]
      375 GETUPVAL                         R29 8
      376 DUPTABLE                         R30 K33 [{"LayoutOrder", "tag", "Size", "testId"}]
      377 GETTABLEKS                       R31 R0 K29 ["LayoutOrder"]
      379 SETTABLEKS                       R31 R30 K29 ["LayoutOrder"]
      381 LOADK                            R31 K34 ["col auto-y"]
      382 SETTABLEKS                       R31 R30 K30 ["tag"]
      384 GETIMPORT                        R31 K37 [UDim2.fromOffset]
      386 MOVE                             R32 R2
      387 LOADN                            R33 0
      388 CALL                             R31 2 1
      389 SETTABLEKS                       R31 R30 K31 ["Size"]
      391 GETTABLEKS                       R31 R0 K32 ["testId"]
      393 SETTABLEKS                       R31 R30 K32 ["testId"]
      395 DUPTABLE                         R31 K42 [{"CalendarHeader", "TimeDropdown", "CalendarInputContainer", "WeekAndDates"}]
      396 GETUPVAL                         R33 2
      397 GETTABLEKS                       R32 R33 K28 ["createElement"]
      399 GETUPVAL                         R33 8
      400 DUPTABLE                         R34 K43 [{"LayoutOrder", "tag"}]
      401 LOADN                            R35 1
      402 SETTABLEKS                       R35 R34 K29 ["LayoutOrder"]
      404 LOADK                            R35 K44 ["row size-full-0 auto-y gap-small align-y-center padding-y-small"]
      405 SETTABLEKS                       R35 R34 K30 ["tag"]
      407 DUPTABLE                         R35 K49 [{"PreviousMonthButton", "MonthText", "YearText", "NextMonthButton"}]
      408 GETUPVAL                         R37 2
      409 GETTABLEKS                       R36 R37 K28 ["createElement"]
      411 GETUPVAL                         R37 9
      412 DUPTABLE                         R38 K55 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      413 LOADN                            R39 1
      414 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      416 GETUPVAL                         R40 10
      417 GETTABLEKS                       R39 R40 K56 ["ChevronSmallLeft"]
      419 SETTABLEKS                       R39 R38 K50 ["icon"]
      421 LOADB                            R39 1
      422 SETTABLEKS                       R39 R38 K51 ["isCircular"]
      424 SETTABLEKS                       R19 R38 K52 ["onActivated"]
      426 GETUPVAL                         R40 11
      427 GETTABLEKS                       R39 R40 K57 ["Small"]
      429 SETTABLEKS                       R39 R38 K53 ["size"]
      431 GETUPVAL                         R40 12
      432 GETTABLEKS                       R39 R40 K58 ["Utility"]
      434 SETTABLEKS                       R39 R38 K54 ["variant"]
      436 LOADK                            R40 K59 ["%*--previous-month-button"]
      437 GETTABLEKS                       R42 R0 K32 ["testId"]
      439 NAMECALL                         R40 R40 K60 ["format"]
      441 CALL                             R40 2 1
      442 MOVE                             R39 R40
      443 SETTABLEKS                       R39 R38 K32 ["testId"]
      445 CALL                             R36 2 1
      446 SETTABLEKS                       R36 R35 K45 ["PreviousMonthButton"]
      448 GETUPVAL                         R37 2
      449 GETTABLEKS                       R36 R37 K28 ["createElement"]
      451 GETUPVAL                         R37 6
      452 DUPTABLE                         R38 K62 [{"LayoutOrder", "Text", "tag", "testId"}]
      453 LOADN                            R39 2
      454 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      456 GETUPVAL                         R41 4
      457 GETTABLEKS                       R40 R41 K63 ["monthMap"]
      459 GETTABLEKS                       R41 R13 K14 ["month"]
      461 GETTABLE                         R39 R40 R41
      462 SETTABLEKS                       R39 R38 K61 ["Text"]
      464 LOADK                            R39 K64 ["grow text-align-x-right auto-xy"]
      465 SETTABLEKS                       R39 R38 K30 ["tag"]
      467 LOADK                            R40 K65 ["%*--month-text"]
      468 GETTABLEKS                       R42 R0 K32 ["testId"]
      470 NAMECALL                         R40 R40 K60 ["format"]
      472 CALL                             R40 2 1
      473 MOVE                             R39 R40
      474 SETTABLEKS                       R39 R38 K32 ["testId"]
      476 CALL                             R36 2 1
      477 SETTABLEKS                       R36 R35 K46 ["MonthText"]
      479 GETUPVAL                         R37 2
      480 GETTABLEKS                       R36 R37 K28 ["createElement"]
      482 GETUPVAL                         R37 6
      483 DUPTABLE                         R38 K62 [{"LayoutOrder", "Text", "tag", "testId"}]
      484 LOADN                            R39 3
      485 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      487 GETTABLEKS                       R40 R13 K15 ["year"]
      489 FASTCALL1                        TOSTRING R40 ; [+2]
      490 GETIMPORT                        R39 K67 [tostring]
      492 CALL                             R39 1 1
      493 SETTABLEKS                       R39 R38 K61 ["Text"]
      495 LOADK                            R39 K68 ["grow text-align-x-left auto-xy"]
      496 SETTABLEKS                       R39 R38 K30 ["tag"]
      498 LOADK                            R40 K69 ["%*--year-text"]
      499 GETTABLEKS                       R42 R0 K32 ["testId"]
      501 NAMECALL                         R40 R40 K60 ["format"]
      503 CALL                             R40 2 1
      504 MOVE                             R39 R40
      505 SETTABLEKS                       R39 R38 K32 ["testId"]
      507 CALL                             R36 2 1
      508 SETTABLEKS                       R36 R35 K47 ["YearText"]
      510 GETUPVAL                         R37 2
      511 GETTABLEKS                       R36 R37 K28 ["createElement"]
      513 GETUPVAL                         R37 9
      514 DUPTABLE                         R38 K55 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      515 LOADN                            R39 4
      516 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      518 GETUPVAL                         R40 10
      519 GETTABLEKS                       R39 R40 K70 ["ChevronSmallRight"]
      521 SETTABLEKS                       R39 R38 K50 ["icon"]
      523 LOADB                            R39 1
      524 SETTABLEKS                       R39 R38 K51 ["isCircular"]
      526 SETTABLEKS                       R18 R38 K52 ["onActivated"]
      528 GETUPVAL                         R40 11
      529 GETTABLEKS                       R39 R40 K57 ["Small"]
      531 SETTABLEKS                       R39 R38 K53 ["size"]
      533 GETUPVAL                         R40 12
      534 GETTABLEKS                       R39 R40 K58 ["Utility"]
      536 SETTABLEKS                       R39 R38 K54 ["variant"]
      538 LOADK                            R40 K71 ["%*--next-month-button"]
      539 GETTABLEKS                       R42 R0 K32 ["testId"]
      541 NAMECALL                         R40 R40 K60 ["format"]
      543 CALL                             R40 2 1
      544 MOVE                             R39 R40
      545 SETTABLEKS                       R39 R38 K32 ["testId"]
      547 CALL                             R36 2 1
      548 SETTABLEKS                       R36 R35 K48 ["NextMonthButton"]
      550 CALL                             R32 3 1
      551 SETTABLEKS                       R32 R31 K38 ["CalendarHeader"]
      553 GETUPVAL                         R33 3
      554 GETTABLEKS                       R32 R33 K8 ["FoundationDateTimePickerTimeVariantEnabled"]
      556 JUMPIFNOT                        R32 ; [+35]
      557 GETTABLEKS                       R33 R0 K72 ["showTimeDropdown"]
      559 JUMPIFNOT                        R33 ; [+31]
      560 GETUPVAL                         R33 2
      561 GETTABLEKS                       R32 R33 K28 ["createElement"]
      563 GETUPVAL                         R33 13
      564 DUPTABLE                         R34 K77 [{"dateTime", "layoutOrder", "onItemChanged", "width", "testId"}]
      565 GETTABLEN                        R35 R4 1
      566 SETTABLEKS                       R35 R34 K73 ["dateTime"]
      568 LOADN                            R35 2
      569 SETTABLEKS                       R35 R34 K74 ["layoutOrder"]
      571 SETTABLEKS                       R27 R34 K75 ["onItemChanged"]
      573 GETIMPORT                        R35 K80 [UDim.new]
      575 LOADN                            R36 1
      576 LOADN                            R37 0
      577 CALL                             R35 2 1
      578 SETTABLEKS                       R35 R34 K76 ["width"]
      580 LOADK                            R36 K81 ["%*--time-dropdown"]
      581 GETTABLEKS                       R38 R0 K32 ["testId"]
      583 NAMECALL                         R36 R36 K60 ["format"]
      585 CALL                             R36 2 1
      586 MOVE                             R35 R36
      587 SETTABLEKS                       R35 R34 K32 ["testId"]
      589 CALL                             R32 2 1
      590 JUMP                             ; [+1]
      591 LOADNIL                          R32
      592 SETTABLEKS                       R32 R31 K39 ["TimeDropdown"]
      594 GETTABLEKS                       R33 R0 K24 ["showStartDateTimeCalendarInput"]
      596 JUMPIFNOT                        R33 ; [+172]
      597 GETUPVAL                         R33 2
      598 GETTABLEKS                       R32 R33 K28 ["createElement"]
      600 GETUPVAL                         R33 8
      601 DUPTABLE                         R34 K82 [{"LayoutOrder", "tag", "testId"}]
      602 GETUPVAL                         R37 3
      603 GETTABLEKS                       R36 R37 K8 ["FoundationDateTimePickerTimeVariantEnabled"]
      605 JUMPIFNOT                        R36 ; [+2]
      606 LOADN                            R35 3
      607 JUMP                             ; [+1]
      608 LOADN                            R35 2
      609 SETTABLEKS                       R35 R34 K29 ["LayoutOrder"]
      611 LOADK                            R35 K83 ["flex-x-fill size-full-0 auto-y row gap-small align-y-center"]
      612 SETTABLEKS                       R35 R34 K30 ["tag"]
      614 LOADK                            R36 K84 ["%*--input"]
      615 GETTABLEKS                       R38 R0 K32 ["testId"]
      617 NAMECALL                         R36 R36 K60 ["format"]
      619 CALL                             R36 2 1
      620 MOVE                             R35 R36
      621 SETTABLEKS                       R35 R34 K32 ["testId"]
      623 DUPTABLE                         R35 K88 [{"StartDateTime", "InputSeparator", "EndDateTime"}]
      624 GETUPVAL                         R37 2
      625 GETTABLEKS                       R36 R37 K28 ["createElement"]
      627 GETUPVAL                         R37 14
      628 DUPTABLE                         R38 K96 [{"hasError", "label", "LayoutOrder", "onChanged", "onFocusLost", "placeholder", "size", "text", "onFocusGained", "testId"}]
      629 LOADB                            R39 0
      630 JUMPIFEQKS                       R9 K13 [""] ; [+10]
      632 GETUPVAL                         R41 4
      633 GETTABLEKS                       R40 R41 K97 ["getDateTimeFromText"]
      635 MOVE                             R41 R9
      636 CALL                             R40 1 1
      637 JUMPIFEQKNIL                     R40 ; [+2]
      639 LOADB                            R39 0 +1
      640 LOADB                            R39 1
      641 SETTABLEKS                       R39 R38 K89 ["hasError"]
      643 LOADK                            R39 K13 [""]
      644 SETTABLEKS                       R39 R38 K90 ["label"]
      646 LOADN                            R39 1
      647 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      649 SETTABLEKS                       R24 R38 K91 ["onChanged"]
      651 SETTABLEKS                       R16 R38 K92 ["onFocusLost"]
      653 LOADK                            R39 K98 ["MM/DD/YYYY"]
      654 SETTABLEKS                       R39 R38 K93 ["placeholder"]
      656 GETUPVAL                         R40 11
      657 GETTABLEKS                       R39 R40 K99 ["Medium"]
      659 SETTABLEKS                       R39 R38 K53 ["size"]
      661 SETTABLEKS                       R9 R38 K94 ["text"]
      663 NEWCLOSURE                       R39 P14
      664 CAPTURE                          VAL R8
      665 SETTABLEKS                       R39 R38 K95 ["onFocusGained"]
      667 LOADK                            R40 K100 ["%*--start-datetime-input"]
      668 GETTABLEKS                       R42 R0 K32 ["testId"]
      670 NAMECALL                         R40 R40 K60 ["format"]
      672 CALL                             R40 2 1
      673 MOVE                             R39 R40
      674 SETTABLEKS                       R39 R38 K32 ["testId"]
      676 CALL                             R36 2 1
      677 SETTABLEKS                       R36 R35 K85 ["StartDateTime"]
      679 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      681 JUMPIFNOT                        R37 ; [+16]
      682 GETUPVAL                         R37 2
      683 GETTABLEKS                       R36 R37 K28 ["createElement"]
      685 GETUPVAL                         R37 6
      686 DUPTABLE                         R38 K101 [{"LayoutOrder", "tag", "Text"}]
      687 LOADN                            R39 2
      688 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      690 LOADK                            R39 K102 ["auto-xy"]
      691 SETTABLEKS                       R39 R38 K30 ["tag"]
      693 LOADK                            R39 K103 ["-"]
      694 SETTABLEKS                       R39 R38 K61 ["Text"]
      696 CALL                             R36 2 1
      697 JUMP                             ; [+1]
      698 LOADNIL                          R36
      699 SETTABLEKS                       R36 R35 K86 ["InputSeparator"]
      701 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      703 JUMPIFNOT                        R37 ; [+60]
      704 GETUPVAL                         R37 2
      705 GETTABLEKS                       R36 R37 K28 ["createElement"]
      707 GETUPVAL                         R37 14
      708 DUPTABLE                         R38 K106 [{"hasError", "isDisabled", "label", "LayoutOrder", "onChanged", "onFocusGained", "onFocusLost", "placeholder", "size", "text", "textBoxRef", "testId"}]
      709 LOADB                            R39 0
      710 JUMPIFEQKS                       R11 K13 [""] ; [+10]
      712 GETUPVAL                         R41 4
      713 GETTABLEKS                       R40 R41 K97 ["getDateTimeFromText"]
      715 MOVE                             R41 R11
      716 CALL                             R40 1 1
      717 JUMPIFEQKNIL                     R40 ; [+2]
      719 LOADB                            R39 0 +1
      720 LOADB                            R39 1
      721 SETTABLEKS                       R39 R38 K89 ["hasError"]
      723 GETTABLEN                        R40 R4 1
      724 NOT                              R39 R40
      725 SETTABLEKS                       R39 R38 K104 ["isDisabled"]
      727 LOADK                            R39 K13 [""]
      728 SETTABLEKS                       R39 R38 K90 ["label"]
      730 LOADN                            R39 3
      731 SETTABLEKS                       R39 R38 K29 ["LayoutOrder"]
      733 SETTABLEKS                       R25 R38 K91 ["onChanged"]
      735 NEWCLOSURE                       R39 P15
      736 CAPTURE                          VAL R8
      737 SETTABLEKS                       R39 R38 K95 ["onFocusGained"]
      739 SETTABLEKS                       R17 R38 K92 ["onFocusLost"]
      741 LOADK                            R39 K98 ["MM/DD/YYYY"]
      742 SETTABLEKS                       R39 R38 K93 ["placeholder"]
      744 GETUPVAL                         R40 11
      745 GETTABLEKS                       R39 R40 K99 ["Medium"]
      747 SETTABLEKS                       R39 R38 K53 ["size"]
      749 SETTABLEKS                       R11 R38 K94 ["text"]
      751 SETTABLEKS                       R6 R38 K105 ["textBoxRef"]
      753 LOADK                            R40 K107 ["%*--end-datetime-input"]
      754 GETTABLEKS                       R42 R0 K32 ["testId"]
      756 NAMECALL                         R40 R40 K60 ["format"]
      758 CALL                             R40 2 1
      759 MOVE                             R39 R40
      760 SETTABLEKS                       R39 R38 K32 ["testId"]
      762 CALL                             R36 2 1
      763 JUMP                             ; [+1]
      764 LOADNIL                          R36
      765 SETTABLEKS                       R36 R35 K87 ["EndDateTime"]
      767 CALL                             R32 3 1
      768 JUMP                             ; [+1]
      769 LOADNIL                          R32
      770 SETTABLEKS                       R32 R31 K40 ["CalendarInputContainer"]
      772 GETUPVAL                         R33 2
      773 GETTABLEKS                       R32 R33 K28 ["createElement"]
      775 GETUPVAL                         R33 8
      776 DUPTABLE                         R34 K82 [{"LayoutOrder", "tag", "testId"}]
      777 GETUPVAL                         R37 3
      778 GETTABLEKS                       R36 R37 K8 ["FoundationDateTimePickerTimeVariantEnabled"]
      780 JUMPIFNOT                        R36 ; [+2]
      781 LOADN                            R35 4
      782 JUMP                             ; [+1]
      783 LOADN                            R35 3
      784 SETTABLEKS                       R35 R34 K29 ["LayoutOrder"]
      786 LOADK                            R35 K108 ["size-full-0 auto-y"]
      787 SETTABLEKS                       R35 R34 K30 ["tag"]
      789 LOADK                            R36 K109 ["%*--weekAndDates"]
      790 GETTABLEKS                       R38 R0 K32 ["testId"]
      792 NAMECALL                         R36 R36 K60 ["format"]
      794 CALL                             R36 2 1
      795 MOVE                             R35 R36
      796 SETTABLEKS                       R35 R34 K32 ["testId"]
      798 MOVE                             R35 R26
      799 CALL                             R32 3 1
      800 SETTABLEKS                       R32 R31 K41 ["WeekAndDates"]
      802 CALL                             R28 3 -1
      803 RETURN                           R28 -1

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
       21 GETIMPORT                        R7 K1 [script]
       23 GETTABLEKS                       R6 R7 K4 ["Parent"]
       25 GETTABLEKS                       R5 R6 K9 ["CalendarDay"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R7 R8 K4 ["Parent"]
       34 GETTABLEKS                       R6 R7 K10 ["DateTimeUtilities"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R2 K11 ["Icon"]
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R9 R0 K12 ["Enums"]
       43 GETTABLEKS                       R8 R9 K13 ["ButtonVariant"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R10 R0 K14 ["Utility"]
       50 GETTABLEKS                       R9 R10 K15 ["Flags"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R11 R0 K16 ["Components"]
       57 GETTABLEKS                       R10 R11 K17 ["IconButton"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R12 R0 K12 ["Enums"]
       64 GETTABLEKS                       R11 R12 K18 ["InputSize"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R15 R0 K14 ["Utility"]
       71 GETTABLEKS                       R14 R15 K19 ["Wrappers"]
       73 CALL                             R13 1 1
       74 GETTABLEKS                       R12 R13 K20 ["Services"]
       76 GETTABLEKS                       R11 R12 K21 ["LocalizationService"]
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R14 R0 K16 ["Components"]
       82 GETTABLEKS                       R13 R14 K22 ["Text"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R15 R0 K16 ["Components"]
       89 GETTABLEKS                       R14 R15 K23 ["TextInput"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETIMPORT                        R17 K1 [script]
       96 GETTABLEKS                       R16 R17 K4 ["Parent"]
       98 GETTABLEKS                       R15 R16 K24 ["TimeDropdown"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K6 [require]
      103 GETTABLEKS                       R17 R0 K16 ["Components"]
      105 GETTABLEKS                       R16 R17 K25 ["View"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K6 [require]
      110 GETTABLEKS                       R18 R0 K14 ["Utility"]
      112 GETTABLEKS                       R17 R18 K26 ["useScaledValue"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K6 [require]
      117 GETTABLEKS                       R20 R0 K27 ["Providers"]
      119 GETTABLEKS                       R19 R20 K28 ["Style"]
      121 GETTABLEKS                       R18 R19 K29 ["useTokens"]
      123 CALL                             R17 1 1
      124 DUPCLOSURE                       R18 K30 [PROTO_20]
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R13
      140 RETURN                           R18 1
