PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelectedDateChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDateTimeFromText"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R2 2
        7 GETTABLEN                        R1 R2 1
        8 JUMPIF                           R1 ; [+17]
        9 JUMPIFNOT                        R0 ; [+24]
       10 GETUPVAL                         R2 2
       11 GETTABLEN                        R1 R2 2
       12 JUMPIFNOT                        R1 ; [+21]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 2
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R2 R1 ; [+9]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K2 ["formatLocalTime"]
       30 GETUPVAL                         R4 4
       31 GETTABLEN                        R3 R4 1
       32 CALL                             R2 1 -1
       33 CALL                             R1 -1 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDateTimeFromText"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R2 2
        7 GETTABLEN                        R1 R2 2
        8 JUMPIF                           R1 ; [+17]
        9 JUMPIFNOT                        R0 ; [+24]
       10 GETUPVAL                         R2 2
       11 GETTABLEN                        R1 R2 1
       12 JUMPIFNOT                        R1 ; [+21]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 1
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R1 R2 ; [+9]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K2 ["formatLocalTime"]
       30 GETUPVAL                         R4 4
       31 GETTABLEN                        R3 R4 2
       32 CALL                             R2 1 -1
       33 CALL                             R1 -1 0
       34 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["month"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["year"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_17:
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
       65 DUPTABLE                         R11 K33 [{["key"], ["LayoutOrder"], ["Text"], ["tag"] = "text-body-small text-align-x-center text-align-y-center"}]
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

PROTO_18:
        0 GETIMPORT                        R1 K2 [DateTime.fromUnixTimestamp]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K5 [os.date]
        6 LOADK                            R3 K6 ["*t"]
        7 MOVE                             R4 R0
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R2 R2 K7 ["isdst"]
       11 JUMPIFNOT                        R2 ; [+7]
       12 GETTABLEKS                       R3 R1 K8 ["UnixTimestamp"]
       14 GETIMPORT                        R4 K2 [DateTime.fromUnixTimestamp]
       16 SUBK                             R5 R3 K9 [3600]
       17 CALL                             R4 1 1
       18 MOVE                             R1 R4
       19 GETUPVAL                         R3 0
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R1
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K10 ["onSelectedDateChanged"]
       29 NEWTABLE                         R4 0 1
       31 MOVE                             R5 R1
       32 SETLIST                          R4 R5 1 [1]
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{[1] = True, ["endDateTimeInput"] = False}]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{[1] = False, ["endDateTimeInput"] = True}]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADN                            R3 272
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["useRef"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R5 R0 K1 ["defaultDates"]
       12 JUMPIF                           R5 ; [+8]
       13 NEWTABLE                         R4 0 1
       15 GETIMPORT                        R5 K4 [DateTime.now]
       17 CALL                             R5 0 -1
       18 SETLIST                          R4 R5 -1 [1]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R4 R0 K1 ["defaultDates"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K5 ["useEffect"]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R7 0 3
       31 MOVE                             R8 R4
       32 GETTABLEKS                       R9 R0 K1 ["defaultDates"]
       34 GETTABLEKS                       R10 R0 K6 ["onSelectedDateChanged"]
       36 SETLIST                          R7 R8 3 [1]
       38 CALL                             R5 2 0
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K7 ["useState"]
       42 MOVE                             R6 R4
       43 CALL                             R5 1 2
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R7 R7 K0 ["useRef"]
       47 LOADNIL                          R8
       48 CALL                             R7 1 1
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R8 R8 K7 ["useState"]
       52 GETTABLEKS                       R10 R0 K8 ["showEndDateTimeCalendarInput"]
       54 JUMPIFNOT                        R10 ; [+2]
       55 DUPTABLE                         R9 K13 [{["startDateTimeInput"] = False, ["endDateTimeInput"] = True}]
       56 JUMP                             ; [+1]
       57 DUPTABLE                         R9 K14 [{["startDateTimeInput"] = True, ["endDateTimeInput"] = False}]
       58 CALL                             R8 1 2
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K5 ["useEffect"]
       62 NEWCLOSURE                       R11 P1
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R7
       66 NEWTABLE                         R12 0 1
       68 MOVE                             R13 R8
       69 SETLIST                          R12 R13 1 [1]
       71 CALL                             R10 2 0
       72 GETUPVAL                         R10 2
       73 GETTABLEKS                       R10 R10 K7 ["useState"]
       75 GETUPVAL                         R11 3
       76 GETTABLEKS                       R11 R11 K15 ["formatLocalTime"]
       78 GETTABLEN                        R12 R4 1
       79 CALL                             R11 1 -1
       80 CALL                             R10 -1 2
       81 GETUPVAL                         R12 2
       82 GETTABLEKS                       R12 R12 K7 ["useState"]
       84 GETTABLEN                        R14 R4 2
       85 JUMPIFNOT                        R14 ; [+6]
       86 GETUPVAL                         R13 3
       87 GETTABLEKS                       R13 R13 K15 ["formatLocalTime"]
       89 GETTABLEN                        R14 R4 2
       90 CALL                             R13 1 1
       91 JUMP                             ; [+1]
       92 LOADK                            R13 K16 [""]
       93 CALL                             R12 1 2
       94 GETUPVAL                         R14 2
       95 GETTABLEKS                       R14 R14 K5 ["useEffect"]
       97 NEWCLOSURE                       R15 P2
       98 CAPTURE                          VAL R3
       99 NEWTABLE                         R16 0 0
      101 CALL                             R14 2 0
      102 GETUPVAL                         R14 2
      103 GETTABLEKS                       R14 R14 K7 ["useState"]
      105 DUPTABLE                         R15 K19 [{"month", "year"}]
      106 GETTABLEN                        R16 R4 1
      107 NAMECALL                         R16 R16 K20 ["ToLocalTime"]
      109 CALL                             R16 1 1
      110 GETTABLEKS                       R16 R16 K21 ["Month"]
      112 SETTABLEKS                       R16 R15 K17 ["month"]
      114 GETTABLEN                        R16 R4 1
      115 NAMECALL                         R16 R16 K20 ["ToLocalTime"]
      117 CALL                             R16 1 1
      118 GETTABLEKS                       R16 R16 K22 ["Year"]
      120 SETTABLEKS                       R16 R15 K18 ["year"]
      122 CALL                             R14 1 2
      123 NEWTABLE                         R16 0 0
      125 MOVE                             R17 R5
      126 LOADNIL                          R18
      127 LOADNIL                          R19
      128 FORGPREP                         R17
      129 MOVE                             R23 R16
      130 NAMECALL                         R24 R21 K20 ["ToLocalTime"]
      132 CALL                             R24 1 -1
      133 FASTCALL                         TABLE_INSERT ; [+2]
      134 GETIMPORT                        R22 K25 [table.insert]
      136 CALL                             R22 -1 0
      137 FORGLOOP                         R17 2 ; [-9]
      139 NEWCLOSURE                       R17 P3
      140 CAPTURE                          UPVAL U3
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R4
      145 NEWCLOSURE                       R18 P4
      146 CAPTURE                          UPVAL U3
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R4
      151 GETUPVAL                         R19 2
      152 GETTABLEKS                       R19 R19 K26 ["useCallback"]
      154 NEWCLOSURE                       R20 P5
      155 CAPTURE                          UPVAL U3
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R15
      158 NEWTABLE                         R21 0 1
      160 MOVE                             R22 R14
      161 SETLIST                          R21 R22 1 [1]
      163 CALL                             R19 2 1
      164 GETUPVAL                         R20 2
      165 GETTABLEKS                       R20 R20 K26 ["useCallback"]
      167 NEWCLOSURE                       R21 P6
      168 CAPTURE                          UPVAL U3
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R15
      171 NEWTABLE                         R22 0 1
      173 MOVE                             R23 R14
      174 SETLIST                          R22 R23 1 [1]
      176 CALL                             R20 2 1
      177 GETUPVAL                         R21 2
      178 GETTABLEKS                       R21 R21 K26 ["useCallback"]
      180 NEWCLOSURE                       R22 P7
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R0
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R11
      185 CAPTURE                          UPVAL U3
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R6
      190 NEWTABLE                         R23 0 5
      192 GETTABLEKS                       R24 R0 K27 ["showStartDateTimeCalendarInput"]
      194 GETTABLEKS                       R25 R0 K8 ["showEndDateTimeCalendarInput"]
      196 MOVE                             R26 R5
      197 MOVE                             R27 R8
      198 MOVE                             R28 R7
      199 SETLIST                          R23 R24 5 [1]
      201 CALL                             R21 2 1
      202 GETUPVAL                         R22 2
      203 GETTABLEKS                       R22 R22 K26 ["useCallback"]
      205 NEWCLOSURE                       R23 P8
      206 CAPTURE                          VAL R16
      207 NEWTABLE                         R24 0 1
      209 MOVE                             R25 R16
      210 SETLIST                          R24 R25 1 [1]
      212 CALL                             R22 2 1
      213 GETUPVAL                         R23 2
      214 GETTABLEKS                       R23 R23 K26 ["useCallback"]
      216 NEWCLOSURE                       R24 P9
      217 CAPTURE                          VAL R0
      218 CAPTURE                          VAL R5
      219 CAPTURE                          UPVAL U3
      220 NEWTABLE                         R25 0 2
      222 GETTABLEKS                       R26 R0 K8 ["showEndDateTimeCalendarInput"]
      224 MOVE                             R27 R5
      225 SETLIST                          R25 R26 2 [1]
      227 CALL                             R23 2 1
      228 GETUPVAL                         R24 2
      229 GETTABLEKS                       R24 R24 K26 ["useCallback"]
      231 NEWCLOSURE                       R25 P10
      232 CAPTURE                          VAL R0
      233 CAPTURE                          UPVAL U3
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R5
      236 NEWTABLE                         R26 0 4
      238 MOVE                             R27 R5
      239 GETTABLEKS                       R28 R0 K28 ["selectableDateRange"]
      241 MOVE                             R29 R8
      242 GETTABLEKS                       R30 R0 K8 ["showEndDateTimeCalendarInput"]
      244 SETLIST                          R26 R27 4 [1]
      246 CALL                             R24 2 1
      247 GETUPVAL                         R25 2
      248 GETTABLEKS                       R25 R25 K26 ["useCallback"]
      250 NEWCLOSURE                       R26 P11
      251 CAPTURE                          VAL R3
      252 CAPTURE                          VAL R11
      253 CAPTURE                          UPVAL U3
      254 CAPTURE                          VAL R0
      255 CAPTURE                          VAL R5
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R6
      258 NEWTABLE                         R27 0 5
      260 GETTABLEKS                       R28 R0 K6 ["onSelectedDateChanged"]
      262 GETTABLEKS                       R29 R0 K8 ["showEndDateTimeCalendarInput"]
      264 MOVE                             R30 R24
      265 MOVE                             R31 R5
      266 MOVE                             R32 R3
      267 SETLIST                          R27 R28 5 [1]
      269 CALL                             R25 2 1
      270 GETUPVAL                         R26 2
      271 GETTABLEKS                       R26 R26 K26 ["useCallback"]
      273 NEWCLOSURE                       R27 P12
      274 CAPTURE                          VAL R3
      275 CAPTURE                          VAL R13
      276 CAPTURE                          UPVAL U3
      277 CAPTURE                          VAL R5
      278 CAPTURE                          VAL R15
      279 CAPTURE                          VAL R6
      280 CAPTURE                          VAL R0
      281 NEWTABLE                         R28 0 4
      283 GETTABLEKS                       R29 R0 K6 ["onSelectedDateChanged"]
      285 MOVE                             R30 R5
      286 MOVE                             R31 R24
      287 MOVE                             R32 R3
      288 SETLIST                          R28 R29 4 [1]
      290 CALL                             R26 2 1
      291 GETUPVAL                         R27 2
      292 GETTABLEKS                       R27 R27 K29 ["useMemo"]
      294 NEWCLOSURE                       R28 P13
      295 CAPTURE                          UPVAL U2
      296 CAPTURE                          VAL R1
      297 CAPTURE                          VAL R2
      298 CAPTURE                          UPVAL U3
      299 CAPTURE                          UPVAL U4
      300 CAPTURE                          VAL R14
      301 CAPTURE                          UPVAL U5
      302 CAPTURE                          VAL R23
      303 CAPTURE                          VAL R24
      304 CAPTURE                          VAL R22
      305 CAPTURE                          VAL R21
      306 CAPTURE                          VAL R0
      307 NEWTABLE                         R29 0 8
      309 MOVE                             R30 R22
      310 MOVE                             R31 R23
      311 MOVE                             R32 R24
      312 MOVE                             R33 R14
      313 MOVE                             R34 R5
      314 MOVE                             R35 R21
      315 GETTABLEKS                       R36 R0 K28 ["selectableDateRange"]
      317 GETTABLEKS                       R37 R0 K8 ["showEndDateTimeCalendarInput"]
      319 SETLIST                          R29 R30 8 [1]
      321 CALL                             R27 2 1
      322 GETUPVAL                         R28 2
      323 GETTABLEKS                       R28 R28 K26 ["useCallback"]
      325 NEWCLOSURE                       R29 P14
      326 CAPTURE                          VAL R6
      327 CAPTURE                          VAL R0
      328 NEWTABLE                         R30 0 2
      330 MOVE                             R31 R5
      331 GETTABLEKS                       R32 R0 K6 ["onSelectedDateChanged"]
      333 SETLIST                          R30 R31 2 [1]
      335 CALL                             R28 2 1
      336 GETUPVAL                         R29 2
      337 GETTABLEKS                       R29 R29 K30 ["createElement"]
      339 GETUPVAL                         R30 6
      340 DUPTABLE                         R31 K36 [{["LayoutOrder"], ["tag"] = "col auto-y", ["Size"], ["testId"]}]
      341 GETTABLEKS                       R32 R0 K31 ["LayoutOrder"]
      343 SETTABLEKS                       R32 R31 K31 ["LayoutOrder"]
      345 GETIMPORT                        R32 K39 [UDim2.fromOffset]
      347 MOVE                             R33 R2
      348 LOADN                            R34 0
      349 CALL                             R32 2 1
      350 SETTABLEKS                       R32 R31 K34 ["Size"]
      352 GETTABLEKS                       R32 R0 K35 ["testId"]
      354 SETTABLEKS                       R32 R31 K35 ["testId"]
      356 DUPTABLE                         R32 K44 [{"CalendarHeader", "TimeDropdown", "CalendarInputContainer", "WeekAndDates"}]
      357 GETUPVAL                         R33 2
      358 GETTABLEKS                       R33 R33 K30 ["createElement"]
      360 GETUPVAL                         R34 6
      361 DUPTABLE                         R35 K47 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-small"}]
      362 DUPTABLE                         R36 K52 [{"PreviousMonthButton", "MonthText", "YearText", "NextMonthButton"}]
      363 GETUPVAL                         R37 2
      364 GETTABLEKS                       R37 R37 K30 ["createElement"]
      366 GETUPVAL                         R38 7
      367 DUPTABLE                         R39 K58 [{["LayoutOrder"] = 1, ["icon"], ["isCircular"] = True, ["onActivated"], ["size"], ["variant"], ["testId"]}]
      368 GETUPVAL                         R40 8
      369 GETTABLEKS                       R40 R40 K59 ["ChevronSmallLeft"]
      371 SETTABLEKS                       R40 R39 K53 ["icon"]
      373 SETTABLEKS                       R20 R39 K55 ["onActivated"]
      375 GETUPVAL                         R40 9
      376 GETTABLEKS                       R40 R40 K60 ["Small"]
      378 SETTABLEKS                       R40 R39 K56 ["size"]
      380 GETUPVAL                         R40 10
      381 GETTABLEKS                       R40 R40 K61 ["Utility"]
      383 SETTABLEKS                       R40 R39 K57 ["variant"]
      385 LOADK                            R41 K62 ["%*--previous-month-button"]
      386 GETTABLEKS                       R43 R0 K35 ["testId"]
      388 NAMECALL                         R41 R41 K63 ["format"]
      390 CALL                             R41 2 1
      391 MOVE                             R40 R41
      392 SETTABLEKS                       R40 R39 K35 ["testId"]
      394 CALL                             R37 2 1
      395 SETTABLEKS                       R37 R36 K48 ["PreviousMonthButton"]
      397 GETUPVAL                         R37 2
      398 GETTABLEKS                       R37 R37 K30 ["createElement"]
      400 GETUPVAL                         R38 4
      401 DUPTABLE                         R39 K67 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "grow auto-xy text-align-x-right", ["testId"]}]
      402 GETUPVAL                         R41 3
      403 GETTABLEKS                       R41 R41 K68 ["monthMap"]
      405 GETTABLEKS                       R42 R14 K17 ["month"]
      407 GETTABLE                         R40 R41 R42
      408 SETTABLEKS                       R40 R39 K65 ["Text"]
      410 LOADK                            R41 K69 ["%*--month-text"]
      411 GETTABLEKS                       R43 R0 K35 ["testId"]
      413 NAMECALL                         R41 R41 K63 ["format"]
      415 CALL                             R41 2 1
      416 MOVE                             R40 R41
      417 SETTABLEKS                       R40 R39 K35 ["testId"]
      419 CALL                             R37 2 1
      420 SETTABLEKS                       R37 R36 K49 ["MonthText"]
      422 GETUPVAL                         R37 2
      423 GETTABLEKS                       R37 R37 K30 ["createElement"]
      425 GETUPVAL                         R38 4
      426 DUPTABLE                         R39 K72 [{["LayoutOrder"] = 3, ["Text"], ["tag"] = "grow auto-xy text-align-x-left", ["testId"]}]
      427 GETTABLEKS                       R41 R14 K18 ["year"]
      429 FASTCALL1                        TOSTRING R41 ; [+2]
      430 GETIMPORT                        R40 K74 [tostring]
      432 CALL                             R40 1 1
      433 SETTABLEKS                       R40 R39 K65 ["Text"]
      435 LOADK                            R41 K75 ["%*--year-text"]
      436 GETTABLEKS                       R43 R0 K35 ["testId"]
      438 NAMECALL                         R41 R41 K63 ["format"]
      440 CALL                             R41 2 1
      441 MOVE                             R40 R41
      442 SETTABLEKS                       R40 R39 K35 ["testId"]
      444 CALL                             R37 2 1
      445 SETTABLEKS                       R37 R36 K50 ["YearText"]
      447 GETUPVAL                         R37 2
      448 GETTABLEKS                       R37 R37 K30 ["createElement"]
      450 GETUPVAL                         R38 7
      451 DUPTABLE                         R39 K77 [{["LayoutOrder"] = 4, ["icon"], ["isCircular"] = True, ["onActivated"], ["size"], ["variant"], ["testId"]}]
      452 GETUPVAL                         R40 8
      453 GETTABLEKS                       R40 R40 K78 ["ChevronSmallRight"]
      455 SETTABLEKS                       R40 R39 K53 ["icon"]
      457 SETTABLEKS                       R19 R39 K55 ["onActivated"]
      459 GETUPVAL                         R40 9
      460 GETTABLEKS                       R40 R40 K60 ["Small"]
      462 SETTABLEKS                       R40 R39 K56 ["size"]
      464 GETUPVAL                         R40 10
      465 GETTABLEKS                       R40 R40 K61 ["Utility"]
      467 SETTABLEKS                       R40 R39 K57 ["variant"]
      469 LOADK                            R41 K79 ["%*--next-month-button"]
      470 GETTABLEKS                       R43 R0 K35 ["testId"]
      472 NAMECALL                         R41 R41 K63 ["format"]
      474 CALL                             R41 2 1
      475 MOVE                             R40 R41
      476 SETTABLEKS                       R40 R39 K35 ["testId"]
      478 CALL                             R37 2 1
      479 SETTABLEKS                       R37 R36 K51 ["NextMonthButton"]
      481 CALL                             R33 3 1
      482 SETTABLEKS                       R33 R32 K40 ["CalendarHeader"]
      484 GETTABLEKS                       R34 R0 K80 ["showTimeDropdown"]
      486 JUMPIFNOT                        R34 ; [+28]
      487 GETUPVAL                         R33 2
      488 GETTABLEKS                       R33 R33 K30 ["createElement"]
      490 GETUPVAL                         R34 11
      491 DUPTABLE                         R35 K85 [{["dateTime"], ["layoutOrder"] = 2, ["onItemChanged"], ["width"], ["testId"]}]
      492 GETTABLEN                        R36 R5 1
      493 SETTABLEKS                       R36 R35 K81 ["dateTime"]
      495 SETTABLEKS                       R28 R35 K83 ["onItemChanged"]
      497 GETIMPORT                        R36 K88 [UDim.new]
      499 LOADN                            R37 1
      500 LOADN                            R38 0
      501 CALL                             R36 2 1
      502 SETTABLEKS                       R36 R35 K84 ["width"]
      504 LOADK                            R37 K89 ["%*--time-dropdown"]
      505 GETTABLEKS                       R39 R0 K35 ["testId"]
      507 NAMECALL                         R37 R37 K63 ["format"]
      509 CALL                             R37 2 1
      510 MOVE                             R36 R37
      511 SETTABLEKS                       R36 R35 K35 ["testId"]
      513 CALL                             R33 2 1
      514 JUMP                             ; [+1]
      515 LOADNIL                          R33
      516 SETTABLEKS                       R33 R32 K41 ["TimeDropdown"]
      518 GETTABLEKS                       R34 R0 K27 ["showStartDateTimeCalendarInput"]
      520 JUMPIFNOT                        R34 ; [+133]
      521 GETUPVAL                         R33 2
      522 GETTABLEKS                       R33 R33 K30 ["createElement"]
      524 GETUPVAL                         R34 6
      525 DUPTABLE                         R35 K91 [{["LayoutOrder"] = 3, ["tag"] = "row flex-x-fill align-y-center gap-small size-full-0 auto-y", ["testId"]}]
      526 LOADK                            R37 K92 ["%*--input"]
      527 GETTABLEKS                       R39 R0 K35 ["testId"]
      529 NAMECALL                         R37 R37 K63 ["format"]
      531 CALL                             R37 2 1
      532 MOVE                             R36 R37
      533 SETTABLEKS                       R36 R35 K35 ["testId"]
      535 DUPTABLE                         R36 K96 [{"StartDateTime", "InputSeparator", "EndDateTime"}]
      536 GETUPVAL                         R37 2
      537 GETTABLEKS                       R37 R37 K30 ["createElement"]
      539 GETUPVAL                         R38 12
      540 DUPTABLE                         R39 K105 [{["hasError"], ["label"] = "", ["LayoutOrder"] = 1, ["onChanged"], ["onFocusLost"], ["placeholder"] = "MM/DD/YYYY", ["size"], ["text"], ["onFocusGained"], ["testId"]}]
      541 LOADB                            R40 0
      542 JUMPIFEQKS                       R10 K16 [""] ; [+10]
      544 GETUPVAL                         R41 3
      545 GETTABLEKS                       R41 R41 K106 ["getDateTimeFromText"]
      547 MOVE                             R42 R10
      548 CALL                             R41 1 1
      549 JUMPIFEQKNIL                     R41 ; [+2]
      551 LOADB                            R40 0 +1
      552 LOADB                            R40 1
      553 SETTABLEKS                       R40 R39 K97 ["hasError"]
      555 SETTABLEKS                       R25 R39 K99 ["onChanged"]
      557 SETTABLEKS                       R17 R39 K100 ["onFocusLost"]
      559 GETUPVAL                         R40 9
      560 GETTABLEKS                       R40 R40 K107 ["Medium"]
      562 SETTABLEKS                       R40 R39 K56 ["size"]
      564 SETTABLEKS                       R10 R39 K103 ["text"]
      566 NEWCLOSURE                       R40 P15
      567 CAPTURE                          VAL R9
      568 SETTABLEKS                       R40 R39 K104 ["onFocusGained"]
      570 LOADK                            R41 K108 ["%*--start-datetime-input"]
      571 GETTABLEKS                       R43 R0 K35 ["testId"]
      573 NAMECALL                         R41 R41 K63 ["format"]
      575 CALL                             R41 2 1
      576 MOVE                             R40 R41
      577 SETTABLEKS                       R40 R39 K35 ["testId"]
      579 CALL                             R37 2 1
      580 SETTABLEKS                       R37 R36 K93 ["StartDateTime"]
      582 GETTABLEKS                       R38 R0 K8 ["showEndDateTimeCalendarInput"]
      584 JUMPIFNOT                        R38 ; [+7]
      585 GETUPVAL                         R37 2
      586 GETTABLEKS                       R37 R37 K30 ["createElement"]
      588 GETUPVAL                         R38 4
      589 DUPTABLE                         R39 K111 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy", ["Text"] = "-"}]
      590 CALL                             R37 2 1
      591 JUMP                             ; [+1]
      592 LOADNIL                          R37
      593 SETTABLEKS                       R37 R36 K94 ["InputSeparator"]
      595 GETTABLEKS                       R38 R0 K8 ["showEndDateTimeCalendarInput"]
      597 JUMPIFNOT                        R38 ; [+51]
      598 GETUPVAL                         R37 2
      599 GETTABLEKS                       R37 R37 K30 ["createElement"]
      601 GETUPVAL                         R38 12
      602 DUPTABLE                         R39 K114 [{["hasError"], ["isDisabled"], ["label"] = "", ["LayoutOrder"] = 3, ["onChanged"], ["onFocusGained"], ["onFocusLost"], ["placeholder"] = "MM/DD/YYYY", ["size"], ["text"], ["textBoxRef"], ["testId"]}]
      603 LOADB                            R40 0
      604 JUMPIFEQKS                       R12 K16 [""] ; [+10]
      606 GETUPVAL                         R41 3
      607 GETTABLEKS                       R41 R41 K106 ["getDateTimeFromText"]
      609 MOVE                             R42 R12
      610 CALL                             R41 1 1
      611 JUMPIFEQKNIL                     R41 ; [+2]
      613 LOADB                            R40 0 +1
      614 LOADB                            R40 1
      615 SETTABLEKS                       R40 R39 K97 ["hasError"]
      617 GETTABLEN                        R41 R5 1
      618 NOT                              R40 R41
      619 SETTABLEKS                       R40 R39 K112 ["isDisabled"]
      621 SETTABLEKS                       R26 R39 K99 ["onChanged"]
      623 NEWCLOSURE                       R40 P16
      624 CAPTURE                          VAL R9
      625 SETTABLEKS                       R40 R39 K104 ["onFocusGained"]
      627 SETTABLEKS                       R18 R39 K100 ["onFocusLost"]
      629 GETUPVAL                         R40 9
      630 GETTABLEKS                       R40 R40 K107 ["Medium"]
      632 SETTABLEKS                       R40 R39 K56 ["size"]
      634 SETTABLEKS                       R12 R39 K103 ["text"]
      636 SETTABLEKS                       R7 R39 K113 ["textBoxRef"]
      638 LOADK                            R41 K115 ["%*--end-datetime-input"]
      639 GETTABLEKS                       R43 R0 K35 ["testId"]
      641 NAMECALL                         R41 R41 K63 ["format"]
      643 CALL                             R41 2 1
      644 MOVE                             R40 R41
      645 SETTABLEKS                       R40 R39 K35 ["testId"]
      647 CALL                             R37 2 1
      648 JUMP                             ; [+1]
      649 LOADNIL                          R37
      650 SETTABLEKS                       R37 R36 K95 ["EndDateTime"]
      652 CALL                             R33 3 1
      653 JUMP                             ; [+1]
      654 LOADNIL                          R33
      655 SETTABLEKS                       R33 R32 K42 ["CalendarInputContainer"]
      657 GETUPVAL                         R33 2
      658 GETTABLEKS                       R33 R33 K30 ["createElement"]
      660 GETUPVAL                         R34 6
      661 DUPTABLE                         R35 K117 [{["LayoutOrder"] = 4, ["tag"] = "size-full-0 auto-y", ["testId"]}]
      662 LOADK                            R37 K118 ["%*--weekAndDates"]
      663 GETTABLEKS                       R39 R0 K35 ["testId"]
      665 NAMECALL                         R37 R37 K63 ["format"]
      667 CALL                             R37 2 1
      668 MOVE                             R36 R37
      669 SETTABLEKS                       R36 R35 K35 ["testId"]
      671 MOVE                             R36 R27
      672 CALL                             R33 3 1
      673 SETTABLEKS                       R33 R32 K43 ["WeekAndDates"]
      675 CALL                             R29 3 -1
      676 RETURN                           R29 -1

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
       48 GETTABLEKS                       R9 R0 K14 ["Components"]
       50 GETTABLEKS                       R9 R9 K15 ["IconButton"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K12 ["Enums"]
       57 GETTABLEKS                       R10 R10 K16 ["InputSize"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R11 R0 K14 ["Components"]
       64 GETTABLEKS                       R11 R11 K17 ["Text"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R12 R0 K14 ["Components"]
       71 GETTABLEKS                       R12 R12 K18 ["TextInput"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETIMPORT                        R13 K1 [script]
       78 GETTABLEKS                       R13 R13 K4 ["Parent"]
       80 GETTABLEKS                       R13 R13 K19 ["TimeDropdown"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K6 [require]
       85 GETTABLEKS                       R14 R0 K14 ["Components"]
       87 GETTABLEKS                       R14 R14 K20 ["View"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K6 [require]
       92 GETTABLEKS                       R15 R0 K21 ["Utility"]
       94 GETTABLEKS                       R15 R15 K22 ["useScaledValue"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETTABLEKS                       R16 R0 K23 ["Providers"]
      101 GETTABLEKS                       R16 R16 K24 ["Style"]
      103 GETTABLEKS                       R16 R16 K25 ["useTokens"]
      105 CALL                             R15 1 1
      106 DUPCLOSURE                       R16 K26 [PROTO_21]
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R11
      120 RETURN                           R16 1
