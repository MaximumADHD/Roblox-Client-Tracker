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
        9 JUMPIFNOT                        R0 ; [+26]
       10 GETUPVAL                         R2 2
       11 GETTABLEN                        R1 R2 2
       12 JUMPIFNOT                        R1 ; [+23]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 2
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R2 R1 ; [+11]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K2 ["formatLocalTime"]
       30 GETUPVAL                         R4 4
       31 GETTABLEKS                       R4 R4 K3 ["defaultDates"]
       33 GETTABLEN                        R3 R4 1
       34 CALL                             R2 1 -1
       35 CALL                             R1 -1 0
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDateTimeFromText"]
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
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 1
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R1 R2 ; [+11]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K2 ["formatLocalTime"]
       30 GETUPVAL                         R4 4
       31 GETTABLEKS                       R4 R4 K3 ["defaultDates"]
       33 GETTABLEN                        R3 R4 2
       34 CALL                             R2 1 -1
       35 CALL                             R1 -1 0
       36 RETURN                           R0 0

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
        6 GETTABLEN                        R7 R8 1
        7 NAMECALL                         R7 R7 K3 ["ToLocalTime"]
        9 CALL                             R7 1 1
       10 GETTABLEKS                       R7 R7 K4 ["Hour"]
       12 GETUPVAL                         R9 0
       13 GETTABLEN                        R8 R9 1
       14 NAMECALL                         R8 R8 K3 ["ToLocalTime"]
       16 CALL                             R8 1 1
       17 GETTABLEKS                       R8 R8 K5 ["Minute"]
       19 CALL                             R3 5 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["showStartDateTimeCalendarInput"]
       23 JUMPIFNOT                        R4 ; [+63]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K7 ["showEndDateTimeCalendarInput"]
       27 JUMPIFNOT                        R4 ; [+44]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K8 ["startDateTimeInput"]
       31 JUMPIFNOT                        R4 ; [+11]
       32 GETUPVAL                         R4 3
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R5 R5 K9 ["formatLocalTime"]
       36 MOVE                             R6 R3
       37 CALL                             R5 1 -1
       38 CALL                             R4 -1 0
       39 GETUPVAL                         R4 5
       40 DUPTABLE                         R5 K13 [{["startDateTimeInput"] = False, ["endDateTimeInput"] = True}]
       41 CALL                             R4 1 0
       42 JUMP                             ; [+36]
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R4 R4 K11 ["endDateTimeInput"]
       46 JUMPIFNOT                        R4 ; [+11]
       47 GETUPVAL                         R4 6
       48 GETUPVAL                         R5 4
       49 GETTABLEKS                       R5 R5 K9 ["formatLocalTime"]
       51 MOVE                             R6 R3
       52 CALL                             R5 1 -1
       53 CALL                             R4 -1 0
       54 GETUPVAL                         R4 5
       55 DUPTABLE                         R5 K14 [{["startDateTimeInput"] = False, ["endDateTimeInput"] = False}]
       56 CALL                             R4 1 0
       57 JUMP                             ; [+21]
       58 GETUPVAL                         R4 3
       59 GETUPVAL                         R5 4
       60 GETTABLEKS                       R5 R5 K9 ["formatLocalTime"]
       62 MOVE                             R6 R3
       63 CALL                             R5 1 -1
       64 CALL                             R4 -1 0
       65 GETUPVAL                         R4 6
       66 LOADK                            R5 K15 [""]
       67 CALL                             R4 1 0
       68 GETUPVAL                         R4 5
       69 DUPTABLE                         R5 K13 [{["startDateTimeInput"] = False, ["endDateTimeInput"] = True}]
       70 CALL                             R4 1 0
       71 JUMP                             ; [+7]
       72 GETUPVAL                         R4 3
       73 GETUPVAL                         R5 4
       74 GETTABLEKS                       R5 R5 K9 ["formatLocalTime"]
       76 MOVE                             R6 R3
       77 CALL                             R5 1 -1
       78 CALL                             R4 -1 0
       79 GETUPVAL                         R4 7
       80 DUPTABLE                         R5 K18 [{"month", "year"}]
       81 SETTABLEKS                       R1 R5 K16 ["month"]
       83 SETTABLEKS                       R2 R5 K17 ["year"]
       85 CALL                             R4 1 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R4 7
       88 DUPTABLE                         R5 K18 [{"month", "year"}]
       89 SETTABLEKS                       R1 R5 K16 ["month"]
       91 SETTABLEKS                       R2 R5 K17 ["year"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R4 8
       95 NEWTABLE                         R5 0 1
       97 MOVE                             R6 R3
       98 SETLIST                          R5 R6 1 [1]
      100 CALL                             R4 1 0
      101 GETUPVAL                         R4 1
      102 GETTABLEKS                       R4 R4 K19 ["onSelectedDateChanged"]
      104 NEWTABLE                         R5 0 1
      106 MOVE                             R6 R3
      107 SETLIST                          R5 R6 1 [1]
      109 CALL                             R4 1 0
      110 RETURN                           R0 0

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
       13 JUMPIFNOT                        R1 ; [+83]
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K2 ["FoundationDateTimePickerDualBugFix"]
       18 JUMPIFNOT                        R3 ; [+20]
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K3 ["showEndDateTimeCalendarInput"]
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
       39 GETUPVAL                         R3 4
       40 GETTABLEKS                       R3 R3 K3 ["showEndDateTimeCalendarInput"]
       42 JUMPIFNOT                        R3 ; [+26]
       43 GETUPVAL                         R4 5
       44 GETTABLEN                        R3 R4 2
       45 JUMPIFNOT                        R3 ; [+14]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R3 R3 K4 ["roundToStartOfDay"]
       49 MOVE                             R4 R1
       50 CALL                             R3 1 1
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K4 ["roundToStartOfDay"]
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
       92 GETUPVAL                         R4 4
       93 GETTABLEKS                       R4 R4 K11 ["onSelectedDateChanged"]
       95 MOVE                             R5 R2
       96 CALL                             R4 1 0
       97 RETURN                           R0 0

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
      114 JUMPIFNOTEQKN                    R2 K40 [0] ; [+3]
      116 LOADN                            R6 7
      117 JUMP                             ; [+1]
      118 MOVE                             R6 R2
      119 LOADN                            R9 1
      120 GETUPVAL                         R10 6
      121 GETTABLEKS                       R10 R10 K41 ["FoundationFixedHeightDateTimePicker"]
      123 JUMPIFNOT                        R10 ; [+2]
      124 MOVE                             R7 R6
      125 JUMP                             ; [+1]
      126 MOVE                             R7 R2
      127 LOADN                            R8 1
      128 FORNPREP                         R7
      129 GETUPVAL                         R13 6
      130 GETTABLEKS                       R13 R13 K41 ["FoundationFixedHeightDateTimePicker"]
      132 JUMPIFNOT                        R13 ; [+2]
      133 MOVE                             R12 R6
      134 JUMP                             ; [+1]
      135 MOVE                             R12 R2
      136 SUB                              R11 R5 R12
      137 ADD                              R10 R11 R9
      138 GETIMPORT                        R11 K44 [DateTime.fromLocalTime]
      140 MOVE                             R12 R4
      141 MOVE                             R13 R3
      142 MOVE                             R14 R10
      143 CALL                             R11 3 1
      144 MOVE                             R13 R0
      145 GETUPVAL                         R14 0
      146 GETTABLEKS                       R14 R14 K0 ["createElement"]
      148 GETUPVAL                         R15 7
      149 DUPTABLE                         R16 K50 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      150 GETUPVAL                         R17 8
      151 MOVE                             R18 R11
      152 CALL                             R17 1 1
      153 SETTABLEKS                       R17 R16 K45 ["highlight"]
      155 GETUPVAL                         R17 9
      156 MOVE                             R18 R11
      157 CALL                             R17 1 1
      158 SETTABLEKS                       R17 R16 K46 ["isSelectable"]
      160 GETUPVAL                         R17 10
      161 MOVE                             R18 R11
      162 CALL                             R17 1 1
      163 SETTABLEKS                       R17 R16 K47 ["isSelected"]
      165 LOADK                            R18 K51 ["prev-month-day-"]
      166 MOVE                             R19 R10
      167 CONCAT                           R17 R18 R19
      168 SETTABLEKS                       R17 R16 K8 ["key"]
      170 SETTABLEKS                       R1 R16 K23 ["LayoutOrder"]
      172 NEWCLOSURE                       R17 P0
      173 CAPTURE                          UPVAL U11
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R4
      177 SETTABLEKS                       R17 R16 K48 ["onActivated"]
      179 FASTCALL1                        TOSTRING R10 ; [+3]
      180 MOVE                             R18 R10
      181 GETIMPORT                        R17 K53 [tostring]
      183 CALL                             R17 1 1
      184 SETTABLEKS                       R17 R16 K30 ["Text"]
      186 LOADK                            R18 K54 ["%*--prev-month-calendar-day-%*"]
      187 GETUPVAL                         R20 12
      188 GETTABLEKS                       R20 R20 K49 ["testId"]
      190 MOVE                             R21 R10
      191 NAMECALL                         R18 R18 K55 ["format"]
      193 CALL                             R18 3 1
      194 MOVE                             R17 R18
      195 SETTABLEKS                       R17 R16 K49 ["testId"]
      197 CALL                             R14 2 -1
      198 FASTCALL                         TABLE_INSERT ; [+2]
      199 GETIMPORT                        R12 K28 [table.insert]
      201 CALL                             R12 -1 0
      202 ADDK                             R1 R1 K34 [1]
      203 FORNLOOP                         R7
      204 LOADN                            R9 1
      205 GETUPVAL                         R10 3
      206 GETTABLEKS                       R10 R10 K39 ["getDaysInMonth"]
      208 GETUPVAL                         R11 5
      209 GETTABLEKS                       R11 R11 K36 ["month"]
      211 GETUPVAL                         R12 5
      212 GETTABLEKS                       R12 R12 K37 ["year"]
      214 CALL                             R10 2 1
      215 MOVE                             R7 R10
      216 LOADN                            R8 1
      217 FORNPREP                         R7
      218 GETUPVAL                         R10 9
      219 GETIMPORT                        R11 K44 [DateTime.fromLocalTime]
      221 GETUPVAL                         R12 5
      222 GETTABLEKS                       R12 R12 K37 ["year"]
      224 GETUPVAL                         R13 5
      225 GETTABLEKS                       R13 R13 K36 ["month"]
      227 MOVE                             R14 R9
      228 CALL                             R11 3 -1
      229 CALL                             R10 -1 1
      230 GETUPVAL                         R11 10
      231 GETIMPORT                        R12 K44 [DateTime.fromLocalTime]
      233 GETUPVAL                         R13 5
      234 GETTABLEKS                       R13 R13 K37 ["year"]
      236 GETUPVAL                         R14 5
      237 GETTABLEKS                       R14 R14 K36 ["month"]
      239 MOVE                             R15 R9
      240 CALL                             R12 3 -1
      241 CALL                             R11 -1 1
      242 MOVE                             R13 R0
      243 GETUPVAL                         R14 0
      244 GETTABLEKS                       R14 R14 K0 ["createElement"]
      246 GETUPVAL                         R15 7
      247 DUPTABLE                         R16 K57 [{"emphasizeText", "highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      248 MOVE                             R17 R10
      249 JUMPIFNOT                        R17 ; [+1]
      250 NOT                              R17 R11
      251 SETTABLEKS                       R17 R16 K56 ["emphasizeText"]
      253 GETUPVAL                         R17 8
      254 GETIMPORT                        R18 K44 [DateTime.fromLocalTime]
      256 GETUPVAL                         R19 5
      257 GETTABLEKS                       R19 R19 K37 ["year"]
      259 GETUPVAL                         R20 5
      260 GETTABLEKS                       R20 R20 K36 ["month"]
      262 MOVE                             R21 R9
      263 CALL                             R18 3 -1
      264 CALL                             R17 -1 1
      265 SETTABLEKS                       R17 R16 K45 ["highlight"]
      267 SETTABLEKS                       R10 R16 K46 ["isSelectable"]
      269 SETTABLEKS                       R11 R16 K47 ["isSelected"]
      271 LOADK                            R18 K58 ["current-month-day-"]
      272 MOVE                             R19 R9
      273 CONCAT                           R17 R18 R19
      274 SETTABLEKS                       R17 R16 K8 ["key"]
      276 SETTABLEKS                       R1 R16 K23 ["LayoutOrder"]
      278 NEWCLOSURE                       R17 P1
      279 CAPTURE                          UPVAL U11
      280 CAPTURE                          VAL R9
      281 CAPTURE                          UPVAL U5
      282 SETTABLEKS                       R17 R16 K48 ["onActivated"]
      284 FASTCALL1                        TOSTRING R9 ; [+3]
      285 MOVE                             R18 R9
      286 GETIMPORT                        R17 K53 [tostring]
      288 CALL                             R17 1 1
      289 SETTABLEKS                       R17 R16 K30 ["Text"]
      291 LOADK                            R18 K59 ["%*--current-month-calendar-day-%*"]
      292 GETUPVAL                         R20 12
      293 GETTABLEKS                       R20 R20 K49 ["testId"]
      295 MOVE                             R21 R9
      296 NAMECALL                         R18 R18 K55 ["format"]
      298 CALL                             R18 3 1
      299 MOVE                             R17 R18
      300 SETTABLEKS                       R17 R16 K49 ["testId"]
      302 CALL                             R14 2 -1
      303 FASTCALL                         TABLE_INSERT ; [+2]
      304 GETIMPORT                        R12 K28 [table.insert]
      306 CALL                             R12 -1 0
      307 ADDK                             R1 R1 K34 [1]
      308 FORNLOOP                         R7
      309 GETUPVAL                         R7 3
      310 GETTABLEKS                       R7 R7 K60 ["getLastDayOfWeek"]
      312 GETUPVAL                         R8 5
      313 GETTABLEKS                       R8 R8 K36 ["month"]
      315 GETUPVAL                         R9 5
      316 GETTABLEKS                       R9 R9 K37 ["year"]
      318 CALL                             R7 2 1
      319 GETUPVAL                         R8 3
      320 GETTABLEKS                       R8 R8 K61 ["getNextMonthInfo"]
      322 GETUPVAL                         R9 5
      323 GETTABLEKS                       R9 R9 K36 ["month"]
      325 GETUPVAL                         R10 5
      326 GETTABLEKS                       R10 R10 K37 ["year"]
      328 CALL                             R8 2 2
      329 ADDK                             R10 R7 K34 [1]
      330 SUBRK                            R6 K6 [7] R10
      331 GETUPVAL                         R10 6
      332 GETTABLEKS                       R10 R10 K41 ["FoundationFixedHeightDateTimePicker"]
      334 JUMPIFNOT                        R10 ; [+13]
      335 JUMPIFNOTEQKN                    R6 K40 [0] ; [+3]
      337 LOADN                            R6 7
      338 JUMP                             ; [0]
      339 LENGTH                           R11 R0
      340 ADD                              R10 R6 R11
      341 LOADN                            R11 50
      342 JUMPIFNOTLT                      R10 R11 ; [+5]
      344 LENGTH                           R12 R0
      345 SUBRK                            R11 K62 [50] R12
      346 SUB                              R10 R11 R6
      347 ADD                              R6 R6 R10
      348 LOADN                            R12 1
      349 MOVE                             R10 R6
      350 LOADN                            R11 1
      351 FORNPREP                         R10
      352 GETIMPORT                        R13 K44 [DateTime.fromLocalTime]
      354 MOVE                             R14 R9
      355 MOVE                             R15 R8
      356 MOVE                             R16 R12
      357 CALL                             R13 3 1
      358 MOVE                             R15 R0
      359 GETUPVAL                         R16 0
      360 GETTABLEKS                       R16 R16 K0 ["createElement"]
      362 GETUPVAL                         R17 7
      363 DUPTABLE                         R18 K50 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      364 GETUPVAL                         R19 8
      365 MOVE                             R20 R13
      366 CALL                             R19 1 1
      367 SETTABLEKS                       R19 R18 K45 ["highlight"]
      369 GETUPVAL                         R19 9
      370 MOVE                             R20 R13
      371 CALL                             R19 1 1
      372 SETTABLEKS                       R19 R18 K46 ["isSelectable"]
      374 GETUPVAL                         R19 10
      375 MOVE                             R20 R13
      376 CALL                             R19 1 1
      377 SETTABLEKS                       R19 R18 K47 ["isSelected"]
      379 LOADK                            R20 K63 ["next-month-day-"]
      380 MOVE                             R21 R12
      381 CONCAT                           R19 R20 R21
      382 SETTABLEKS                       R19 R18 K8 ["key"]
      384 SETTABLEKS                       R1 R18 K23 ["LayoutOrder"]
      386 NEWCLOSURE                       R19 P2
      387 CAPTURE                          UPVAL U11
      388 CAPTURE                          VAL R12
      389 CAPTURE                          VAL R8
      390 CAPTURE                          VAL R9
      391 SETTABLEKS                       R19 R18 K48 ["onActivated"]
      393 FASTCALL1                        TOSTRING R12 ; [+3]
      394 MOVE                             R20 R12
      395 GETIMPORT                        R19 K53 [tostring]
      397 CALL                             R19 1 1
      398 SETTABLEKS                       R19 R18 K30 ["Text"]
      400 LOADK                            R20 K64 ["%*--next-month-calendar-day-%*"]
      401 GETUPVAL                         R22 12
      402 GETTABLEKS                       R22 R22 K49 ["testId"]
      404 MOVE                             R23 R12
      405 NAMECALL                         R20 R20 K55 ["format"]
      407 CALL                             R20 3 1
      408 MOVE                             R19 R20
      409 SETTABLEKS                       R19 R18 K49 ["testId"]
      411 CALL                             R16 2 -1
      412 FASTCALL                         TABLE_INSERT ; [+2]
      413 GETIMPORT                        R14 K28 [table.insert]
      415 CALL                             R14 -1 0
      416 ADDK                             R1 R1 K34 [1]
      417 FORNLOOP                         R10
      418 RETURN                           R0 1

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
       47 GETUPVAL                         R10 3
       48 GETTABLEKS                       R10 R10 K11 ["formatLocalTime"]
       50 GETTABLEKS                       R12 R0 K2 ["defaultDates"]
       52 GETTABLEN                        R11 R12 1
       53 CALL                             R10 1 -1
       54 CALL                             R9 -1 2
       55 GETUPVAL                         R11 2
       56 GETTABLEKS                       R11 R11 K1 ["useState"]
       58 GETTABLEKS                       R14 R0 K2 ["defaultDates"]
       60 GETTABLEN                        R13 R14 2
       61 JUMPIFNOT                        R13 ; [+8]
       62 GETUPVAL                         R12 3
       63 GETTABLEKS                       R12 R12 K11 ["formatLocalTime"]
       65 GETTABLEKS                       R14 R0 K2 ["defaultDates"]
       67 GETTABLEN                        R13 R14 2
       68 CALL                             R12 1 1
       69 JUMP                             ; [+1]
       70 LOADK                            R12 K12 [""]
       71 CALL                             R11 1 2
       72 GETUPVAL                         R13 2
       73 GETTABLEKS                       R13 R13 K10 ["useEffect"]
       75 NEWCLOSURE                       R14 P1
       76 CAPTURE                          VAL R3
       77 NEWTABLE                         R15 0 0
       79 CALL                             R13 2 0
       80 GETUPVAL                         R13 2
       81 GETTABLEKS                       R13 R13 K1 ["useState"]
       83 DUPTABLE                         R14 K15 [{"month", "year"}]
       84 GETTABLEKS                       R16 R0 K2 ["defaultDates"]
       86 GETTABLEN                        R15 R16 1
       87 NAMECALL                         R15 R15 K16 ["ToLocalTime"]
       89 CALL                             R15 1 1
       90 GETTABLEKS                       R15 R15 K17 ["Month"]
       92 SETTABLEKS                       R15 R14 K13 ["month"]
       94 GETTABLEKS                       R16 R0 K2 ["defaultDates"]
       96 GETTABLEN                        R15 R16 1
       97 NAMECALL                         R15 R15 K16 ["ToLocalTime"]
       99 CALL                             R15 1 1
      100 GETTABLEKS                       R15 R15 K18 ["Year"]
      102 SETTABLEKS                       R15 R14 K14 ["year"]
      104 CALL                             R13 1 2
      105 NEWTABLE                         R15 0 0
      107 MOVE                             R16 R4
      108 LOADNIL                          R17
      109 LOADNIL                          R18
      110 FORGPREP                         R16
      111 MOVE                             R22 R15
      112 NAMECALL                         R23 R20 K16 ["ToLocalTime"]
      114 CALL                             R23 1 -1
      115 FASTCALL                         TABLE_INSERT ; [+2]
      116 GETIMPORT                        R21 K21 [table.insert]
      118 CALL                             R21 -1 0
      119 FORGLOOP                         R16 2 ; [-9]
      121 NEWCLOSURE                       R16 P2
      122 CAPTURE                          UPVAL U3
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R0
      127 NEWCLOSURE                       R17 P3
      128 CAPTURE                          UPVAL U3
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R0
      133 GETUPVAL                         R18 2
      134 GETTABLEKS                       R18 R18 K22 ["useCallback"]
      136 NEWCLOSURE                       R19 P4
      137 CAPTURE                          UPVAL U3
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R14
      140 NEWTABLE                         R20 0 1
      142 MOVE                             R21 R13
      143 SETLIST                          R20 R21 1 [1]
      145 CALL                             R18 2 1
      146 GETUPVAL                         R19 2
      147 GETTABLEKS                       R19 R19 K22 ["useCallback"]
      149 NEWCLOSURE                       R20 P5
      150 CAPTURE                          UPVAL U3
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R14
      153 NEWTABLE                         R21 0 1
      155 MOVE                             R22 R13
      156 SETLIST                          R21 R22 1 [1]
      158 CALL                             R19 2 1
      159 GETUPVAL                         R20 2
      160 GETTABLEKS                       R20 R20 K22 ["useCallback"]
      162 NEWCLOSURE                       R21 P6
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R0
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R10
      167 CAPTURE                          UPVAL U3
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R5
      172 NEWTABLE                         R22 0 5
      174 GETTABLEKS                       R23 R0 K23 ["showStartDateTimeCalendarInput"]
      176 GETTABLEKS                       R24 R0 K3 ["showEndDateTimeCalendarInput"]
      178 MOVE                             R25 R4
      179 MOVE                             R26 R7
      180 MOVE                             R27 R6
      181 SETLIST                          R22 R23 5 [1]
      183 CALL                             R20 2 1
      184 GETUPVAL                         R21 2
      185 GETTABLEKS                       R21 R21 K22 ["useCallback"]
      187 NEWCLOSURE                       R22 P7
      188 CAPTURE                          VAL R15
      189 NEWTABLE                         R23 0 1
      191 MOVE                             R24 R15
      192 SETLIST                          R23 R24 1 [1]
      194 CALL                             R21 2 1
      195 GETUPVAL                         R22 2
      196 GETTABLEKS                       R22 R22 K22 ["useCallback"]
      198 NEWCLOSURE                       R23 P8
      199 CAPTURE                          VAL R0
      200 CAPTURE                          VAL R4
      201 CAPTURE                          UPVAL U3
      202 NEWTABLE                         R24 0 2
      204 GETTABLEKS                       R25 R0 K3 ["showEndDateTimeCalendarInput"]
      206 MOVE                             R26 R4
      207 SETLIST                          R24 R25 2 [1]
      209 CALL                             R22 2 1
      210 GETUPVAL                         R23 2
      211 GETTABLEKS                       R23 R23 K22 ["useCallback"]
      213 NEWCLOSURE                       R24 P9
      214 CAPTURE                          VAL R0
      215 CAPTURE                          UPVAL U3
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R4
      218 NEWTABLE                         R25 0 4
      220 MOVE                             R26 R4
      221 GETTABLEKS                       R27 R0 K24 ["selectableDateRange"]
      223 MOVE                             R28 R7
      224 GETTABLEKS                       R29 R0 K3 ["showEndDateTimeCalendarInput"]
      226 SETLIST                          R25 R26 4 [1]
      228 CALL                             R23 2 1
      229 GETUPVAL                         R24 2
      230 GETTABLEKS                       R24 R24 K22 ["useCallback"]
      232 NEWCLOSURE                       R25 P10
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R10
      235 CAPTURE                          UPVAL U3
      236 CAPTURE                          UPVAL U4
      237 CAPTURE                          VAL R0
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R14
      240 CAPTURE                          VAL R5
      241 NEWTABLE                         R26 0 5
      243 GETTABLEKS                       R27 R0 K25 ["onSelectedDateChanged"]
      245 GETTABLEKS                       R28 R0 K3 ["showEndDateTimeCalendarInput"]
      247 MOVE                             R29 R23
      248 MOVE                             R30 R4
      249 MOVE                             R31 R3
      250 SETLIST                          R26 R27 5 [1]
      252 CALL                             R24 2 1
      253 GETUPVAL                         R25 2
      254 GETTABLEKS                       R25 R25 K22 ["useCallback"]
      256 NEWCLOSURE                       R26 P11
      257 CAPTURE                          VAL R3
      258 CAPTURE                          VAL R12
      259 CAPTURE                          UPVAL U3
      260 CAPTURE                          VAL R4
      261 CAPTURE                          VAL R14
      262 CAPTURE                          VAL R5
      263 CAPTURE                          VAL R0
      264 NEWTABLE                         R27 0 4
      266 GETTABLEKS                       R28 R0 K25 ["onSelectedDateChanged"]
      268 MOVE                             R29 R4
      269 MOVE                             R30 R23
      270 MOVE                             R31 R3
      271 SETLIST                          R27 R28 4 [1]
      273 CALL                             R25 2 1
      274 GETUPVAL                         R26 2
      275 GETTABLEKS                       R26 R26 K26 ["useMemo"]
      277 NEWCLOSURE                       R27 P12
      278 CAPTURE                          UPVAL U2
      279 CAPTURE                          VAL R1
      280 CAPTURE                          VAL R2
      281 CAPTURE                          UPVAL U3
      282 CAPTURE                          UPVAL U5
      283 CAPTURE                          VAL R13
      284 CAPTURE                          UPVAL U4
      285 CAPTURE                          UPVAL U6
      286 CAPTURE                          VAL R22
      287 CAPTURE                          VAL R23
      288 CAPTURE                          VAL R21
      289 CAPTURE                          VAL R20
      290 CAPTURE                          VAL R0
      291 NEWTABLE                         R28 0 8
      293 MOVE                             R29 R21
      294 MOVE                             R30 R22
      295 MOVE                             R31 R23
      296 MOVE                             R32 R13
      297 MOVE                             R33 R4
      298 MOVE                             R34 R20
      299 GETTABLEKS                       R35 R0 K24 ["selectableDateRange"]
      301 GETTABLEKS                       R36 R0 K3 ["showEndDateTimeCalendarInput"]
      303 SETLIST                          R28 R29 8 [1]
      305 CALL                             R26 2 1
      306 GETUPVAL                         R27 2
      307 GETTABLEKS                       R27 R27 K22 ["useCallback"]
      309 NEWCLOSURE                       R28 P13
      310 CAPTURE                          VAL R5
      311 CAPTURE                          VAL R0
      312 NEWTABLE                         R29 0 2
      314 MOVE                             R30 R4
      315 GETTABLEKS                       R31 R0 K25 ["onSelectedDateChanged"]
      317 SETLIST                          R29 R30 2 [1]
      319 CALL                             R27 2 1
      320 GETUPVAL                         R28 2
      321 GETTABLEKS                       R28 R28 K27 ["createElement"]
      323 GETUPVAL                         R29 7
      324 DUPTABLE                         R30 K33 [{["LayoutOrder"], ["tag"] = "col auto-y", ["Size"], ["testId"]}]
      325 GETTABLEKS                       R31 R0 K28 ["LayoutOrder"]
      327 SETTABLEKS                       R31 R30 K28 ["LayoutOrder"]
      329 GETIMPORT                        R31 K36 [UDim2.fromOffset]
      331 MOVE                             R32 R2
      332 LOADN                            R33 0
      333 CALL                             R31 2 1
      334 SETTABLEKS                       R31 R30 K31 ["Size"]
      336 GETTABLEKS                       R31 R0 K32 ["testId"]
      338 SETTABLEKS                       R31 R30 K32 ["testId"]
      340 DUPTABLE                         R31 K41 [{"CalendarHeader", "TimeDropdown", "CalendarInputContainer", "WeekAndDates"}]
      341 GETUPVAL                         R32 2
      342 GETTABLEKS                       R32 R32 K27 ["createElement"]
      344 GETUPVAL                         R33 7
      345 DUPTABLE                         R34 K44 [{["LayoutOrder"] = 1, ["tag"] = "row size-full-0 auto-y gap-small align-y-center padding-y-small"}]
      346 DUPTABLE                         R35 K49 [{"PreviousMonthButton", "MonthText", "YearText", "NextMonthButton"}]
      347 GETUPVAL                         R36 2
      348 GETTABLEKS                       R36 R36 K27 ["createElement"]
      350 GETUPVAL                         R37 8
      351 DUPTABLE                         R38 K55 [{["LayoutOrder"] = 1, ["icon"], ["isCircular"] = True, ["onActivated"], ["size"], ["variant"], ["testId"]}]
      352 GETUPVAL                         R39 9
      353 GETTABLEKS                       R39 R39 K56 ["ChevronSmallLeft"]
      355 SETTABLEKS                       R39 R38 K50 ["icon"]
      357 SETTABLEKS                       R19 R38 K52 ["onActivated"]
      359 GETUPVAL                         R39 10
      360 GETTABLEKS                       R39 R39 K57 ["Small"]
      362 SETTABLEKS                       R39 R38 K53 ["size"]
      364 GETUPVAL                         R39 11
      365 GETTABLEKS                       R39 R39 K58 ["Utility"]
      367 SETTABLEKS                       R39 R38 K54 ["variant"]
      369 LOADK                            R40 K59 ["%*--previous-month-button"]
      370 GETTABLEKS                       R42 R0 K32 ["testId"]
      372 NAMECALL                         R40 R40 K60 ["format"]
      374 CALL                             R40 2 1
      375 MOVE                             R39 R40
      376 SETTABLEKS                       R39 R38 K32 ["testId"]
      378 CALL                             R36 2 1
      379 SETTABLEKS                       R36 R35 K45 ["PreviousMonthButton"]
      381 GETUPVAL                         R36 2
      382 GETTABLEKS                       R36 R36 K27 ["createElement"]
      384 GETUPVAL                         R37 5
      385 DUPTABLE                         R38 K64 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "grow text-align-x-right auto-xy", ["testId"]}]
      386 GETUPVAL                         R40 3
      387 GETTABLEKS                       R40 R40 K65 ["monthMap"]
      389 GETTABLEKS                       R41 R13 K13 ["month"]
      391 GETTABLE                         R39 R40 R41
      392 SETTABLEKS                       R39 R38 K62 ["Text"]
      394 LOADK                            R40 K66 ["%*--month-text"]
      395 GETTABLEKS                       R42 R0 K32 ["testId"]
      397 NAMECALL                         R40 R40 K60 ["format"]
      399 CALL                             R40 2 1
      400 MOVE                             R39 R40
      401 SETTABLEKS                       R39 R38 K32 ["testId"]
      403 CALL                             R36 2 1
      404 SETTABLEKS                       R36 R35 K46 ["MonthText"]
      406 GETUPVAL                         R36 2
      407 GETTABLEKS                       R36 R36 K27 ["createElement"]
      409 GETUPVAL                         R37 5
      410 DUPTABLE                         R38 K69 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "grow text-align-x-left auto-xy", ["testId"]}]
      411 GETTABLEKS                       R40 R13 K14 ["year"]
      413 FASTCALL1                        TOSTRING R40 ; [+2]
      414 GETIMPORT                        R39 K71 [tostring]
      416 CALL                             R39 1 1
      417 SETTABLEKS                       R39 R38 K62 ["Text"]
      419 LOADK                            R40 K72 ["%*--year-text"]
      420 GETTABLEKS                       R42 R0 K32 ["testId"]
      422 NAMECALL                         R40 R40 K60 ["format"]
      424 CALL                             R40 2 1
      425 MOVE                             R39 R40
      426 SETTABLEKS                       R39 R38 K32 ["testId"]
      428 CALL                             R36 2 1
      429 SETTABLEKS                       R36 R35 K47 ["YearText"]
      431 GETUPVAL                         R36 2
      432 GETTABLEKS                       R36 R36 K27 ["createElement"]
      434 GETUPVAL                         R37 8
      435 DUPTABLE                         R38 K74 [{["LayoutOrder"] = 4, ["icon"], ["isCircular"] = True, ["onActivated"], ["size"], ["variant"], ["testId"]}]
      436 GETUPVAL                         R39 9
      437 GETTABLEKS                       R39 R39 K75 ["ChevronSmallRight"]
      439 SETTABLEKS                       R39 R38 K50 ["icon"]
      441 SETTABLEKS                       R18 R38 K52 ["onActivated"]
      443 GETUPVAL                         R39 10
      444 GETTABLEKS                       R39 R39 K57 ["Small"]
      446 SETTABLEKS                       R39 R38 K53 ["size"]
      448 GETUPVAL                         R39 11
      449 GETTABLEKS                       R39 R39 K58 ["Utility"]
      451 SETTABLEKS                       R39 R38 K54 ["variant"]
      453 LOADK                            R40 K76 ["%*--next-month-button"]
      454 GETTABLEKS                       R42 R0 K32 ["testId"]
      456 NAMECALL                         R40 R40 K60 ["format"]
      458 CALL                             R40 2 1
      459 MOVE                             R39 R40
      460 SETTABLEKS                       R39 R38 K32 ["testId"]
      462 CALL                             R36 2 1
      463 SETTABLEKS                       R36 R35 K48 ["NextMonthButton"]
      465 CALL                             R32 3 1
      466 SETTABLEKS                       R32 R31 K37 ["CalendarHeader"]
      468 GETTABLEKS                       R33 R0 K77 ["showTimeDropdown"]
      470 JUMPIFNOT                        R33 ; [+28]
      471 GETUPVAL                         R32 2
      472 GETTABLEKS                       R32 R32 K27 ["createElement"]
      474 GETUPVAL                         R33 12
      475 DUPTABLE                         R34 K82 [{["dateTime"], ["layoutOrder"] = 2, ["onItemChanged"], ["width"], ["testId"]}]
      476 GETTABLEN                        R35 R4 1
      477 SETTABLEKS                       R35 R34 K78 ["dateTime"]
      479 SETTABLEKS                       R27 R34 K80 ["onItemChanged"]
      481 GETIMPORT                        R35 K85 [UDim.new]
      483 LOADN                            R36 1
      484 LOADN                            R37 0
      485 CALL                             R35 2 1
      486 SETTABLEKS                       R35 R34 K81 ["width"]
      488 LOADK                            R36 K86 ["%*--time-dropdown"]
      489 GETTABLEKS                       R38 R0 K32 ["testId"]
      491 NAMECALL                         R36 R36 K60 ["format"]
      493 CALL                             R36 2 1
      494 MOVE                             R35 R36
      495 SETTABLEKS                       R35 R34 K32 ["testId"]
      497 CALL                             R32 2 1
      498 JUMP                             ; [+1]
      499 LOADNIL                          R32
      500 SETTABLEKS                       R32 R31 K38 ["TimeDropdown"]
      502 GETTABLEKS                       R33 R0 K23 ["showStartDateTimeCalendarInput"]
      504 JUMPIFNOT                        R33 ; [+133]
      505 GETUPVAL                         R32 2
      506 GETTABLEKS                       R32 R32 K27 ["createElement"]
      508 GETUPVAL                         R33 7
      509 DUPTABLE                         R34 K88 [{["LayoutOrder"] = 3, ["tag"] = "flex-x-fill size-full-0 auto-y row gap-small align-y-center", ["testId"]}]
      510 LOADK                            R36 K89 ["%*--input"]
      511 GETTABLEKS                       R38 R0 K32 ["testId"]
      513 NAMECALL                         R36 R36 K60 ["format"]
      515 CALL                             R36 2 1
      516 MOVE                             R35 R36
      517 SETTABLEKS                       R35 R34 K32 ["testId"]
      519 DUPTABLE                         R35 K93 [{"StartDateTime", "InputSeparator", "EndDateTime"}]
      520 GETUPVAL                         R36 2
      521 GETTABLEKS                       R36 R36 K27 ["createElement"]
      523 GETUPVAL                         R37 13
      524 DUPTABLE                         R38 K102 [{["hasError"], ["label"] = "", ["LayoutOrder"] = 1, ["onChanged"], ["onFocusLost"], ["placeholder"] = "MM/DD/YYYY", ["size"], ["text"], ["onFocusGained"], ["testId"]}]
      525 LOADB                            R39 0
      526 JUMPIFEQKS                       R9 K12 [""] ; [+10]
      528 GETUPVAL                         R40 3
      529 GETTABLEKS                       R40 R40 K103 ["getDateTimeFromText"]
      531 MOVE                             R41 R9
      532 CALL                             R40 1 1
      533 JUMPIFEQKNIL                     R40 ; [+2]
      535 LOADB                            R39 0 +1
      536 LOADB                            R39 1
      537 SETTABLEKS                       R39 R38 K94 ["hasError"]
      539 SETTABLEKS                       R24 R38 K96 ["onChanged"]
      541 SETTABLEKS                       R16 R38 K97 ["onFocusLost"]
      543 GETUPVAL                         R39 10
      544 GETTABLEKS                       R39 R39 K104 ["Medium"]
      546 SETTABLEKS                       R39 R38 K53 ["size"]
      548 SETTABLEKS                       R9 R38 K100 ["text"]
      550 NEWCLOSURE                       R39 P14
      551 CAPTURE                          VAL R8
      552 SETTABLEKS                       R39 R38 K101 ["onFocusGained"]
      554 LOADK                            R40 K105 ["%*--start-datetime-input"]
      555 GETTABLEKS                       R42 R0 K32 ["testId"]
      557 NAMECALL                         R40 R40 K60 ["format"]
      559 CALL                             R40 2 1
      560 MOVE                             R39 R40
      561 SETTABLEKS                       R39 R38 K32 ["testId"]
      563 CALL                             R36 2 1
      564 SETTABLEKS                       R36 R35 K90 ["StartDateTime"]
      566 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      568 JUMPIFNOT                        R37 ; [+7]
      569 GETUPVAL                         R36 2
      570 GETTABLEKS                       R36 R36 K27 ["createElement"]
      572 GETUPVAL                         R37 5
      573 DUPTABLE                         R38 K108 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy", ["Text"] = "-"}]
      574 CALL                             R36 2 1
      575 JUMP                             ; [+1]
      576 LOADNIL                          R36
      577 SETTABLEKS                       R36 R35 K91 ["InputSeparator"]
      579 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      581 JUMPIFNOT                        R37 ; [+51]
      582 GETUPVAL                         R36 2
      583 GETTABLEKS                       R36 R36 K27 ["createElement"]
      585 GETUPVAL                         R37 13
      586 DUPTABLE                         R38 K111 [{["hasError"], ["isDisabled"], ["label"] = "", ["LayoutOrder"] = 3, ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["placeholder"] = "MM/DD/YYYY", ["size"], ["text"], ["textBoxRef"], ["testId"]}]
      587 LOADB                            R39 0
      588 JUMPIFEQKS                       R11 K12 [""] ; [+10]
      590 GETUPVAL                         R40 3
      591 GETTABLEKS                       R40 R40 K103 ["getDateTimeFromText"]
      593 MOVE                             R41 R11
      594 CALL                             R40 1 1
      595 JUMPIFEQKNIL                     R40 ; [+2]
      597 LOADB                            R39 0 +1
      598 LOADB                            R39 1
      599 SETTABLEKS                       R39 R38 K94 ["hasError"]
      601 GETTABLEN                        R40 R4 1
      602 NOT                              R39 R40
      603 SETTABLEKS                       R39 R38 K109 ["isDisabled"]
      605 SETTABLEKS                       R25 R38 K96 ["onChanged"]
      607 NEWCLOSURE                       R39 P15
      608 CAPTURE                          VAL R8
      609 SETTABLEKS                       R39 R38 K101 ["onFocusGained"]
      611 SETTABLEKS                       R17 R38 K97 ["onFocusLost"]
      613 GETUPVAL                         R39 10
      614 GETTABLEKS                       R39 R39 K104 ["Medium"]
      616 SETTABLEKS                       R39 R38 K53 ["size"]
      618 SETTABLEKS                       R11 R38 K100 ["text"]
      620 SETTABLEKS                       R6 R38 K110 ["textBoxRef"]
      622 LOADK                            R40 K112 ["%*--end-datetime-input"]
      623 GETTABLEKS                       R42 R0 K32 ["testId"]
      625 NAMECALL                         R40 R40 K60 ["format"]
      627 CALL                             R40 2 1
      628 MOVE                             R39 R40
      629 SETTABLEKS                       R39 R38 K32 ["testId"]
      631 CALL                             R36 2 1
      632 JUMP                             ; [+1]
      633 LOADNIL                          R36
      634 SETTABLEKS                       R36 R35 K92 ["EndDateTime"]
      636 CALL                             R32 3 1
      637 JUMP                             ; [+1]
      638 LOADNIL                          R32
      639 SETTABLEKS                       R32 R31 K39 ["CalendarInputContainer"]
      641 GETUPVAL                         R32 2
      642 GETTABLEKS                       R32 R32 K27 ["createElement"]
      644 GETUPVAL                         R33 7
      645 DUPTABLE                         R34 K114 [{["LayoutOrder"] = 4, ["tag"] = "size-full-0 auto-y", ["testId"]}]
      646 LOADK                            R36 K115 ["%*--weekAndDates"]
      647 GETTABLEKS                       R38 R0 K32 ["testId"]
      649 NAMECALL                         R36 R36 K60 ["format"]
      651 CALL                             R36 2 1
      652 MOVE                             R35 R36
      653 SETTABLEKS                       R35 R34 K32 ["testId"]
      655 MOVE                             R35 R26
      656 CALL                             R32 3 1
      657 SETTABLEKS                       R32 R31 K40 ["WeekAndDates"]
      659 CALL                             R28 3 -1
      660 RETURN                           R28 -1

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
       69 GETTABLEKS                       R12 R0 K16 ["Components"]
       71 GETTABLEKS                       R12 R12 K19 ["Text"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R13 R0 K16 ["Components"]
       78 GETTABLEKS                       R13 R13 K20 ["TextInput"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETIMPORT                        R14 K1 [script]
       85 GETTABLEKS                       R14 R14 K4 ["Parent"]
       87 GETTABLEKS                       R14 R14 K21 ["TimeDropdown"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K6 [require]
       92 GETTABLEKS                       R15 R0 K16 ["Components"]
       94 GETTABLEKS                       R15 R15 K22 ["View"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETTABLEKS                       R16 R0 K14 ["Utility"]
      101 GETTABLEKS                       R16 R16 K23 ["useScaledValue"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K6 [require]
      106 GETTABLEKS                       R17 R0 K24 ["Providers"]
      108 GETTABLEKS                       R17 R17 K25 ["Style"]
      110 GETTABLEKS                       R17 R17 K26 ["useTokens"]
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
