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
       13 JUMPIFNOT                        R1 ; [+39]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["showEndDateTimeCalendarInput"]
       17 JUMPIFNOT                        R3 ; [+8]
       18 NEWTABLE                         R2 0 2
       20 MOVE                             R3 R1
       21 GETUPVAL                         R5 4
       22 GETTABLEN                        R4 R5 2
       23 SETLIST                          R2 R3 2 [1]
       25 JUMP                             ; [+5]
       26 NEWTABLE                         R2 0 1
       28 MOVE                             R3 R1
       29 SETLIST                          R2 R3 1 [1]
       31 NAMECALL                         R3 R1 K3 ["ToLocalTime"]
       33 CALL                             R3 1 1
       34 GETUPVAL                         R4 5
       35 DUPTABLE                         R5 K6 [{"month", "year"}]
       36 GETTABLEKS                       R6 R3 K7 ["Month"]
       38 SETTABLEKS                       R6 R5 K4 ["month"]
       40 GETTABLEKS                       R6 R3 K8 ["Year"]
       42 SETTABLEKS                       R6 R5 K5 ["year"]
       44 CALL                             R4 1 0
       45 GETUPVAL                         R4 6
       46 MOVE                             R5 R2
       47 CALL                             R4 1 0
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R4 R4 K9 ["onSelectedDateChanged"]
       51 MOVE                             R5 R2
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

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
      120 MOVE                             R7 R6
      121 LOADN                            R8 1
      122 FORNPREP                         R7
      123 SUB                              R11 R5 R6
      124 ADD                              R10 R11 R9
      125 GETIMPORT                        R11 K43 [DateTime.fromLocalTime]
      127 MOVE                             R12 R4
      128 MOVE                             R13 R3
      129 MOVE                             R14 R10
      130 CALL                             R11 3 1
      131 MOVE                             R13 R0
      132 GETUPVAL                         R14 0
      133 GETTABLEKS                       R14 R14 K0 ["createElement"]
      135 GETUPVAL                         R15 6
      136 DUPTABLE                         R16 K49 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      137 GETUPVAL                         R17 7
      138 MOVE                             R18 R11
      139 CALL                             R17 1 1
      140 SETTABLEKS                       R17 R16 K44 ["highlight"]
      142 GETUPVAL                         R17 8
      143 MOVE                             R18 R11
      144 CALL                             R17 1 1
      145 SETTABLEKS                       R17 R16 K45 ["isSelectable"]
      147 GETUPVAL                         R17 9
      148 MOVE                             R18 R11
      149 CALL                             R17 1 1
      150 SETTABLEKS                       R17 R16 K46 ["isSelected"]
      152 LOADK                            R18 K50 ["prev-month-day-"]
      153 MOVE                             R19 R10
      154 CONCAT                           R17 R18 R19
      155 SETTABLEKS                       R17 R16 K8 ["key"]
      157 SETTABLEKS                       R1 R16 K23 ["LayoutOrder"]
      159 NEWCLOSURE                       R17 P0
      160 CAPTURE                          UPVAL U10
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R4
      164 SETTABLEKS                       R17 R16 K47 ["onActivated"]
      166 FASTCALL1                        TOSTRING R10 ; [+3]
      167 MOVE                             R18 R10
      168 GETIMPORT                        R17 K52 [tostring]
      170 CALL                             R17 1 1
      171 SETTABLEKS                       R17 R16 K30 ["Text"]
      173 LOADK                            R18 K53 ["%*--prev-month-calendar-day-%*"]
      174 GETUPVAL                         R20 11
      175 GETTABLEKS                       R20 R20 K48 ["testId"]
      177 MOVE                             R21 R10
      178 NAMECALL                         R18 R18 K54 ["format"]
      180 CALL                             R18 3 1
      181 MOVE                             R17 R18
      182 SETTABLEKS                       R17 R16 K48 ["testId"]
      184 CALL                             R14 2 -1
      185 FASTCALL                         TABLE_INSERT ; [+2]
      186 GETIMPORT                        R12 K28 [table.insert]
      188 CALL                             R12 -1 0
      189 ADDK                             R1 R1 K34 [1]
      190 FORNLOOP                         R7
      191 LOADN                            R9 1
      192 GETUPVAL                         R10 3
      193 GETTABLEKS                       R10 R10 K39 ["getDaysInMonth"]
      195 GETUPVAL                         R11 5
      196 GETTABLEKS                       R11 R11 K36 ["month"]
      198 GETUPVAL                         R12 5
      199 GETTABLEKS                       R12 R12 K37 ["year"]
      201 CALL                             R10 2 1
      202 MOVE                             R7 R10
      203 LOADN                            R8 1
      204 FORNPREP                         R7
      205 GETUPVAL                         R10 8
      206 GETIMPORT                        R11 K43 [DateTime.fromLocalTime]
      208 GETUPVAL                         R12 5
      209 GETTABLEKS                       R12 R12 K37 ["year"]
      211 GETUPVAL                         R13 5
      212 GETTABLEKS                       R13 R13 K36 ["month"]
      214 MOVE                             R14 R9
      215 CALL                             R11 3 -1
      216 CALL                             R10 -1 1
      217 GETUPVAL                         R11 9
      218 GETIMPORT                        R12 K43 [DateTime.fromLocalTime]
      220 GETUPVAL                         R13 5
      221 GETTABLEKS                       R13 R13 K37 ["year"]
      223 GETUPVAL                         R14 5
      224 GETTABLEKS                       R14 R14 K36 ["month"]
      226 MOVE                             R15 R9
      227 CALL                             R12 3 -1
      228 CALL                             R11 -1 1
      229 MOVE                             R13 R0
      230 GETUPVAL                         R14 0
      231 GETTABLEKS                       R14 R14 K0 ["createElement"]
      233 GETUPVAL                         R15 6
      234 DUPTABLE                         R16 K56 [{"emphasizeText", "highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      235 MOVE                             R17 R10
      236 JUMPIFNOT                        R17 ; [+1]
      237 NOT                              R17 R11
      238 SETTABLEKS                       R17 R16 K55 ["emphasizeText"]
      240 GETUPVAL                         R17 7
      241 GETIMPORT                        R18 K43 [DateTime.fromLocalTime]
      243 GETUPVAL                         R19 5
      244 GETTABLEKS                       R19 R19 K37 ["year"]
      246 GETUPVAL                         R20 5
      247 GETTABLEKS                       R20 R20 K36 ["month"]
      249 MOVE                             R21 R9
      250 CALL                             R18 3 -1
      251 CALL                             R17 -1 1
      252 SETTABLEKS                       R17 R16 K44 ["highlight"]
      254 SETTABLEKS                       R10 R16 K45 ["isSelectable"]
      256 SETTABLEKS                       R11 R16 K46 ["isSelected"]
      258 LOADK                            R18 K57 ["current-month-day-"]
      259 MOVE                             R19 R9
      260 CONCAT                           R17 R18 R19
      261 SETTABLEKS                       R17 R16 K8 ["key"]
      263 SETTABLEKS                       R1 R16 K23 ["LayoutOrder"]
      265 NEWCLOSURE                       R17 P1
      266 CAPTURE                          UPVAL U10
      267 CAPTURE                          VAL R9
      268 CAPTURE                          UPVAL U5
      269 SETTABLEKS                       R17 R16 K47 ["onActivated"]
      271 FASTCALL1                        TOSTRING R9 ; [+3]
      272 MOVE                             R18 R9
      273 GETIMPORT                        R17 K52 [tostring]
      275 CALL                             R17 1 1
      276 SETTABLEKS                       R17 R16 K30 ["Text"]
      278 LOADK                            R18 K58 ["%*--current-month-calendar-day-%*"]
      279 GETUPVAL                         R20 11
      280 GETTABLEKS                       R20 R20 K48 ["testId"]
      282 MOVE                             R21 R9
      283 NAMECALL                         R18 R18 K54 ["format"]
      285 CALL                             R18 3 1
      286 MOVE                             R17 R18
      287 SETTABLEKS                       R17 R16 K48 ["testId"]
      289 CALL                             R14 2 -1
      290 FASTCALL                         TABLE_INSERT ; [+2]
      291 GETIMPORT                        R12 K28 [table.insert]
      293 CALL                             R12 -1 0
      294 ADDK                             R1 R1 K34 [1]
      295 FORNLOOP                         R7
      296 GETUPVAL                         R7 3
      297 GETTABLEKS                       R7 R7 K59 ["getLastDayOfWeek"]
      299 GETUPVAL                         R8 5
      300 GETTABLEKS                       R8 R8 K36 ["month"]
      302 GETUPVAL                         R9 5
      303 GETTABLEKS                       R9 R9 K37 ["year"]
      305 CALL                             R7 2 1
      306 GETUPVAL                         R8 3
      307 GETTABLEKS                       R8 R8 K60 ["getNextMonthInfo"]
      309 GETUPVAL                         R9 5
      310 GETTABLEKS                       R9 R9 K36 ["month"]
      312 GETUPVAL                         R10 5
      313 GETTABLEKS                       R10 R10 K37 ["year"]
      315 CALL                             R8 2 2
      316 ADDK                             R10 R7 K34 [1]
      317 SUBRK                            R6 K6 [7] R10
      318 JUMPIFNOTEQKN                    R6 K40 [0] ; [+3]
      320 LOADN                            R6 7
      321 JUMP                             ; [0]
      322 LENGTH                           R11 R0
      323 ADD                              R10 R6 R11
      324 LOADN                            R11 50
      325 JUMPIFNOTLT                      R10 R11 ; [+5]
      327 LENGTH                           R12 R0
      328 SUBRK                            R11 K61 [50] R12
      329 SUB                              R10 R11 R6
      330 ADD                              R6 R6 R10
      331 LOADN                            R12 1
      332 MOVE                             R10 R6
      333 LOADN                            R11 1
      334 FORNPREP                         R10
      335 GETIMPORT                        R13 K43 [DateTime.fromLocalTime]
      337 MOVE                             R14 R9
      338 MOVE                             R15 R8
      339 MOVE                             R16 R12
      340 CALL                             R13 3 1
      341 MOVE                             R15 R0
      342 GETUPVAL                         R16 0
      343 GETTABLEKS                       R16 R16 K0 ["createElement"]
      345 GETUPVAL                         R17 6
      346 DUPTABLE                         R18 K49 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      347 GETUPVAL                         R19 7
      348 MOVE                             R20 R13
      349 CALL                             R19 1 1
      350 SETTABLEKS                       R19 R18 K44 ["highlight"]
      352 GETUPVAL                         R19 8
      353 MOVE                             R20 R13
      354 CALL                             R19 1 1
      355 SETTABLEKS                       R19 R18 K45 ["isSelectable"]
      357 GETUPVAL                         R19 9
      358 MOVE                             R20 R13
      359 CALL                             R19 1 1
      360 SETTABLEKS                       R19 R18 K46 ["isSelected"]
      362 LOADK                            R20 K62 ["next-month-day-"]
      363 MOVE                             R21 R12
      364 CONCAT                           R19 R20 R21
      365 SETTABLEKS                       R19 R18 K8 ["key"]
      367 SETTABLEKS                       R1 R18 K23 ["LayoutOrder"]
      369 NEWCLOSURE                       R19 P2
      370 CAPTURE                          UPVAL U10
      371 CAPTURE                          VAL R12
      372 CAPTURE                          VAL R8
      373 CAPTURE                          VAL R9
      374 SETTABLEKS                       R19 R18 K47 ["onActivated"]
      376 FASTCALL1                        TOSTRING R12 ; [+3]
      377 MOVE                             R20 R12
      378 GETIMPORT                        R19 K52 [tostring]
      380 CALL                             R19 1 1
      381 SETTABLEKS                       R19 R18 K30 ["Text"]
      383 LOADK                            R20 K63 ["%*--next-month-calendar-day-%*"]
      384 GETUPVAL                         R22 11
      385 GETTABLEKS                       R22 R22 K48 ["testId"]
      387 MOVE                             R23 R12
      388 NAMECALL                         R20 R20 K54 ["format"]
      390 CALL                             R20 3 1
      391 MOVE                             R19 R20
      392 SETTABLEKS                       R19 R18 K48 ["testId"]
      394 CALL                             R16 2 -1
      395 FASTCALL                         TABLE_INSERT ; [+2]
      396 GETIMPORT                        R14 K28 [table.insert]
      398 CALL                             R14 -1 0
      399 ADDK                             R1 R1 K34 [1]
      400 FORNLOOP                         R10
      401 RETURN                           R0 1

PROTO_17:
        0 GETIMPORT                        R1 K2 [DateTime.fromUnixTimestamp]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K5 [os.date]
        6 LOADK                            R3 K6 ["*t"]
        7 MOVE                             R4 R0
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R2 R2 K7 ["isdst"]
       11 JUMPIFNOT                        R2 ; [+36]
       12 GETUPVAL                         R3 0
       13 JUMPIFNOT                        R3 ; [+8]
       14 GETTABLEKS                       R3 R1 K8 ["UnixTimestamp"]
       16 GETIMPORT                        R4 K2 [DateTime.fromUnixTimestamp]
       18 SUBK                             R5 R3 K9 [3600]
       19 CALL                             R4 1 1
       20 MOVE                             R1 R4
       21 JUMP                             ; [+26]
       22 NAMECALL                         R3 R1 K10 ["ToLocalTime"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K12 [DateTime.fromLocalTime]
       27 GETTABLEKS                       R5 R3 K13 ["Year"]
       29 GETTABLEKS                       R6 R3 K14 ["Month"]
       31 GETTABLEKS                       R7 R3 K15 ["Day"]
       33 GETTABLEKS                       R9 R3 K16 ["Hour"]
       35 JUMPIFNOTEQKN                    R9 K17 [0] ; [+3]
       37 LOADN                            R8 23
       38 JUMP                             ; [+3]
       39 GETTABLEKS                       R9 R3 K16 ["Hour"]
       41 SUBK                             R8 R9 K18 [1]
       42 GETTABLEKS                       R9 R3 K19 ["Minute"]
       44 GETTABLEKS                       R10 R3 K20 ["Second"]
       46 CALL                             R4 6 1
       47 MOVE                             R1 R4
       48 GETUPVAL                         R3 1
       49 NEWTABLE                         R4 0 1
       51 MOVE                             R5 R1
       52 SETLIST                          R4 R5 1 [1]
       54 CALL                             R3 1 0
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K21 ["onSelectedDateChanged"]
       58 NEWTABLE                         R4 0 1
       60 MOVE                             R5 R1
       61 SETLIST                          R4 R5 1 [1]
       63 CALL                             R3 1 0
       64 RETURN                           R0 0

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
      236 CAPTURE                          VAL R0
      237 CAPTURE                          VAL R4
      238 CAPTURE                          VAL R14
      239 CAPTURE                          VAL R5
      240 NEWTABLE                         R26 0 5
      242 GETTABLEKS                       R27 R0 K25 ["onSelectedDateChanged"]
      244 GETTABLEKS                       R28 R0 K3 ["showEndDateTimeCalendarInput"]
      246 MOVE                             R29 R23
      247 MOVE                             R30 R4
      248 MOVE                             R31 R3
      249 SETLIST                          R26 R27 5 [1]
      251 CALL                             R24 2 1
      252 GETUPVAL                         R25 2
      253 GETTABLEKS                       R25 R25 K22 ["useCallback"]
      255 NEWCLOSURE                       R26 P11
      256 CAPTURE                          VAL R3
      257 CAPTURE                          VAL R12
      258 CAPTURE                          UPVAL U3
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R14
      261 CAPTURE                          VAL R5
      262 CAPTURE                          VAL R0
      263 NEWTABLE                         R27 0 4
      265 GETTABLEKS                       R28 R0 K25 ["onSelectedDateChanged"]
      267 MOVE                             R29 R4
      268 MOVE                             R30 R23
      269 MOVE                             R31 R3
      270 SETLIST                          R27 R28 4 [1]
      272 CALL                             R25 2 1
      273 GETUPVAL                         R26 2
      274 GETTABLEKS                       R26 R26 K26 ["useMemo"]
      276 NEWCLOSURE                       R27 P12
      277 CAPTURE                          UPVAL U2
      278 CAPTURE                          VAL R1
      279 CAPTURE                          VAL R2
      280 CAPTURE                          UPVAL U3
      281 CAPTURE                          UPVAL U4
      282 CAPTURE                          VAL R13
      283 CAPTURE                          UPVAL U5
      284 CAPTURE                          VAL R22
      285 CAPTURE                          VAL R23
      286 CAPTURE                          VAL R21
      287 CAPTURE                          VAL R20
      288 CAPTURE                          VAL R0
      289 NEWTABLE                         R28 0 8
      291 MOVE                             R29 R21
      292 MOVE                             R30 R22
      293 MOVE                             R31 R23
      294 MOVE                             R32 R13
      295 MOVE                             R33 R4
      296 MOVE                             R34 R20
      297 GETTABLEKS                       R35 R0 K24 ["selectableDateRange"]
      299 GETTABLEKS                       R36 R0 K3 ["showEndDateTimeCalendarInput"]
      301 SETLIST                          R28 R29 8 [1]
      303 CALL                             R26 2 1
      304 GETUPVAL                         R27 2
      305 GETTABLEKS                       R27 R27 K22 ["useCallback"]
      307 NEWCLOSURE                       R28 P13
      308 CAPTURE                          UPVAL U6
      309 CAPTURE                          VAL R5
      310 CAPTURE                          VAL R0
      311 NEWTABLE                         R29 0 2
      313 MOVE                             R30 R4
      314 GETTABLEKS                       R31 R0 K25 ["onSelectedDateChanged"]
      316 SETLIST                          R29 R30 2 [1]
      318 CALL                             R27 2 1
      319 GETUPVAL                         R28 2
      320 GETTABLEKS                       R28 R28 K27 ["createElement"]
      322 GETUPVAL                         R29 7
      323 DUPTABLE                         R30 K33 [{["LayoutOrder"], ["tag"] = "col auto-y", ["Size"], ["testId"]}]
      324 GETTABLEKS                       R31 R0 K28 ["LayoutOrder"]
      326 SETTABLEKS                       R31 R30 K28 ["LayoutOrder"]
      328 GETIMPORT                        R31 K36 [UDim2.fromOffset]
      330 MOVE                             R32 R2
      331 LOADN                            R33 0
      332 CALL                             R31 2 1
      333 SETTABLEKS                       R31 R30 K31 ["Size"]
      335 GETTABLEKS                       R31 R0 K32 ["testId"]
      337 SETTABLEKS                       R31 R30 K32 ["testId"]
      339 DUPTABLE                         R31 K41 [{"CalendarHeader", "TimeDropdown", "CalendarInputContainer", "WeekAndDates"}]
      340 GETUPVAL                         R32 2
      341 GETTABLEKS                       R32 R32 K27 ["createElement"]
      343 GETUPVAL                         R33 7
      344 DUPTABLE                         R34 K44 [{["LayoutOrder"] = 1, ["tag"] = "row size-full-0 auto-y gap-small align-y-center padding-y-small"}]
      345 DUPTABLE                         R35 K49 [{"PreviousMonthButton", "MonthText", "YearText", "NextMonthButton"}]
      346 GETUPVAL                         R36 2
      347 GETTABLEKS                       R36 R36 K27 ["createElement"]
      349 GETUPVAL                         R37 8
      350 DUPTABLE                         R38 K55 [{["LayoutOrder"] = 1, ["icon"], ["isCircular"] = True, ["onActivated"], ["size"], ["variant"], ["testId"]}]
      351 GETUPVAL                         R39 9
      352 GETTABLEKS                       R39 R39 K56 ["ChevronSmallLeft"]
      354 SETTABLEKS                       R39 R38 K50 ["icon"]
      356 SETTABLEKS                       R19 R38 K52 ["onActivated"]
      358 GETUPVAL                         R39 10
      359 GETTABLEKS                       R39 R39 K57 ["Small"]
      361 SETTABLEKS                       R39 R38 K53 ["size"]
      363 GETUPVAL                         R39 11
      364 GETTABLEKS                       R39 R39 K58 ["Utility"]
      366 SETTABLEKS                       R39 R38 K54 ["variant"]
      368 LOADK                            R40 K59 ["%*--previous-month-button"]
      369 GETTABLEKS                       R42 R0 K32 ["testId"]
      371 NAMECALL                         R40 R40 K60 ["format"]
      373 CALL                             R40 2 1
      374 MOVE                             R39 R40
      375 SETTABLEKS                       R39 R38 K32 ["testId"]
      377 CALL                             R36 2 1
      378 SETTABLEKS                       R36 R35 K45 ["PreviousMonthButton"]
      380 GETUPVAL                         R36 2
      381 GETTABLEKS                       R36 R36 K27 ["createElement"]
      383 GETUPVAL                         R37 4
      384 DUPTABLE                         R38 K64 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "grow text-align-x-right auto-xy", ["testId"]}]
      385 GETUPVAL                         R40 3
      386 GETTABLEKS                       R40 R40 K65 ["monthMap"]
      388 GETTABLEKS                       R41 R13 K13 ["month"]
      390 GETTABLE                         R39 R40 R41
      391 SETTABLEKS                       R39 R38 K62 ["Text"]
      393 LOADK                            R40 K66 ["%*--month-text"]
      394 GETTABLEKS                       R42 R0 K32 ["testId"]
      396 NAMECALL                         R40 R40 K60 ["format"]
      398 CALL                             R40 2 1
      399 MOVE                             R39 R40
      400 SETTABLEKS                       R39 R38 K32 ["testId"]
      402 CALL                             R36 2 1
      403 SETTABLEKS                       R36 R35 K46 ["MonthText"]
      405 GETUPVAL                         R36 2
      406 GETTABLEKS                       R36 R36 K27 ["createElement"]
      408 GETUPVAL                         R37 4
      409 DUPTABLE                         R38 K69 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "grow text-align-x-left auto-xy", ["testId"]}]
      410 GETTABLEKS                       R40 R13 K14 ["year"]
      412 FASTCALL1                        TOSTRING R40 ; [+2]
      413 GETIMPORT                        R39 K71 [tostring]
      415 CALL                             R39 1 1
      416 SETTABLEKS                       R39 R38 K62 ["Text"]
      418 LOADK                            R40 K72 ["%*--year-text"]
      419 GETTABLEKS                       R42 R0 K32 ["testId"]
      421 NAMECALL                         R40 R40 K60 ["format"]
      423 CALL                             R40 2 1
      424 MOVE                             R39 R40
      425 SETTABLEKS                       R39 R38 K32 ["testId"]
      427 CALL                             R36 2 1
      428 SETTABLEKS                       R36 R35 K47 ["YearText"]
      430 GETUPVAL                         R36 2
      431 GETTABLEKS                       R36 R36 K27 ["createElement"]
      433 GETUPVAL                         R37 8
      434 DUPTABLE                         R38 K74 [{["LayoutOrder"] = 4, ["icon"], ["isCircular"] = True, ["onActivated"], ["size"], ["variant"], ["testId"]}]
      435 GETUPVAL                         R39 9
      436 GETTABLEKS                       R39 R39 K75 ["ChevronSmallRight"]
      438 SETTABLEKS                       R39 R38 K50 ["icon"]
      440 SETTABLEKS                       R18 R38 K52 ["onActivated"]
      442 GETUPVAL                         R39 10
      443 GETTABLEKS                       R39 R39 K57 ["Small"]
      445 SETTABLEKS                       R39 R38 K53 ["size"]
      447 GETUPVAL                         R39 11
      448 GETTABLEKS                       R39 R39 K58 ["Utility"]
      450 SETTABLEKS                       R39 R38 K54 ["variant"]
      452 LOADK                            R40 K76 ["%*--next-month-button"]
      453 GETTABLEKS                       R42 R0 K32 ["testId"]
      455 NAMECALL                         R40 R40 K60 ["format"]
      457 CALL                             R40 2 1
      458 MOVE                             R39 R40
      459 SETTABLEKS                       R39 R38 K32 ["testId"]
      461 CALL                             R36 2 1
      462 SETTABLEKS                       R36 R35 K48 ["NextMonthButton"]
      464 CALL                             R32 3 1
      465 SETTABLEKS                       R32 R31 K37 ["CalendarHeader"]
      467 GETTABLEKS                       R33 R0 K77 ["showTimeDropdown"]
      469 JUMPIFNOT                        R33 ; [+28]
      470 GETUPVAL                         R32 2
      471 GETTABLEKS                       R32 R32 K27 ["createElement"]
      473 GETUPVAL                         R33 12
      474 DUPTABLE                         R34 K82 [{["dateTime"], ["layoutOrder"] = 2, ["onItemChanged"], ["width"], ["testId"]}]
      475 GETTABLEN                        R35 R4 1
      476 SETTABLEKS                       R35 R34 K78 ["dateTime"]
      478 SETTABLEKS                       R27 R34 K80 ["onItemChanged"]
      480 GETIMPORT                        R35 K85 [UDim.new]
      482 LOADN                            R36 1
      483 LOADN                            R37 0
      484 CALL                             R35 2 1
      485 SETTABLEKS                       R35 R34 K81 ["width"]
      487 LOADK                            R36 K86 ["%*--time-dropdown"]
      488 GETTABLEKS                       R38 R0 K32 ["testId"]
      490 NAMECALL                         R36 R36 K60 ["format"]
      492 CALL                             R36 2 1
      493 MOVE                             R35 R36
      494 SETTABLEKS                       R35 R34 K32 ["testId"]
      496 CALL                             R32 2 1
      497 JUMP                             ; [+1]
      498 LOADNIL                          R32
      499 SETTABLEKS                       R32 R31 K38 ["TimeDropdown"]
      501 GETTABLEKS                       R33 R0 K23 ["showStartDateTimeCalendarInput"]
      503 JUMPIFNOT                        R33 ; [+133]
      504 GETUPVAL                         R32 2
      505 GETTABLEKS                       R32 R32 K27 ["createElement"]
      507 GETUPVAL                         R33 7
      508 DUPTABLE                         R34 K88 [{["LayoutOrder"] = 3, ["tag"] = "flex-x-fill size-full-0 auto-y row gap-small align-y-center", ["testId"]}]
      509 LOADK                            R36 K89 ["%*--input"]
      510 GETTABLEKS                       R38 R0 K32 ["testId"]
      512 NAMECALL                         R36 R36 K60 ["format"]
      514 CALL                             R36 2 1
      515 MOVE                             R35 R36
      516 SETTABLEKS                       R35 R34 K32 ["testId"]
      518 DUPTABLE                         R35 K93 [{"StartDateTime", "InputSeparator", "EndDateTime"}]
      519 GETUPVAL                         R36 2
      520 GETTABLEKS                       R36 R36 K27 ["createElement"]
      522 GETUPVAL                         R37 13
      523 DUPTABLE                         R38 K102 [{["hasError"], ["label"] = "", ["LayoutOrder"] = 1, ["onChanged"], ["onFocusLost"], ["placeholder"] = "MM/DD/YYYY", ["size"], ["text"], ["onFocusGained"], ["testId"]}]
      524 LOADB                            R39 0
      525 JUMPIFEQKS                       R9 K12 [""] ; [+10]
      527 GETUPVAL                         R40 3
      528 GETTABLEKS                       R40 R40 K103 ["getDateTimeFromText"]
      530 MOVE                             R41 R9
      531 CALL                             R40 1 1
      532 JUMPIFEQKNIL                     R40 ; [+2]
      534 LOADB                            R39 0 +1
      535 LOADB                            R39 1
      536 SETTABLEKS                       R39 R38 K94 ["hasError"]
      538 SETTABLEKS                       R24 R38 K96 ["onChanged"]
      540 SETTABLEKS                       R16 R38 K97 ["onFocusLost"]
      542 GETUPVAL                         R39 10
      543 GETTABLEKS                       R39 R39 K104 ["Medium"]
      545 SETTABLEKS                       R39 R38 K53 ["size"]
      547 SETTABLEKS                       R9 R38 K100 ["text"]
      549 NEWCLOSURE                       R39 P14
      550 CAPTURE                          VAL R8
      551 SETTABLEKS                       R39 R38 K101 ["onFocusGained"]
      553 LOADK                            R40 K105 ["%*--start-datetime-input"]
      554 GETTABLEKS                       R42 R0 K32 ["testId"]
      556 NAMECALL                         R40 R40 K60 ["format"]
      558 CALL                             R40 2 1
      559 MOVE                             R39 R40
      560 SETTABLEKS                       R39 R38 K32 ["testId"]
      562 CALL                             R36 2 1
      563 SETTABLEKS                       R36 R35 K90 ["StartDateTime"]
      565 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      567 JUMPIFNOT                        R37 ; [+7]
      568 GETUPVAL                         R36 2
      569 GETTABLEKS                       R36 R36 K27 ["createElement"]
      571 GETUPVAL                         R37 4
      572 DUPTABLE                         R38 K108 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy", ["Text"] = "-"}]
      573 CALL                             R36 2 1
      574 JUMP                             ; [+1]
      575 LOADNIL                          R36
      576 SETTABLEKS                       R36 R35 K91 ["InputSeparator"]
      578 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      580 JUMPIFNOT                        R37 ; [+51]
      581 GETUPVAL                         R36 2
      582 GETTABLEKS                       R36 R36 K27 ["createElement"]
      584 GETUPVAL                         R37 13
      585 DUPTABLE                         R38 K111 [{["hasError"], ["isDisabled"], ["label"] = "", ["LayoutOrder"] = 3, ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["placeholder"] = "MM/DD/YYYY", ["size"], ["text"], ["textBoxRef"], ["testId"]}]
      586 LOADB                            R39 0
      587 JUMPIFEQKS                       R11 K12 [""] ; [+10]
      589 GETUPVAL                         R40 3
      590 GETTABLEKS                       R40 R40 K103 ["getDateTimeFromText"]
      592 MOVE                             R41 R11
      593 CALL                             R40 1 1
      594 JUMPIFEQKNIL                     R40 ; [+2]
      596 LOADB                            R39 0 +1
      597 LOADB                            R39 1
      598 SETTABLEKS                       R39 R38 K94 ["hasError"]
      600 GETTABLEN                        R40 R4 1
      601 NOT                              R39 R40
      602 SETTABLEKS                       R39 R38 K109 ["isDisabled"]
      604 SETTABLEKS                       R25 R38 K96 ["onChanged"]
      606 NEWCLOSURE                       R39 P15
      607 CAPTURE                          VAL R8
      608 SETTABLEKS                       R39 R38 K101 ["onFocusGained"]
      610 SETTABLEKS                       R17 R38 K97 ["onFocusLost"]
      612 GETUPVAL                         R39 10
      613 GETTABLEKS                       R39 R39 K104 ["Medium"]
      615 SETTABLEKS                       R39 R38 K53 ["size"]
      617 SETTABLEKS                       R11 R38 K100 ["text"]
      619 SETTABLEKS                       R6 R38 K110 ["textBoxRef"]
      621 LOADK                            R40 K112 ["%*--end-datetime-input"]
      622 GETTABLEKS                       R42 R0 K32 ["testId"]
      624 NAMECALL                         R40 R40 K60 ["format"]
      626 CALL                             R40 2 1
      627 MOVE                             R39 R40
      628 SETTABLEKS                       R39 R38 K32 ["testId"]
      630 CALL                             R36 2 1
      631 JUMP                             ; [+1]
      632 LOADNIL                          R36
      633 SETTABLEKS                       R36 R35 K92 ["EndDateTime"]
      635 CALL                             R32 3 1
      636 JUMP                             ; [+1]
      637 LOADNIL                          R32
      638 SETTABLEKS                       R32 R31 K39 ["CalendarInputContainer"]
      640 GETUPVAL                         R32 2
      641 GETTABLEKS                       R32 R32 K27 ["createElement"]
      643 GETUPVAL                         R33 7
      644 DUPTABLE                         R34 K114 [{["LayoutOrder"] = 4, ["tag"] = "size-full-0 auto-y", ["testId"]}]
      645 LOADK                            R36 K115 ["%*--weekAndDates"]
      646 GETTABLEKS                       R38 R0 K32 ["testId"]
      648 NAMECALL                         R36 R36 K60 ["format"]
      650 CALL                             R36 2 1
      651 MOVE                             R35 R36
      652 SETTABLEKS                       R35 R34 K32 ["testId"]
      654 MOVE                             R35 R26
      655 CALL                             R32 3 1
      656 SETTABLEKS                       R32 R31 K40 ["WeekAndDates"]
      658 CALL                             R28 3 -1
      659 RETURN                           R28 -1

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
      113 GETTABLEKS                       R17 R8 K27 ["FFlagFoundationDateTimePickerDSTFix"]
      115 DUPCLOSURE                       R18 K28 [PROTO_20]
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R12
      130 RETURN                           R18 1
