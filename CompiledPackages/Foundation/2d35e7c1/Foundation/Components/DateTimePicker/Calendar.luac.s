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
       13 JUMPIFNOT                        R1 ; [+39]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K2 ["showEndDateTimeCalendarInput"]
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
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R4 R5 K9 ["onSelectedDateChanged"]
       51 MOVE                             R5 R2
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

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
      129 MOVE                             R7 R6
      130 LOADN                            R8 1
      131 FORNPREP                         R7
      132 SUB                              R11 R5 R6
      133 ADD                              R10 R11 R9
      134 GETIMPORT                        R11 K43 [DateTime.fromLocalTime]
      136 MOVE                             R12 R4
      137 MOVE                             R13 R3
      138 MOVE                             R14 R10
      139 CALL                             R11 3 1
      140 MOVE                             R13 R0
      141 GETUPVAL                         R15 0
      142 GETTABLEKS                       R14 R15 K0 ["createElement"]
      144 GETUPVAL                         R15 6
      145 DUPTABLE                         R16 K49 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      146 GETUPVAL                         R17 7
      147 MOVE                             R18 R11
      148 CALL                             R17 1 1
      149 SETTABLEKS                       R17 R16 K44 ["highlight"]
      151 GETUPVAL                         R17 8
      152 MOVE                             R18 R11
      153 CALL                             R17 1 1
      154 SETTABLEKS                       R17 R16 K45 ["isSelectable"]
      156 GETUPVAL                         R17 9
      157 MOVE                             R18 R11
      158 CALL                             R17 1 1
      159 SETTABLEKS                       R17 R16 K46 ["isSelected"]
      161 LOADK                            R18 K50 ["prev-month-day-"]
      162 MOVE                             R19 R10
      163 CONCAT                           R17 R18 R19
      164 SETTABLEKS                       R17 R16 K7 ["key"]
      166 SETTABLEKS                       R1 R16 K23 ["LayoutOrder"]
      168 NEWCLOSURE                       R17 P0
      169 CAPTURE                          UPVAL U10
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R4
      173 SETTABLEKS                       R17 R16 K47 ["onActivated"]
      175 FASTCALL1                        TOSTRING R10 ; [+3]
      176 MOVE                             R18 R10
      177 GETIMPORT                        R17 K52 [tostring]
      179 CALL                             R17 1 1
      180 SETTABLEKS                       R17 R16 K30 ["Text"]
      182 LOADK                            R18 K53 ["%*--prev-month-calendar-day-%*"]
      183 GETUPVAL                         R21 11
      184 GETTABLEKS                       R20 R21 K48 ["testId"]
      186 MOVE                             R21 R10
      187 NAMECALL                         R18 R18 K54 ["format"]
      189 CALL                             R18 3 1
      190 MOVE                             R17 R18
      191 SETTABLEKS                       R17 R16 K48 ["testId"]
      193 CALL                             R14 2 -1
      194 FASTCALL                         TABLE_INSERT ; [+2]
      195 GETIMPORT                        R12 K28 [table.insert]
      197 CALL                             R12 -1 0
      198 ADDK                             R1 R1 K34 [1]
      199 FORNLOOP                         R7
      200 LOADN                            R9 1
      201 GETUPVAL                         R11 3
      202 GETTABLEKS                       R10 R11 K39 ["getDaysInMonth"]
      204 GETUPVAL                         R12 5
      205 GETTABLEKS                       R11 R12 K36 ["month"]
      207 GETUPVAL                         R13 5
      208 GETTABLEKS                       R12 R13 K37 ["year"]
      210 CALL                             R10 2 1
      211 MOVE                             R7 R10
      212 LOADN                            R8 1
      213 FORNPREP                         R7
      214 GETUPVAL                         R10 8
      215 GETIMPORT                        R11 K43 [DateTime.fromLocalTime]
      217 GETUPVAL                         R13 5
      218 GETTABLEKS                       R12 R13 K37 ["year"]
      220 GETUPVAL                         R14 5
      221 GETTABLEKS                       R13 R14 K36 ["month"]
      223 MOVE                             R14 R9
      224 CALL                             R11 3 -1
      225 CALL                             R10 -1 1
      226 GETUPVAL                         R11 9
      227 GETIMPORT                        R12 K43 [DateTime.fromLocalTime]
      229 GETUPVAL                         R14 5
      230 GETTABLEKS                       R13 R14 K37 ["year"]
      232 GETUPVAL                         R15 5
      233 GETTABLEKS                       R14 R15 K36 ["month"]
      235 MOVE                             R15 R9
      236 CALL                             R12 3 -1
      237 CALL                             R11 -1 1
      238 MOVE                             R13 R0
      239 GETUPVAL                         R15 0
      240 GETTABLEKS                       R14 R15 K0 ["createElement"]
      242 GETUPVAL                         R15 6
      243 DUPTABLE                         R16 K56 [{"emphasizeText", "highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      244 MOVE                             R17 R10
      245 JUMPIFNOT                        R17 ; [+1]
      246 NOT                              R17 R11
      247 SETTABLEKS                       R17 R16 K55 ["emphasizeText"]
      249 GETUPVAL                         R17 7
      250 GETIMPORT                        R18 K43 [DateTime.fromLocalTime]
      252 GETUPVAL                         R20 5
      253 GETTABLEKS                       R19 R20 K37 ["year"]
      255 GETUPVAL                         R21 5
      256 GETTABLEKS                       R20 R21 K36 ["month"]
      258 MOVE                             R21 R9
      259 CALL                             R18 3 -1
      260 CALL                             R17 -1 1
      261 SETTABLEKS                       R17 R16 K44 ["highlight"]
      263 SETTABLEKS                       R10 R16 K45 ["isSelectable"]
      265 SETTABLEKS                       R11 R16 K46 ["isSelected"]
      267 LOADK                            R18 K57 ["current-month-day-"]
      268 MOVE                             R19 R9
      269 CONCAT                           R17 R18 R19
      270 SETTABLEKS                       R17 R16 K7 ["key"]
      272 SETTABLEKS                       R1 R16 K23 ["LayoutOrder"]
      274 NEWCLOSURE                       R17 P1
      275 CAPTURE                          UPVAL U10
      276 CAPTURE                          VAL R9
      277 CAPTURE                          UPVAL U5
      278 SETTABLEKS                       R17 R16 K47 ["onActivated"]
      280 FASTCALL1                        TOSTRING R9 ; [+3]
      281 MOVE                             R18 R9
      282 GETIMPORT                        R17 K52 [tostring]
      284 CALL                             R17 1 1
      285 SETTABLEKS                       R17 R16 K30 ["Text"]
      287 LOADK                            R18 K58 ["%*--current-month-calendar-day-%*"]
      288 GETUPVAL                         R21 11
      289 GETTABLEKS                       R20 R21 K48 ["testId"]
      291 MOVE                             R21 R9
      292 NAMECALL                         R18 R18 K54 ["format"]
      294 CALL                             R18 3 1
      295 MOVE                             R17 R18
      296 SETTABLEKS                       R17 R16 K48 ["testId"]
      298 CALL                             R14 2 -1
      299 FASTCALL                         TABLE_INSERT ; [+2]
      300 GETIMPORT                        R12 K28 [table.insert]
      302 CALL                             R12 -1 0
      303 ADDK                             R1 R1 K34 [1]
      304 FORNLOOP                         R7
      305 GETUPVAL                         R8 3
      306 GETTABLEKS                       R7 R8 K59 ["getLastDayOfWeek"]
      308 GETUPVAL                         R9 5
      309 GETTABLEKS                       R8 R9 K36 ["month"]
      311 GETUPVAL                         R10 5
      312 GETTABLEKS                       R9 R10 K37 ["year"]
      314 CALL                             R7 2 1
      315 GETUPVAL                         R9 3
      316 GETTABLEKS                       R8 R9 K60 ["getNextMonthInfo"]
      318 GETUPVAL                         R10 5
      319 GETTABLEKS                       R9 R10 K36 ["month"]
      321 GETUPVAL                         R11 5
      322 GETTABLEKS                       R10 R11 K37 ["year"]
      324 CALL                             R8 2 2
      325 ADDK                             R10 R7 K34 [1]
      326 SUBRK                            R6 R16 K10 [{"CellPadding", "CellSize", "FillDirection", "FillDirectionMaxCells", "HorizontalAlignment", "key", "SortOrder", "VerticalAlignment"}]
      327 JUMPIFNOTEQKN                    R6 K40 [0] ; [+3]
      329 LOADN                            R6 7
      330 JUMP                             ; [0]
      331 LENGTH                           R11 R0
      332 ADD                              R10 R6 R11
      333 LOADN                            R11 50
      334 JUMPIFNOTLT                      R10 R11 ; [+5]
      336 LENGTH                           R12 R0
      337 SUBRK                            R11 R61 K12 ["fromOffset"]
      338 SUB                              R10 R11 R6
      339 ADD                              R6 R6 R10
      340 LOADN                            R12 1
      341 MOVE                             R10 R6
      342 LOADN                            R11 1
      343 FORNPREP                         R10
      344 GETIMPORT                        R13 K43 [DateTime.fromLocalTime]
      346 MOVE                             R14 R9
      347 MOVE                             R15 R8
      348 MOVE                             R16 R12
      349 CALL                             R13 3 1
      350 MOVE                             R15 R0
      351 GETUPVAL                         R17 0
      352 GETTABLEKS                       R16 R17 K0 ["createElement"]
      354 GETUPVAL                         R17 6
      355 DUPTABLE                         R18 K49 [{"highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      356 GETUPVAL                         R19 7
      357 MOVE                             R20 R13
      358 CALL                             R19 1 1
      359 SETTABLEKS                       R19 R18 K44 ["highlight"]
      361 GETUPVAL                         R19 8
      362 MOVE                             R20 R13
      363 CALL                             R19 1 1
      364 SETTABLEKS                       R19 R18 K45 ["isSelectable"]
      366 GETUPVAL                         R19 9
      367 MOVE                             R20 R13
      368 CALL                             R19 1 1
      369 SETTABLEKS                       R19 R18 K46 ["isSelected"]
      371 LOADK                            R20 K62 ["next-month-day-"]
      372 MOVE                             R21 R12
      373 CONCAT                           R19 R20 R21
      374 SETTABLEKS                       R19 R18 K7 ["key"]
      376 SETTABLEKS                       R1 R18 K23 ["LayoutOrder"]
      378 NEWCLOSURE                       R19 P2
      379 CAPTURE                          UPVAL U10
      380 CAPTURE                          VAL R12
      381 CAPTURE                          VAL R8
      382 CAPTURE                          VAL R9
      383 SETTABLEKS                       R19 R18 K47 ["onActivated"]
      385 FASTCALL1                        TOSTRING R12 ; [+3]
      386 MOVE                             R20 R12
      387 GETIMPORT                        R19 K52 [tostring]
      389 CALL                             R19 1 1
      390 SETTABLEKS                       R19 R18 K30 ["Text"]
      392 LOADK                            R20 K63 ["%*--next-month-calendar-day-%*"]
      393 GETUPVAL                         R23 11
      394 GETTABLEKS                       R22 R23 K48 ["testId"]
      396 MOVE                             R23 R12
      397 NAMECALL                         R20 R20 K54 ["format"]
      399 CALL                             R20 3 1
      400 MOVE                             R19 R20
      401 SETTABLEKS                       R19 R18 K48 ["testId"]
      403 CALL                             R16 2 -1
      404 FASTCALL                         TABLE_INSERT ; [+2]
      405 GETIMPORT                        R14 K28 [table.insert]
      407 CALL                             R14 -1 0
      408 ADDK                             R1 R1 K34 [1]
      409 FORNLOOP                         R10
      410 RETURN                           R0 1

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
      248 CAPTURE                          VAL R0
      249 CAPTURE                          VAL R4
      250 CAPTURE                          VAL R14
      251 CAPTURE                          VAL R5
      252 NEWTABLE                         R26 0 5
      254 GETTABLEKS                       R27 R0 K22 ["onSelectedDateChanged"]
      256 GETTABLEKS                       R28 R0 K3 ["showEndDateTimeCalendarInput"]
      258 MOVE                             R29 R23
      259 MOVE                             R30 R4
      260 MOVE                             R31 R3
      261 SETLIST                          R26 R27 5 [1]
      263 CALL                             R24 2 1
      264 GETUPVAL                         R26 2
      265 GETTABLEKS                       R25 R26 K19 ["useCallback"]
      267 NEWCLOSURE                       R26 P11
      268 CAPTURE                          VAL R3
      269 CAPTURE                          VAL R12
      270 CAPTURE                          UPVAL U3
      271 CAPTURE                          VAL R4
      272 CAPTURE                          VAL R14
      273 CAPTURE                          VAL R5
      274 CAPTURE                          VAL R0
      275 NEWTABLE                         R27 0 4
      277 GETTABLEKS                       R28 R0 K22 ["onSelectedDateChanged"]
      279 MOVE                             R29 R4
      280 MOVE                             R30 R23
      281 MOVE                             R31 R3
      282 SETLIST                          R27 R28 4 [1]
      284 CALL                             R25 2 1
      285 GETUPVAL                         R27 2
      286 GETTABLEKS                       R26 R27 K23 ["useMemo"]
      288 NEWCLOSURE                       R27 P12
      289 CAPTURE                          UPVAL U2
      290 CAPTURE                          VAL R1
      291 CAPTURE                          VAL R2
      292 CAPTURE                          UPVAL U3
      293 CAPTURE                          UPVAL U4
      294 CAPTURE                          VAL R13
      295 CAPTURE                          UPVAL U5
      296 CAPTURE                          VAL R22
      297 CAPTURE                          VAL R23
      298 CAPTURE                          VAL R21
      299 CAPTURE                          VAL R20
      300 CAPTURE                          VAL R0
      301 NEWTABLE                         R28 0 8
      303 MOVE                             R29 R21
      304 MOVE                             R30 R22
      305 MOVE                             R31 R23
      306 MOVE                             R32 R13
      307 MOVE                             R33 R4
      308 MOVE                             R34 R20
      309 GETTABLEKS                       R35 R0 K21 ["selectableDateRange"]
      311 GETTABLEKS                       R36 R0 K3 ["showEndDateTimeCalendarInput"]
      313 SETLIST                          R28 R29 8 [1]
      315 CALL                             R26 2 1
      316 GETUPVAL                         R28 2
      317 GETTABLEKS                       R27 R28 K19 ["useCallback"]
      319 NEWCLOSURE                       R28 P13
      320 CAPTURE                          VAL R5
      321 CAPTURE                          VAL R0
      322 NEWTABLE                         R29 0 2
      324 MOVE                             R30 R4
      325 GETTABLEKS                       R31 R0 K22 ["onSelectedDateChanged"]
      327 SETLIST                          R29 R30 2 [1]
      329 CALL                             R27 2 1
      330 GETUPVAL                         R29 2
      331 GETTABLEKS                       R28 R29 K24 ["createElement"]
      333 GETUPVAL                         R29 6
      334 DUPTABLE                         R30 K29 [{"LayoutOrder", "tag", "Size", "testId"}]
      335 GETTABLEKS                       R31 R0 K25 ["LayoutOrder"]
      337 SETTABLEKS                       R31 R30 K25 ["LayoutOrder"]
      339 LOADK                            R31 K30 ["col auto-y"]
      340 SETTABLEKS                       R31 R30 K26 ["tag"]
      342 GETIMPORT                        R31 K33 [UDim2.fromOffset]
      344 MOVE                             R32 R2
      345 LOADN                            R33 0
      346 CALL                             R31 2 1
      347 SETTABLEKS                       R31 R30 K27 ["Size"]
      349 GETTABLEKS                       R31 R0 K28 ["testId"]
      351 SETTABLEKS                       R31 R30 K28 ["testId"]
      353 DUPTABLE                         R31 K38 [{"CalendarHeader", "TimeDropdown", "CalendarInputContainer", "WeekAndDates"}]
      354 GETUPVAL                         R33 2
      355 GETTABLEKS                       R32 R33 K24 ["createElement"]
      357 GETUPVAL                         R33 6
      358 DUPTABLE                         R34 K39 [{"LayoutOrder", "tag"}]
      359 LOADN                            R35 1
      360 SETTABLEKS                       R35 R34 K25 ["LayoutOrder"]
      362 LOADK                            R35 K40 ["row size-full-0 auto-y gap-small align-y-center padding-y-small"]
      363 SETTABLEKS                       R35 R34 K26 ["tag"]
      365 DUPTABLE                         R35 K45 [{"PreviousMonthButton", "MonthText", "YearText", "NextMonthButton"}]
      366 GETUPVAL                         R37 2
      367 GETTABLEKS                       R36 R37 K24 ["createElement"]
      369 GETUPVAL                         R37 7
      370 DUPTABLE                         R38 K51 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      371 LOADN                            R39 1
      372 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      374 GETUPVAL                         R40 8
      375 GETTABLEKS                       R39 R40 K52 ["ChevronSmallLeft"]
      377 SETTABLEKS                       R39 R38 K46 ["icon"]
      379 LOADB                            R39 1
      380 SETTABLEKS                       R39 R38 K47 ["isCircular"]
      382 SETTABLEKS                       R19 R38 K48 ["onActivated"]
      384 GETUPVAL                         R40 9
      385 GETTABLEKS                       R39 R40 K53 ["Small"]
      387 SETTABLEKS                       R39 R38 K49 ["size"]
      389 GETUPVAL                         R40 10
      390 GETTABLEKS                       R39 R40 K54 ["Utility"]
      392 SETTABLEKS                       R39 R38 K50 ["variant"]
      394 LOADK                            R40 K55 ["%*--previous-month-button"]
      395 GETTABLEKS                       R42 R0 K28 ["testId"]
      397 NAMECALL                         R40 R40 K56 ["format"]
      399 CALL                             R40 2 1
      400 MOVE                             R39 R40
      401 SETTABLEKS                       R39 R38 K28 ["testId"]
      403 CALL                             R36 2 1
      404 SETTABLEKS                       R36 R35 K41 ["PreviousMonthButton"]
      406 GETUPVAL                         R37 2
      407 GETTABLEKS                       R36 R37 K24 ["createElement"]
      409 GETUPVAL                         R37 4
      410 DUPTABLE                         R38 K58 [{"LayoutOrder", "Text", "tag", "testId"}]
      411 LOADN                            R39 2
      412 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      414 GETUPVAL                         R41 3
      415 GETTABLEKS                       R40 R41 K59 ["monthMap"]
      417 GETTABLEKS                       R41 R13 K10 ["month"]
      419 GETTABLE                         R39 R40 R41
      420 SETTABLEKS                       R39 R38 K57 ["Text"]
      422 LOADK                            R39 K60 ["grow text-align-x-right auto-xy"]
      423 SETTABLEKS                       R39 R38 K26 ["tag"]
      425 LOADK                            R40 K61 ["%*--month-text"]
      426 GETTABLEKS                       R42 R0 K28 ["testId"]
      428 NAMECALL                         R40 R40 K56 ["format"]
      430 CALL                             R40 2 1
      431 MOVE                             R39 R40
      432 SETTABLEKS                       R39 R38 K28 ["testId"]
      434 CALL                             R36 2 1
      435 SETTABLEKS                       R36 R35 K42 ["MonthText"]
      437 GETUPVAL                         R37 2
      438 GETTABLEKS                       R36 R37 K24 ["createElement"]
      440 GETUPVAL                         R37 4
      441 DUPTABLE                         R38 K58 [{"LayoutOrder", "Text", "tag", "testId"}]
      442 LOADN                            R39 3
      443 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      445 GETTABLEKS                       R40 R13 K11 ["year"]
      447 FASTCALL1                        TOSTRING R40 ; [+2]
      448 GETIMPORT                        R39 K63 [tostring]
      450 CALL                             R39 1 1
      451 SETTABLEKS                       R39 R38 K57 ["Text"]
      453 LOADK                            R39 K64 ["grow text-align-x-left auto-xy"]
      454 SETTABLEKS                       R39 R38 K26 ["tag"]
      456 LOADK                            R40 K65 ["%*--year-text"]
      457 GETTABLEKS                       R42 R0 K28 ["testId"]
      459 NAMECALL                         R40 R40 K56 ["format"]
      461 CALL                             R40 2 1
      462 MOVE                             R39 R40
      463 SETTABLEKS                       R39 R38 K28 ["testId"]
      465 CALL                             R36 2 1
      466 SETTABLEKS                       R36 R35 K43 ["YearText"]
      468 GETUPVAL                         R37 2
      469 GETTABLEKS                       R36 R37 K24 ["createElement"]
      471 GETUPVAL                         R37 7
      472 DUPTABLE                         R38 K51 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      473 LOADN                            R39 4
      474 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      476 GETUPVAL                         R40 8
      477 GETTABLEKS                       R39 R40 K66 ["ChevronSmallRight"]
      479 SETTABLEKS                       R39 R38 K46 ["icon"]
      481 LOADB                            R39 1
      482 SETTABLEKS                       R39 R38 K47 ["isCircular"]
      484 SETTABLEKS                       R18 R38 K48 ["onActivated"]
      486 GETUPVAL                         R40 9
      487 GETTABLEKS                       R39 R40 K53 ["Small"]
      489 SETTABLEKS                       R39 R38 K49 ["size"]
      491 GETUPVAL                         R40 10
      492 GETTABLEKS                       R39 R40 K54 ["Utility"]
      494 SETTABLEKS                       R39 R38 K50 ["variant"]
      496 LOADK                            R40 K67 ["%*--next-month-button"]
      497 GETTABLEKS                       R42 R0 K28 ["testId"]
      499 NAMECALL                         R40 R40 K56 ["format"]
      501 CALL                             R40 2 1
      502 MOVE                             R39 R40
      503 SETTABLEKS                       R39 R38 K28 ["testId"]
      505 CALL                             R36 2 1
      506 SETTABLEKS                       R36 R35 K44 ["NextMonthButton"]
      508 CALL                             R32 3 1
      509 SETTABLEKS                       R32 R31 K34 ["CalendarHeader"]
      511 GETTABLEKS                       R33 R0 K68 ["showTimeDropdown"]
      513 JUMPIFNOT                        R33 ; [+31]
      514 GETUPVAL                         R33 2
      515 GETTABLEKS                       R32 R33 K24 ["createElement"]
      517 GETUPVAL                         R33 11
      518 DUPTABLE                         R34 K73 [{"dateTime", "layoutOrder", "onItemChanged", "width", "testId"}]
      519 GETTABLEN                        R35 R4 1
      520 SETTABLEKS                       R35 R34 K69 ["dateTime"]
      522 LOADN                            R35 2
      523 SETTABLEKS                       R35 R34 K70 ["layoutOrder"]
      525 SETTABLEKS                       R27 R34 K71 ["onItemChanged"]
      527 GETIMPORT                        R35 K76 [UDim.new]
      529 LOADN                            R36 1
      530 LOADN                            R37 0
      531 CALL                             R35 2 1
      532 SETTABLEKS                       R35 R34 K72 ["width"]
      534 LOADK                            R36 K77 ["%*--time-dropdown"]
      535 GETTABLEKS                       R38 R0 K28 ["testId"]
      537 NAMECALL                         R36 R36 K56 ["format"]
      539 CALL                             R36 2 1
      540 MOVE                             R35 R36
      541 SETTABLEKS                       R35 R34 K28 ["testId"]
      543 CALL                             R32 2 1
      544 JUMP                             ; [+1]
      545 LOADNIL                          R32
      546 SETTABLEKS                       R32 R31 K35 ["TimeDropdown"]
      548 GETTABLEKS                       R33 R0 K20 ["showStartDateTimeCalendarInput"]
      550 JUMPIFNOT                        R33 ; [+166]
      551 GETUPVAL                         R33 2
      552 GETTABLEKS                       R32 R33 K24 ["createElement"]
      554 GETUPVAL                         R33 6
      555 DUPTABLE                         R34 K78 [{"LayoutOrder", "tag", "testId"}]
      556 LOADN                            R35 3
      557 SETTABLEKS                       R35 R34 K25 ["LayoutOrder"]
      559 LOADK                            R35 K79 ["flex-x-fill size-full-0 auto-y row gap-small align-y-center"]
      560 SETTABLEKS                       R35 R34 K26 ["tag"]
      562 LOADK                            R36 K80 ["%*--input"]
      563 GETTABLEKS                       R38 R0 K28 ["testId"]
      565 NAMECALL                         R36 R36 K56 ["format"]
      567 CALL                             R36 2 1
      568 MOVE                             R35 R36
      569 SETTABLEKS                       R35 R34 K28 ["testId"]
      571 DUPTABLE                         R35 K84 [{"StartDateTime", "InputSeparator", "EndDateTime"}]
      572 GETUPVAL                         R37 2
      573 GETTABLEKS                       R36 R37 K24 ["createElement"]
      575 GETUPVAL                         R37 12
      576 DUPTABLE                         R38 K92 [{"hasError", "label", "LayoutOrder", "onChanged", "onFocusLost", "placeholder", "size", "text", "onFocusGained", "testId"}]
      577 LOADB                            R39 0
      578 JUMPIFEQKS                       R9 K9 [""] ; [+10]
      580 GETUPVAL                         R41 3
      581 GETTABLEKS                       R40 R41 K93 ["getDateTimeFromText"]
      583 MOVE                             R41 R9
      584 CALL                             R40 1 1
      585 JUMPIFEQKNIL                     R40 ; [+2]
      587 LOADB                            R39 0 +1
      588 LOADB                            R39 1
      589 SETTABLEKS                       R39 R38 K85 ["hasError"]
      591 LOADK                            R39 K9 [""]
      592 SETTABLEKS                       R39 R38 K86 ["label"]
      594 LOADN                            R39 1
      595 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      597 SETTABLEKS                       R24 R38 K87 ["onChanged"]
      599 SETTABLEKS                       R16 R38 K88 ["onFocusLost"]
      601 LOADK                            R39 K94 ["MM/DD/YYYY"]
      602 SETTABLEKS                       R39 R38 K89 ["placeholder"]
      604 GETUPVAL                         R40 9
      605 GETTABLEKS                       R39 R40 K95 ["Medium"]
      607 SETTABLEKS                       R39 R38 K49 ["size"]
      609 SETTABLEKS                       R9 R38 K90 ["text"]
      611 NEWCLOSURE                       R39 P14
      612 CAPTURE                          VAL R8
      613 SETTABLEKS                       R39 R38 K91 ["onFocusGained"]
      615 LOADK                            R40 K96 ["%*--start-datetime-input"]
      616 GETTABLEKS                       R42 R0 K28 ["testId"]
      618 NAMECALL                         R40 R40 K56 ["format"]
      620 CALL                             R40 2 1
      621 MOVE                             R39 R40
      622 SETTABLEKS                       R39 R38 K28 ["testId"]
      624 CALL                             R36 2 1
      625 SETTABLEKS                       R36 R35 K81 ["StartDateTime"]
      627 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      629 JUMPIFNOT                        R37 ; [+16]
      630 GETUPVAL                         R37 2
      631 GETTABLEKS                       R36 R37 K24 ["createElement"]
      633 GETUPVAL                         R37 4
      634 DUPTABLE                         R38 K97 [{"LayoutOrder", "tag", "Text"}]
      635 LOADN                            R39 2
      636 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      638 LOADK                            R39 K98 ["auto-xy"]
      639 SETTABLEKS                       R39 R38 K26 ["tag"]
      641 LOADK                            R39 K99 ["-"]
      642 SETTABLEKS                       R39 R38 K57 ["Text"]
      644 CALL                             R36 2 1
      645 JUMP                             ; [+1]
      646 LOADNIL                          R36
      647 SETTABLEKS                       R36 R35 K82 ["InputSeparator"]
      649 GETTABLEKS                       R37 R0 K3 ["showEndDateTimeCalendarInput"]
      651 JUMPIFNOT                        R37 ; [+60]
      652 GETUPVAL                         R37 2
      653 GETTABLEKS                       R36 R37 K24 ["createElement"]
      655 GETUPVAL                         R37 12
      656 DUPTABLE                         R38 K102 [{"hasError", "isDisabled", "label", "LayoutOrder", "onChanged", "onFocusGained", "onFocusLost", "placeholder", "size", "text", "textBoxRef", "testId"}]
      657 LOADB                            R39 0
      658 JUMPIFEQKS                       R11 K9 [""] ; [+10]
      660 GETUPVAL                         R41 3
      661 GETTABLEKS                       R40 R41 K93 ["getDateTimeFromText"]
      663 MOVE                             R41 R11
      664 CALL                             R40 1 1
      665 JUMPIFEQKNIL                     R40 ; [+2]
      667 LOADB                            R39 0 +1
      668 LOADB                            R39 1
      669 SETTABLEKS                       R39 R38 K85 ["hasError"]
      671 GETTABLEN                        R40 R4 1
      672 NOT                              R39 R40
      673 SETTABLEKS                       R39 R38 K100 ["isDisabled"]
      675 LOADK                            R39 K9 [""]
      676 SETTABLEKS                       R39 R38 K86 ["label"]
      678 LOADN                            R39 3
      679 SETTABLEKS                       R39 R38 K25 ["LayoutOrder"]
      681 SETTABLEKS                       R25 R38 K87 ["onChanged"]
      683 NEWCLOSURE                       R39 P15
      684 CAPTURE                          VAL R8
      685 SETTABLEKS                       R39 R38 K91 ["onFocusGained"]
      687 SETTABLEKS                       R17 R38 K88 ["onFocusLost"]
      689 LOADK                            R39 K94 ["MM/DD/YYYY"]
      690 SETTABLEKS                       R39 R38 K89 ["placeholder"]
      692 GETUPVAL                         R40 9
      693 GETTABLEKS                       R39 R40 K95 ["Medium"]
      695 SETTABLEKS                       R39 R38 K49 ["size"]
      697 SETTABLEKS                       R11 R38 K90 ["text"]
      699 SETTABLEKS                       R6 R38 K101 ["textBoxRef"]
      701 LOADK                            R40 K103 ["%*--end-datetime-input"]
      702 GETTABLEKS                       R42 R0 K28 ["testId"]
      704 NAMECALL                         R40 R40 K56 ["format"]
      706 CALL                             R40 2 1
      707 MOVE                             R39 R40
      708 SETTABLEKS                       R39 R38 K28 ["testId"]
      710 CALL                             R36 2 1
      711 JUMP                             ; [+1]
      712 LOADNIL                          R36
      713 SETTABLEKS                       R36 R35 K83 ["EndDateTime"]
      715 CALL                             R32 3 1
      716 JUMP                             ; [+1]
      717 LOADNIL                          R32
      718 SETTABLEKS                       R32 R31 K36 ["CalendarInputContainer"]
      720 GETUPVAL                         R33 2
      721 GETTABLEKS                       R32 R33 K24 ["createElement"]
      723 GETUPVAL                         R33 6
      724 DUPTABLE                         R34 K78 [{"LayoutOrder", "tag", "testId"}]
      725 LOADN                            R35 4
      726 SETTABLEKS                       R35 R34 K25 ["LayoutOrder"]
      728 LOADK                            R35 K104 ["size-full-0 auto-y"]
      729 SETTABLEKS                       R35 R34 K26 ["tag"]
      731 LOADK                            R36 K105 ["%*--weekAndDates"]
      732 GETTABLEKS                       R38 R0 K28 ["testId"]
      734 NAMECALL                         R36 R36 K56 ["format"]
      736 CALL                             R36 2 1
      737 MOVE                             R35 R36
      738 SETTABLEKS                       R35 R34 K28 ["testId"]
      740 MOVE                             R35 R26
      741 CALL                             R32 3 1
      742 SETTABLEKS                       R32 R31 K37 ["WeekAndDates"]
      744 CALL                             R28 3 -1
      745 RETURN                           R28 -1

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
       48 GETTABLEKS                       R10 R0 K14 ["Components"]
       50 GETTABLEKS                       R9 R10 K15 ["IconButton"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R11 R0 K12 ["Enums"]
       57 GETTABLEKS                       R10 R11 K16 ["InputSize"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R12 R0 K14 ["Components"]
       64 GETTABLEKS                       R11 R12 K17 ["Text"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R13 R0 K14 ["Components"]
       71 GETTABLEKS                       R12 R13 K18 ["TextInput"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETIMPORT                        R15 K1 [script]
       78 GETTABLEKS                       R14 R15 K4 ["Parent"]
       80 GETTABLEKS                       R13 R14 K19 ["TimeDropdown"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K6 [require]
       85 GETTABLEKS                       R15 R0 K14 ["Components"]
       87 GETTABLEKS                       R14 R15 K20 ["View"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K6 [require]
       92 GETTABLEKS                       R16 R0 K21 ["Utility"]
       94 GETTABLEKS                       R15 R16 K22 ["useScaledValue"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K6 [require]
       99 GETTABLEKS                       R18 R0 K23 ["Providers"]
      101 GETTABLEKS                       R17 R18 K24 ["Style"]
      103 GETTABLEKS                       R16 R17 K25 ["useTokens"]
      105 CALL                             R15 1 1
      106 DUPCLOSURE                       R16 K26 [PROTO_20]
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
