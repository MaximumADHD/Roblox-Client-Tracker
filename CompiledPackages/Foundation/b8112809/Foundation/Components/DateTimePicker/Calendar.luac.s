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
        9 JUMPIFNOT                        R0 ; [+26]
       10 GETUPVAL                         R2 2
       11 GETTABLEN                        R1 R2 2
       12 JUMPIFNOT                        R1 ; [+23]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 2
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R2 R1 ; [+11]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K2 ["formatLocalTime"]
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R4 R5 K3 ["defaultDates"]
       33 GETTABLEN                        R3 R4 1
       34 CALL                             R2 1 -1
       35 CALL                             R1 -1 0
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDateTimeFromText"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R2 2
        7 GETTABLEN                        R1 R2 2
        8 JUMPIF                           R1 ; [+17]
        9 JUMPIFNOT                        R0 ; [+26]
       10 GETUPVAL                         R2 2
       11 GETTABLEN                        R1 R2 1
       12 JUMPIFNOT                        R1 ; [+23]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 1
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R1 R2 ; [+11]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K2 ["formatLocalTime"]
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R4 R5 K3 ["defaultDates"]
       33 GETTABLEN                        R3 R4 2
       34 CALL                             R2 1 -1
       35 CALL                             R1 -1 0
       36 RETURN                           R0 0

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
        6 GETTABLEN                        R8 R9 1
        7 NAMECALL                         R8 R8 K3 ["ToLocalTime"]
        9 CALL                             R8 1 1
       10 GETTABLEKS                       R7 R8 K4 ["Hour"]
       12 GETUPVAL                         R10 0
       13 GETTABLEN                        R9 R10 1
       14 NAMECALL                         R9 R9 K3 ["ToLocalTime"]
       16 CALL                             R9 1 1
       17 GETTABLEKS                       R8 R9 K5 ["Minute"]
       19 CALL                             R3 5 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K6 ["showStartDateTimeCalendarInput"]
       23 JUMPIFNOT                        R4 ; [+81]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K7 ["showEndDateTimeCalendarInput"]
       27 JUMPIFNOT                        R4 ; [+62]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K8 ["startDateTimeInput"]
       31 JUMPIFNOT                        R4 ; [+17]
       32 GETUPVAL                         R4 3
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R5 R6 K9 ["formatLocalTime"]
       36 MOVE                             R6 R3
       37 CALL                             R5 1 -1
       38 CALL                             R4 -1 0
       39 GETUPVAL                         R4 5
       40 DUPTABLE                         R5 K11 [{"startDateTimeInput", "endDateTimeInput"}]
       41 LOADB                            R6 0
       42 SETTABLEKS                       R6 R5 K8 ["startDateTimeInput"]
       44 LOADB                            R6 1
       45 SETTABLEKS                       R6 R5 K10 ["endDateTimeInput"]
       47 CALL                             R4 1 0
       48 JUMP                             ; [+48]
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R4 R5 K10 ["endDateTimeInput"]
       52 JUMPIFNOT                        R4 ; [+17]
       53 GETUPVAL                         R4 6
       54 GETUPVAL                         R6 4
       55 GETTABLEKS                       R5 R6 K9 ["formatLocalTime"]
       57 MOVE                             R6 R3
       58 CALL                             R5 1 -1
       59 CALL                             R4 -1 0
       60 GETUPVAL                         R4 5
       61 DUPTABLE                         R5 K11 [{"startDateTimeInput", "endDateTimeInput"}]
       62 LOADB                            R6 0
       63 SETTABLEKS                       R6 R5 K8 ["startDateTimeInput"]
       65 LOADB                            R6 0
       66 SETTABLEKS                       R6 R5 K10 ["endDateTimeInput"]
       68 CALL                             R4 1 0
       69 JUMP                             ; [+27]
       70 GETUPVAL                         R4 3
       71 GETUPVAL                         R6 4
       72 GETTABLEKS                       R5 R6 K9 ["formatLocalTime"]
       74 MOVE                             R6 R3
       75 CALL                             R5 1 -1
       76 CALL                             R4 -1 0
       77 GETUPVAL                         R4 6
       78 LOADK                            R5 K12 [""]
       79 CALL                             R4 1 0
       80 GETUPVAL                         R4 5
       81 DUPTABLE                         R5 K11 [{"startDateTimeInput", "endDateTimeInput"}]
       82 LOADB                            R6 0
       83 SETTABLEKS                       R6 R5 K8 ["startDateTimeInput"]
       85 LOADB                            R6 1
       86 SETTABLEKS                       R6 R5 K10 ["endDateTimeInput"]
       88 CALL                             R4 1 0
       89 JUMP                             ; [+7]
       90 GETUPVAL                         R4 3
       91 GETUPVAL                         R6 4
       92 GETTABLEKS                       R5 R6 K9 ["formatLocalTime"]
       94 MOVE                             R6 R3
       95 CALL                             R5 1 -1
       96 CALL                             R4 -1 0
       97 GETUPVAL                         R4 7
       98 DUPTABLE                         R5 K15 [{"month", "year"}]
       99 SETTABLEKS                       R1 R5 K13 ["month"]
      101 SETTABLEKS                       R2 R5 K14 ["year"]
      103 CALL                             R4 1 0
      104 RETURN                           R0 0
      105 GETUPVAL                         R4 7
      106 DUPTABLE                         R5 K15 [{"month", "year"}]
      107 SETTABLEKS                       R1 R5 K13 ["month"]
      109 SETTABLEKS                       R2 R5 K14 ["year"]
      111 CALL                             R4 1 0
      112 GETUPVAL                         R4 8
      113 NEWTABLE                         R5 0 1
      115 MOVE                             R6 R3
      116 SETLIST                          R5 R6 1 [1]
      118 CALL                             R4 1 0
      119 GETUPVAL                         R5 1
      120 GETTABLEKS                       R4 R5 K16 ["onSelectedDateChanged"]
      122 NEWTABLE                         R5 0 1
      124 MOVE                             R6 R3
      125 SETLIST                          R5 R6 1 [1]
      127 CALL                             R4 1 0
      128 RETURN                           R0 0

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
       59 GETUPVAL                         R11 3
       60 GETTABLEKS                       R10 R11 K8 ["formatLocalTime"]
       62 GETTABLEKS                       R12 R0 K2 ["defaultDates"]
       64 GETTABLEN                        R11 R12 1
       65 CALL                             R10 1 -1
       66 CALL                             R9 -1 2
       67 GETUPVAL                         R12 2
       68 GETTABLEKS                       R11 R12 K1 ["useState"]
       70 GETTABLEKS                       R14 R0 K2 ["defaultDates"]
       72 GETTABLEN                        R13 R14 2
       73 JUMPIFNOT                        R13 ; [+8]
       74 GETUPVAL                         R13 3
       75 GETTABLEKS                       R12 R13 K8 ["formatLocalTime"]
       77 GETTABLEKS                       R14 R0 K2 ["defaultDates"]
       79 GETTABLEN                        R13 R14 2
       80 CALL                             R12 1 1
       81 JUMP                             ; [+1]
       82 LOADK                            R12 K9 [""]
       83 CALL                             R11 1 2
       84 GETUPVAL                         R14 2
       85 GETTABLEKS                       R13 R14 K7 ["useEffect"]
       87 NEWCLOSURE                       R14 P1
       88 CAPTURE                          VAL R3
       89 NEWTABLE                         R15 0 0
       91 CALL                             R13 2 0
       92 GETUPVAL                         R14 2
       93 GETTABLEKS                       R13 R14 K1 ["useState"]
       95 DUPTABLE                         R14 K12 [{"month", "year"}]
       96 GETTABLEKS                       R17 R0 K2 ["defaultDates"]
       98 GETTABLEN                        R16 R17 1
       99 NAMECALL                         R16 R16 K13 ["ToLocalTime"]
      101 CALL                             R16 1 1
      102 GETTABLEKS                       R15 R16 K14 ["Month"]
      104 SETTABLEKS                       R15 R14 K10 ["month"]
      106 GETTABLEKS                       R17 R0 K2 ["defaultDates"]
      108 GETTABLEN                        R16 R17 1
      109 NAMECALL                         R16 R16 K13 ["ToLocalTime"]
      111 CALL                             R16 1 1
      112 GETTABLEKS                       R15 R16 K15 ["Year"]
      114 SETTABLEKS                       R15 R14 K11 ["year"]
      116 CALL                             R13 1 2
      117 NEWTABLE                         R15 0 0
      119 MOVE                             R16 R4
      120 LOADNIL                          R17
      121 LOADNIL                          R18
      122 FORGPREP                         R16
      123 MOVE                             R22 R15
      124 NAMECALL                         R23 R20 K13 ["ToLocalTime"]
      126 CALL                             R23 1 -1
      127 FASTCALL                         TABLE_INSERT ; [+2]
      128 GETIMPORT                        R21 K18 [table.insert]
      130 CALL                             R21 -1 0
      131 FORGLOOP                         R16 2 ; [-9]
      133 NEWCLOSURE                       R16 P2
      134 CAPTURE                          UPVAL U3
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R0
      139 NEWCLOSURE                       R17 P3
      140 CAPTURE                          UPVAL U3
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R0
      145 GETUPVAL                         R19 2
      146 GETTABLEKS                       R18 R19 K19 ["useCallback"]
      148 NEWCLOSURE                       R19 P4
      149 CAPTURE                          UPVAL U3
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R14
      152 NEWTABLE                         R20 0 1
      154 MOVE                             R21 R13
      155 SETLIST                          R20 R21 1 [1]
      157 CALL                             R18 2 1
      158 GETUPVAL                         R20 2
      159 GETTABLEKS                       R19 R20 K19 ["useCallback"]
      161 NEWCLOSURE                       R20 P5
      162 CAPTURE                          UPVAL U3
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R14
      165 NEWTABLE                         R21 0 1
      167 MOVE                             R22 R13
      168 SETLIST                          R21 R22 1 [1]
      170 CALL                             R19 2 1
      171 GETUPVAL                         R21 2
      172 GETTABLEKS                       R20 R21 K19 ["useCallback"]
      174 NEWCLOSURE                       R21 P6
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R0
      177 CAPTURE                          VAL R7
      178 CAPTURE                          VAL R10
      179 CAPTURE                          UPVAL U3
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R5
      184 NEWTABLE                         R22 0 5
      186 GETTABLEKS                       R23 R0 K20 ["showStartDateTimeCalendarInput"]
      188 GETTABLEKS                       R24 R0 K3 ["showEndDateTimeCalendarInput"]
      190 MOVE                             R25 R4
      191 MOVE                             R26 R7
      192 MOVE                             R27 R6
      193 SETLIST                          R22 R23 5 [1]
      195 CALL                             R20 2 1
      196 GETUPVAL                         R22 2
      197 GETTABLEKS                       R21 R22 K19 ["useCallback"]
      199 NEWCLOSURE                       R22 P7
      200 CAPTURE                          VAL R15
      201 NEWTABLE                         R23 0 1
      203 MOVE                             R24 R15
      204 SETLIST                          R23 R24 1 [1]
      206 CALL                             R21 2 1
      207 GETUPVAL                         R23 2
      208 GETTABLEKS                       R22 R23 K19 ["useCallback"]
      210 NEWCLOSURE                       R23 P8
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R4
      213 CAPTURE                          UPVAL U3
      214 NEWTABLE                         R24 0 2
      216 GETTABLEKS                       R25 R0 K3 ["showEndDateTimeCalendarInput"]
      218 MOVE                             R26 R4
      219 SETLIST                          R24 R25 2 [1]
      221 CALL                             R22 2 1
      222 GETUPVAL                         R24 2
      223 GETTABLEKS                       R23 R24 K19 ["useCallback"]
      225 NEWCLOSURE                       R24 P9
      226 CAPTURE                          VAL R0
      227 CAPTURE                          UPVAL U3
      228 CAPTURE                          VAL R7
      229 CAPTURE                          VAL R4
      230 NEWTABLE                         R25 0 4
      232 MOVE                             R26 R4
      233 GETTABLEKS                       R27 R0 K21 ["selectableDateRange"]
      235 MOVE                             R28 R7
      236 GETTABLEKS                       R29 R0 K3 ["showEndDateTimeCalendarInput"]
      238 SETLIST                          R25 R26 4 [1]
      240 CALL                             R23 2 1
      241 GETUPVAL                         R25 2
      242 GETTABLEKS                       R24 R25 K19 ["useCallback"]
      244 NEWCLOSURE                       R25 P10
      245 CAPTURE                          VAL R3
      246 CAPTURE                          VAL R10
      247 CAPTURE                          UPVAL U3
      248 CAPTURE                          UPVAL U4
      249 CAPTURE                          VAL R0
      250 CAPTURE                          VAL R4
      251 CAPTURE                          VAL R14
      252 CAPTURE                          VAL R5
      253 NEWTABLE                         R26 0 5
      255 GETTABLEKS                       R27 R0 K22 ["onSelectedDateChanged"]
      257 GETTABLEKS                       R28 R0 K3 ["showEndDateTimeCalendarInput"]
      259 MOVE                             R29 R23
      260 MOVE                             R30 R4
      261 MOVE                             R31 R3
      262 SETLIST                          R26 R27 5 [1]
      264 CALL                             R24 2 1
      265 GETUPVAL                         R26 2
      266 GETTABLEKS                       R25 R26 K19 ["useCallback"]
      268 NEWCLOSURE                       R26 P11
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R12
      271 CAPTURE                          UPVAL U3
      272 CAPTURE                          VAL R4
      273 CAPTURE                          VAL R14
      274 CAPTURE                          VAL R5
      275 CAPTURE                          VAL R0
      276 NEWTABLE                         R27 0 4
      278 GETTABLEKS                       R28 R0 K22 ["onSelectedDateChanged"]
      280 MOVE                             R29 R4
      281 MOVE                             R30 R23
      282 MOVE                             R31 R3
      283 SETLIST                          R27 R28 4 [1]
      285 CALL                             R25 2 1
      286 GETUPVAL                         R27 2
      287 GETTABLEKS                       R26 R27 K23 ["useMemo"]
      289 NEWCLOSURE                       R27 P12
      290 CAPTURE                          UPVAL U2
      291 CAPTURE                          VAL R1
      292 CAPTURE                          VAL R2
      293 CAPTURE                          UPVAL U3
      294 CAPTURE                          UPVAL U5
      295 CAPTURE                          VAL R13
      296 CAPTURE                          UPVAL U4
      297 CAPTURE                          UPVAL U6
      298 CAPTURE                          VAL R22
      299 CAPTURE                          VAL R23
      300 CAPTURE                          VAL R21
      301 CAPTURE                          VAL R20
      302 CAPTURE                          VAL R0
      303 NEWTABLE                         R28 0 8
      305 MOVE                             R29 R21
      306 MOVE                             R30 R22
      307 MOVE                             R31 R23
      308 MOVE                             R32 R13
      309 MOVE                             R33 R4
      310 MOVE                             R34 R20
      311 GETTABLEKS                       R35 R0 K21 ["selectableDateRange"]
      313 GETTABLEKS                       R36 R0 K3 ["showEndDateTimeCalendarInput"]
      315 SETLIST                          R28 R29 8 [1]
      317 CALL                             R26 2 1
      318 GETUPVAL                         R28 2
      319 GETTABLEKS                       R27 R28 K19 ["useCallback"]
      321 NEWCLOSURE                       R28 P13
      322 CAPTURE                          VAL R5
      323 CAPTURE                          VAL R0
      324 NEWTABLE                         R29 0 2
      326 MOVE                             R30 R4
      327 GETTABLEKS                       R31 R0 K22 ["onSelectedDateChanged"]
      329 SETLIST                          R29 R30 2 [1]
      331 CALL                             R27 2 1
      332 GETUPVAL                         R29 2
      333 GETTABLEKS                       R28 R29 K24 ["createElement"]
      335 GETUPVAL                         R29 7
      336 DUPTABLE                         R30 K29 [{"LayoutOrder", "tag", "Size", "testId"}]
      337 GETTABLEKS                       R31 R0 K25 ["LayoutOrder"]
      339 SETTABLEKS                       R31 R30 K25 ["LayoutOrder"]
      341 LOADK                            R31 K30 ["col auto-y"]
      342 SETTABLEKS                       R31 R30 K26 ["tag"]
      344 GETIMPORT                        R31 K33 [UDim2.fromOffset]
      346 MOVE                             R32 R2
      347 LOADN                            R33 0
      348 CALL                             R31 2 1
      349 SETTABLEKS                       R31 R30 K27 ["Size"]
      351 GETTABLEKS                       R31 R0 K28 ["testId"]
      353 SETTABLEKS                       R31 R30 K28 ["testId"]
      355 DUPTABLE                         R31 K38 [{"CalendarHeader", "TimeDropdown", "CalendarInputContainer", "WeekAndDates"}]
      356 GETUPVAL                         R33 2
      357 GETTABLEKS                       R32 R33 K24 ["createElement"]
      359 GETUPVAL                         R33 7
      360 DUPTABLE                         R34 K39 [{"LayoutOrder", "tag"}]
      361 LOADN                            R35 1
      362 SETTABLEKS                       R35 R34 K25 ["LayoutOrder"]
      364 LOADK                            R35 K40 ["row size-full-0 auto-y gap-small align-y-center padding-y-small"]
      365 SETTABLEKS                       R35 R34 K26 ["tag"]
      367 DUPTABLE                         R35 K45 [{"PreviousMonthButton", "MonthText", "YearText", "NextMonthButton"}]
      368 GETUPVAL                         R37 2
      369 GETTABLEKS                       R36 R37 K24 ["createElement"]
      371 GETUPVAL                         R37 8
      372 DUPTABLE                         R38 K51 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      373 LOADN                            R39 1
      374 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      376 GETUPVAL                         R40 9
      377 GETTABLEKS                       R39 R40 K52 ["ChevronSmallLeft"]
      379 SETTABLEKS                       R39 R38 K46 ["icon"]
      381 LOADB                            R39 1
      382 SETTABLEKS                       R39 R38 K47 ["isCircular"]
      384 SETTABLEKS                       R19 R38 K48 ["onActivated"]
      386 GETUPVAL                         R40 10
      387 GETTABLEKS                       R39 R40 K53 ["Small"]
      389 SETTABLEKS                       R39 R38 K49 ["size"]
      391 GETUPVAL                         R40 11
      392 GETTABLEKS                       R39 R40 K54 ["Utility"]
      394 SETTABLEKS                       R39 R38 K50 ["variant"]
      396 LOADK                            R40 K55 ["%*--previous-month-button"]
      397 GETTABLEKS                       R42 R0 K28 ["testId"]
      399 NAMECALL                         R40 R40 K56 ["format"]
      401 CALL                             R40 2 1
      402 MOVE                             R39 R40
      403 SETTABLEKS                       R39 R38 K28 ["testId"]
      405 CALL                             R36 2 1
      406 SETTABLEKS                       R36 R35 K41 ["PreviousMonthButton"]
      408 GETUPVAL                         R37 2
      409 GETTABLEKS                       R36 R37 K24 ["createElement"]
      411 GETUPVAL                         R37 5
      412 DUPTABLE                         R38 K58 [{"LayoutOrder", "Text", "tag", "testId"}]
      413 LOADN                            R39 2
      414 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      416 GETUPVAL                         R41 3
      417 GETTABLEKS                       R40 R41 K59 ["monthMap"]
      419 GETTABLEKS                       R41 R13 K10 ["month"]
      421 GETTABLE                         R39 R40 R41
      422 SETTABLEKS                       R39 R38 K57 ["Text"]
      424 LOADK                            R39 K60 ["grow text-align-x-right auto-xy"]
      425 SETTABLEKS                       R39 R38 K26 ["tag"]
      427 LOADK                            R40 K61 ["%*--month-text"]
      428 GETTABLEKS                       R42 R0 K28 ["testId"]
      430 NAMECALL                         R40 R40 K56 ["format"]
      432 CALL                             R40 2 1
      433 MOVE                             R39 R40
      434 SETTABLEKS                       R39 R38 K28 ["testId"]
      436 CALL                             R36 2 1
      437 SETTABLEKS                       R36 R35 K42 ["MonthText"]
      439 GETUPVAL                         R37 2
      440 GETTABLEKS                       R36 R37 K24 ["createElement"]
      442 GETUPVAL                         R37 5
      443 DUPTABLE                         R38 K58 [{"LayoutOrder", "Text", "tag", "testId"}]
      444 LOADN                            R39 3
      445 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      447 GETTABLEKS                       R40 R13 K11 ["year"]
      449 FASTCALL1                        TOSTRING R40 ; [+2]
      450 GETIMPORT                        R39 K63 [tostring]
      452 CALL                             R39 1 1
      453 SETTABLEKS                       R39 R38 K57 ["Text"]
      455 LOADK                            R39 K64 ["grow text-align-x-left auto-xy"]
      456 SETTABLEKS                       R39 R38 K26 ["tag"]
      458 LOADK                            R40 K65 ["%*--year-text"]
      459 GETTABLEKS                       R42 R0 K28 ["testId"]
      461 NAMECALL                         R40 R40 K56 ["format"]
      463 CALL                             R40 2 1
      464 MOVE                             R39 R40
      465 SETTABLEKS                       R39 R38 K28 ["testId"]
      467 CALL                             R36 2 1
      468 SETTABLEKS                       R36 R35 K43 ["YearText"]
      470 GETUPVAL                         R37 2
      471 GETTABLEKS                       R36 R37 K24 ["createElement"]
      473 GETUPVAL                         R37 8
      474 DUPTABLE                         R38 K51 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      475 LOADN                            R39 4
      476 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      478 GETUPVAL                         R40 9
      479 GETTABLEKS                       R39 R40 K66 ["ChevronSmallRight"]
      481 SETTABLEKS                       R39 R38 K46 ["icon"]
      483 LOADB                            R39 1
      484 SETTABLEKS                       R39 R38 K47 ["isCircular"]
      486 SETTABLEKS                       R18 R38 K48 ["onActivated"]
      488 GETUPVAL                         R40 10
      489 GETTABLEKS                       R39 R40 K53 ["Small"]
      491 SETTABLEKS                       R39 R38 K49 ["size"]
      493 GETUPVAL                         R40 11
      494 GETTABLEKS                       R39 R40 K54 ["Utility"]
      496 SETTABLEKS                       R39 R38 K50 ["variant"]
      498 LOADK                            R40 K67 ["%*--next-month-button"]
      499 GETTABLEKS                       R42 R0 K28 ["testId"]
      501 NAMECALL                         R40 R40 K56 ["format"]
      503 CALL                             R40 2 1
      504 MOVE                             R39 R40
      505 SETTABLEKS                       R39 R38 K28 ["testId"]
      507 CALL                             R36 2 1
      508 SETTABLEKS                       R36 R35 K44 ["NextMonthButton"]
      510 CALL                             R32 3 1
      511 SETTABLEKS                       R32 R31 K34 ["CalendarHeader"]
      513 GETTABLEKS                       R33 R0 K68 ["showTimeDropdown"]
      515 JUMPIFNOT                        R33 ; [+31]
      516 GETUPVAL                         R33 2
      517 GETTABLEKS                       R32 R33 K24 ["createElement"]
      519 GETUPVAL                         R33 12
      520 DUPTABLE                         R34 K73 [{"dateTime", "layoutOrder", "onItemChanged", "width", "testId"}]
      521 GETTABLEN                        R35 R4 1
      522 SETTABLEKS                       R35 R34 K69 ["dateTime"]
      524 LOADN                            R35 2
      525 SETTABLEKS                       R35 R34 K70 ["layoutOrder"]
      527 SETTABLEKS                       R27 R34 K71 ["onItemChanged"]
      529 GETIMPORT                        R35 K76 [UDim.new]
      531 LOADN                            R36 1
      532 LOADN                            R37 0
      533 CALL                             R35 2 1
      534 SETTABLEKS                       R35 R34 K72 ["width"]
      536 LOADK                            R36 K77 ["%*--time-dropdown"]
      537 GETTABLEKS                       R38 R0 K28 ["testId"]
      539 NAMECALL                         R36 R36 K56 ["format"]
      541 CALL                             R36 2 1
      542 MOVE                             R35 R36
      543 SETTABLEKS                       R35 R34 K28 ["testId"]
      545 CALL                             R32 2 1
      546 JUMP                             ; [+1]
      547 LOADNIL                          R32
      548 SETTABLEKS                       R32 R31 K35 ["TimeDropdown"]
      550 GETTABLEKS                       R33 R0 K20 ["showStartDateTimeCalendarInput"]
      552 JUMPIFNOT                        R33 ; [+166]
      553 GETUPVAL                         R33 2
      554 GETTABLEKS                       R32 R33 K24 ["createElement"]
      556 GETUPVAL                         R33 7
      557 DUPTABLE                         R34 K78 [{"LayoutOrder", "tag", "testId"}]
      558 LOADN                            R35 3
      559 SETTABLEKS                       R35 R34 K25 ["LayoutOrder"]
      561 LOADK                            R35 K79 ["flex-x-fill size-full-0 auto-y row gap-small align-y-center"]
      562 SETTABLEKS                       R35 R34 K26 ["tag"]
      564 LOADK                            R36 K80 ["%*--input"]
      565 GETTABLEKS                       R38 R0 K28 ["testId"]
      567 NAMECALL                         R36 R36 K56 ["format"]
      569 CALL                             R36 2 1
      570 MOVE                             R35 R36
      571 SETTABLEKS                       R35 R34 K28 ["testId"]
      573 DUPTABLE                         R35 K84 [{"StartDateTime", "InputSeparator", "EndDateTime"}]
      574 GETUPVAL                         R37 2
      575 GETTABLEKS                       R36 R37 K24 ["createElement"]
      577 GETUPVAL                         R37 13
      578 DUPTABLE                         R38 K92 [{"hasError", "label", "LayoutOrder", "onChanged", "onFocusLost", "placeholder", "size", "text", "onFocusGained", "testId"}]
      579 LOADB                            R39 0
      580 JUMPIFEQKS                       R9 K9 [""] ; [+10]
      582 GETUPVAL                         R41 3
      583 GETTABLEKS                       R40 R41 K93 ["getDateTimeFromText"]
      585 MOVE                             R41 R9
      586 CALL                             R40 1 1
      587 JUMPIFEQKNIL                     R40 ; [+2]
      589 LOADB                            R39 0 +1
      590 LOADB                            R39 1
      591 SETTABLEKS                       R39 R38 K85 ["hasError"]
      593 LOADK                            R39 K9 [""]
      594 SETTABLEKS                       R39 R38 K86 ["label"]
      596 LOADN                            R39 1
      597 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      599 SETTABLEKS                       R24 R38 K87 ["onChanged"]
      601 SETTABLEKS                       R16 R38 K88 ["onFocusLost"]
      603 LOADK                            R39 K94 ["MM/DD/YYYY"]
      604 SETTABLEKS                       R39 R38 K89 ["placeholder"]
      606 GETUPVAL                         R40 10
      607 GETTABLEKS                       R39 R40 K95 ["Medium"]
      609 SETTABLEKS                       R39 R38 K49 ["size"]
      611 SETTABLEKS                       R9 R38 K90 ["text"]
      613 NEWCLOSURE                       R39 P14
      614 CAPTURE                          VAL R8
      615 SETTABLEKS                       R39 R38 K91 ["onFocusGained"]
      617 LOADK                            R40 K96 ["%*--start-datetime-input"]
      618 GETTABLEKS                       R42 R0 K28 ["testId"]
      620 NAMECALL                         R40 R40 K56 ["format"]
      622 CALL                             R40 2 1
      623 MOVE                             R39 R40
      624 SETTABLEKS                       R39 R38 K28 ["testId"]
      626 CALL                             R36 2 1
      627 SETTABLEKS                       R36 R35 K81 ["StartDateTime"]
      629 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      631 JUMPIFNOT                        R37 ; [+16]
      632 GETUPVAL                         R37 2
      633 GETTABLEKS                       R36 R37 K24 ["createElement"]
      635 GETUPVAL                         R37 5
      636 DUPTABLE                         R38 K97 [{"LayoutOrder", "tag", "Text"}]
      637 LOADN                            R39 2
      638 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      640 LOADK                            R39 K98 ["auto-xy"]
      641 SETTABLEKS                       R39 R38 K26 ["tag"]
      643 LOADK                            R39 K99 ["-"]
      644 SETTABLEKS                       R39 R38 K57 ["Text"]
      646 CALL                             R36 2 1
      647 JUMP                             ; [+1]
      648 LOADNIL                          R36
      649 SETTABLEKS                       R36 R35 K82 ["InputSeparator"]
      651 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      653 JUMPIFNOT                        R37 ; [+60]
      654 GETUPVAL                         R37 2
      655 GETTABLEKS                       R36 R37 K24 ["createElement"]
      657 GETUPVAL                         R37 13
      658 DUPTABLE                         R38 K102 [{"hasError", "isDisabled", "label", "LayoutOrder", "onChanged", "onFocusGained", "onFocusLost", "placeholder", "size", "text", "textBoxRef", "testId"}]
      659 LOADB                            R39 0
      660 JUMPIFEQKS                       R11 K9 [""] ; [+10]
      662 GETUPVAL                         R41 3
      663 GETTABLEKS                       R40 R41 K93 ["getDateTimeFromText"]
      665 MOVE                             R41 R11
      666 CALL                             R40 1 1
      667 JUMPIFEQKNIL                     R40 ; [+2]
      669 LOADB                            R39 0 +1
      670 LOADB                            R39 1
      671 SETTABLEKS                       R39 R38 K85 ["hasError"]
      673 GETTABLEN                        R40 R4 1
      674 NOT                              R39 R40
      675 SETTABLEKS                       R39 R38 K100 ["isDisabled"]
      677 LOADK                            R39 K9 [""]
      678 SETTABLEKS                       R39 R38 K86 ["label"]
      680 LOADN                            R39 3
      681 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      683 SETTABLEKS                       R25 R38 K87 ["onChanged"]
      685 NEWCLOSURE                       R39 P15
      686 CAPTURE                          VAL R8
      687 SETTABLEKS                       R39 R38 K91 ["onFocusGained"]
      689 SETTABLEKS                       R17 R38 K88 ["onFocusLost"]
      691 LOADK                            R39 K94 ["MM/DD/YYYY"]
      692 SETTABLEKS                       R39 R38 K89 ["placeholder"]
      694 GETUPVAL                         R40 10
      695 GETTABLEKS                       R39 R40 K95 ["Medium"]
      697 SETTABLEKS                       R39 R38 K49 ["size"]
      699 SETTABLEKS                       R11 R38 K90 ["text"]
      701 SETTABLEKS                       R6 R38 K101 ["textBoxRef"]
      703 LOADK                            R40 K103 ["%*--end-datetime-input"]
      704 GETTABLEKS                       R42 R0 K28 ["testId"]
      706 NAMECALL                         R40 R40 K56 ["format"]
      708 CALL                             R40 2 1
      709 MOVE                             R39 R40
      710 SETTABLEKS                       R39 R38 K28 ["testId"]
      712 CALL                             R36 2 1
      713 JUMP                             ; [+1]
      714 LOADNIL                          R36
      715 SETTABLEKS                       R36 R35 K83 ["EndDateTime"]
      717 CALL                             R32 3 1
      718 JUMP                             ; [+1]
      719 LOADNIL                          R32
      720 SETTABLEKS                       R32 R31 K36 ["CalendarInputContainer"]
      722 GETUPVAL                         R33 2
      723 GETTABLEKS                       R32 R33 K24 ["createElement"]
      725 GETUPVAL                         R33 7
      726 DUPTABLE                         R34 K78 [{"LayoutOrder", "tag", "testId"}]
      727 LOADN                            R35 4
      728 SETTABLEKS                       R35 R34 K25 ["LayoutOrder"]
      730 LOADK                            R35 K104 ["size-full-0 auto-y"]
      731 SETTABLEKS                       R35 R34 K26 ["tag"]
      733 LOADK                            R36 K105 ["%*--weekAndDates"]
      734 GETTABLEKS                       R38 R0 K28 ["testId"]
      736 NAMECALL                         R36 R36 K56 ["format"]
      738 CALL                             R36 2 1
      739 MOVE                             R35 R36
      740 SETTABLEKS                       R35 R34 K28 ["testId"]
      742 MOVE                             R35 R26
      743 CALL                             R32 3 1
      744 SETTABLEKS                       R32 R31 K37 ["WeekAndDates"]
      746 CALL                             R28 3 -1
      747 RETURN                           R28 -1

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
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R13 R0 K16 ["Components"]
       71 GETTABLEKS                       R12 R13 K19 ["Text"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R14 R0 K16 ["Components"]
       78 GETTABLEKS                       R13 R14 K20 ["TextInput"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETIMPORT                        R16 K1 [script]
       85 GETTABLEKS                       R15 R16 K4 ["Parent"]
       87 GETTABLEKS                       R14 R15 K21 ["TimeDropdown"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K6 [require]
       92 GETTABLEKS                       R16 R0 K16 ["Components"]
       94 GETTABLEKS                       R15 R16 K22 ["View"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETTABLEKS                       R17 R0 K14 ["Utility"]
      101 GETTABLEKS                       R16 R17 K23 ["useScaledValue"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K6 [require]
      106 GETTABLEKS                       R19 R0 K24 ["Providers"]
      108 GETTABLEKS                       R18 R19 K25 ["Style"]
      110 GETTABLEKS                       R17 R18 K26 ["useTokens"]
      112 CALL                             R16 1 1
      113 DUPCLOSURE                       R17 K27 [PROTO_20]
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R12
      128 RETURN                           R17 1
