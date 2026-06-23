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
       23 JUMPIFNOT                        R4 ; [+81]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K7 ["showEndDateTimeCalendarInput"]
       27 JUMPIFNOT                        R4 ; [+62]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K8 ["startDateTimeInput"]
       31 JUMPIFNOT                        R4 ; [+17]
       32 GETUPVAL                         R4 3
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R5 R5 K9 ["formatLocalTime"]
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
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K10 ["endDateTimeInput"]
       52 JUMPIFNOT                        R4 ; [+17]
       53 GETUPVAL                         R4 6
       54 GETUPVAL                         R5 4
       55 GETTABLEKS                       R5 R5 K9 ["formatLocalTime"]
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
       71 GETUPVAL                         R5 4
       72 GETTABLEKS                       R5 R5 K9 ["formatLocalTime"]
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
       91 GETUPVAL                         R5 4
       92 GETTABLEKS                       R5 R5 K9 ["formatLocalTime"]
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
      119 GETUPVAL                         R4 1
      120 GETTABLEKS                       R4 R4 K16 ["onSelectedDateChanged"]
      122 NEWTABLE                         R5 0 1
      124 MOVE                             R6 R3
      125 SETLIST                          R5 R6 1 [1]
      127 CALL                             R4 1 0
      128 RETURN                           R0 0

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
       78 LOADK                            R12 K33 ["text-body-small text-align-x-center text-align-y-center"]
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
      141 GETUPVAL                         R14 0
      142 GETTABLEKS                       R14 R14 K0 ["createElement"]
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
      183 GETUPVAL                         R20 11
      184 GETTABLEKS                       R20 R20 K48 ["testId"]
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
      201 GETUPVAL                         R10 3
      202 GETTABLEKS                       R10 R10 K39 ["getDaysInMonth"]
      204 GETUPVAL                         R11 5
      205 GETTABLEKS                       R11 R11 K36 ["month"]
      207 GETUPVAL                         R12 5
      208 GETTABLEKS                       R12 R12 K37 ["year"]
      210 CALL                             R10 2 1
      211 MOVE                             R7 R10
      212 LOADN                            R8 1
      213 FORNPREP                         R7
      214 GETUPVAL                         R10 8
      215 GETIMPORT                        R11 K43 [DateTime.fromLocalTime]
      217 GETUPVAL                         R12 5
      218 GETTABLEKS                       R12 R12 K37 ["year"]
      220 GETUPVAL                         R13 5
      221 GETTABLEKS                       R13 R13 K36 ["month"]
      223 MOVE                             R14 R9
      224 CALL                             R11 3 -1
      225 CALL                             R10 -1 1
      226 GETUPVAL                         R11 9
      227 GETIMPORT                        R12 K43 [DateTime.fromLocalTime]
      229 GETUPVAL                         R13 5
      230 GETTABLEKS                       R13 R13 K37 ["year"]
      232 GETUPVAL                         R14 5
      233 GETTABLEKS                       R14 R14 K36 ["month"]
      235 MOVE                             R15 R9
      236 CALL                             R12 3 -1
      237 CALL                             R11 -1 1
      238 MOVE                             R13 R0
      239 GETUPVAL                         R14 0
      240 GETTABLEKS                       R14 R14 K0 ["createElement"]
      242 GETUPVAL                         R15 6
      243 DUPTABLE                         R16 K56 [{"emphasizeText", "highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      244 MOVE                             R17 R10
      245 JUMPIFNOT                        R17 ; [+1]
      246 NOT                              R17 R11
      247 SETTABLEKS                       R17 R16 K55 ["emphasizeText"]
      249 GETUPVAL                         R17 7
      250 GETIMPORT                        R18 K43 [DateTime.fromLocalTime]
      252 GETUPVAL                         R19 5
      253 GETTABLEKS                       R19 R19 K37 ["year"]
      255 GETUPVAL                         R20 5
      256 GETTABLEKS                       R20 R20 K36 ["month"]
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
      288 GETUPVAL                         R20 11
      289 GETTABLEKS                       R20 R20 K48 ["testId"]
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
      305 GETUPVAL                         R7 3
      306 GETTABLEKS                       R7 R7 K59 ["getLastDayOfWeek"]
      308 GETUPVAL                         R8 5
      309 GETTABLEKS                       R8 R8 K36 ["month"]
      311 GETUPVAL                         R9 5
      312 GETTABLEKS                       R9 R9 K37 ["year"]
      314 CALL                             R7 2 1
      315 GETUPVAL                         R8 3
      316 GETTABLEKS                       R8 R8 K60 ["getNextMonthInfo"]
      318 GETUPVAL                         R9 5
      319 GETTABLEKS                       R9 R9 K36 ["month"]
      321 GETUPVAL                         R10 5
      322 GETTABLEKS                       R10 R10 K37 ["year"]
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
      351 GETUPVAL                         R16 0
      352 GETTABLEKS                       R16 R16 K0 ["createElement"]
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
      393 GETUPVAL                         R22 11
      394 GETTABLEKS                       R22 R22 K48 ["testId"]
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
        1 DUPTABLE                         R1 K2 [{"startDateTimeInput", "endDateTimeInput"}]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R1 K0 ["startDateTimeInput"]
        5 LOADB                            R2 0
        6 SETTABLEKS                       R2 R1 K1 ["endDateTimeInput"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"startDateTimeInput", "endDateTimeInput"}]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R1 K0 ["startDateTimeInput"]
        5 LOADB                            R2 1
        6 SETTABLEKS                       R2 R1 K1 ["endDateTimeInput"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADN                            R3 16
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
       54 JUMPIFNOT                        R10 ; [+8]
       55 DUPTABLE                         R9 K11 [{"startDateTimeInput", "endDateTimeInput"}]
       56 LOADB                            R10 0
       57 SETTABLEKS                       R10 R9 K9 ["startDateTimeInput"]
       59 LOADB                            R10 1
       60 SETTABLEKS                       R10 R9 K10 ["endDateTimeInput"]
       62 JUMP                             ; [+7]
       63 DUPTABLE                         R9 K11 [{"startDateTimeInput", "endDateTimeInput"}]
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K9 ["startDateTimeInput"]
       67 LOADB                            R10 0
       68 SETTABLEKS                       R10 R9 K10 ["endDateTimeInput"]
       70 CALL                             R8 1 2
       71 GETUPVAL                         R10 2
       72 GETTABLEKS                       R10 R10 K5 ["useEffect"]
       74 NEWCLOSURE                       R11 P1
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R7
       78 NEWTABLE                         R12 0 1
       80 MOVE                             R13 R8
       81 SETLIST                          R12 R13 1 [1]
       83 CALL                             R10 2 0
       84 GETUPVAL                         R10 2
       85 GETTABLEKS                       R10 R10 K7 ["useState"]
       87 GETUPVAL                         R11 3
       88 GETTABLEKS                       R11 R11 K12 ["formatLocalTime"]
       90 GETTABLEN                        R12 R4 1
       91 CALL                             R11 1 -1
       92 CALL                             R10 -1 2
       93 GETUPVAL                         R12 2
       94 GETTABLEKS                       R12 R12 K7 ["useState"]
       96 GETTABLEN                        R14 R4 2
       97 JUMPIFNOT                        R14 ; [+6]
       98 GETUPVAL                         R13 3
       99 GETTABLEKS                       R13 R13 K12 ["formatLocalTime"]
      101 GETTABLEN                        R14 R4 2
      102 CALL                             R13 1 1
      103 JUMP                             ; [+1]
      104 LOADK                            R13 K13 [""]
      105 CALL                             R12 1 2
      106 GETUPVAL                         R14 2
      107 GETTABLEKS                       R14 R14 K5 ["useEffect"]
      109 NEWCLOSURE                       R15 P2
      110 CAPTURE                          VAL R3
      111 NEWTABLE                         R16 0 0
      113 CALL                             R14 2 0
      114 GETUPVAL                         R14 2
      115 GETTABLEKS                       R14 R14 K7 ["useState"]
      117 DUPTABLE                         R15 K16 [{"month", "year"}]
      118 GETTABLEN                        R16 R4 1
      119 NAMECALL                         R16 R16 K17 ["ToLocalTime"]
      121 CALL                             R16 1 1
      122 GETTABLEKS                       R16 R16 K18 ["Month"]
      124 SETTABLEKS                       R16 R15 K14 ["month"]
      126 GETTABLEN                        R16 R4 1
      127 NAMECALL                         R16 R16 K17 ["ToLocalTime"]
      129 CALL                             R16 1 1
      130 GETTABLEKS                       R16 R16 K19 ["Year"]
      132 SETTABLEKS                       R16 R15 K15 ["year"]
      134 CALL                             R14 1 2
      135 NEWTABLE                         R16 0 0
      137 MOVE                             R17 R5
      138 LOADNIL                          R18
      139 LOADNIL                          R19
      140 FORGPREP                         R17
      141 MOVE                             R23 R16
      142 NAMECALL                         R24 R21 K17 ["ToLocalTime"]
      144 CALL                             R24 1 -1
      145 FASTCALL                         TABLE_INSERT ; [+2]
      146 GETIMPORT                        R22 K22 [table.insert]
      148 CALL                             R22 -1 0
      149 FORGLOOP                         R17 2 ; [-9]
      151 NEWCLOSURE                       R17 P3
      152 CAPTURE                          UPVAL U3
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R4
      157 NEWCLOSURE                       R18 P4
      158 CAPTURE                          UPVAL U3
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R4
      163 GETUPVAL                         R19 2
      164 GETTABLEKS                       R19 R19 K23 ["useCallback"]
      166 NEWCLOSURE                       R20 P5
      167 CAPTURE                          UPVAL U3
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R15
      170 NEWTABLE                         R21 0 1
      172 MOVE                             R22 R14
      173 SETLIST                          R21 R22 1 [1]
      175 CALL                             R19 2 1
      176 GETUPVAL                         R20 2
      177 GETTABLEKS                       R20 R20 K23 ["useCallback"]
      179 NEWCLOSURE                       R21 P6
      180 CAPTURE                          UPVAL U3
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R15
      183 NEWTABLE                         R22 0 1
      185 MOVE                             R23 R14
      186 SETLIST                          R22 R23 1 [1]
      188 CALL                             R20 2 1
      189 GETUPVAL                         R21 2
      190 GETTABLEKS                       R21 R21 K23 ["useCallback"]
      192 NEWCLOSURE                       R22 P7
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R0
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R11
      197 CAPTURE                          UPVAL U3
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R6
      202 NEWTABLE                         R23 0 5
      204 GETTABLEKS                       R24 R0 K24 ["showStartDateTimeCalendarInput"]
      206 GETTABLEKS                       R25 R0 K8 ["showEndDateTimeCalendarInput"]
      208 MOVE                             R26 R5
      209 MOVE                             R27 R8
      210 MOVE                             R28 R7
      211 SETLIST                          R23 R24 5 [1]
      213 CALL                             R21 2 1
      214 GETUPVAL                         R22 2
      215 GETTABLEKS                       R22 R22 K23 ["useCallback"]
      217 NEWCLOSURE                       R23 P8
      218 CAPTURE                          VAL R16
      219 NEWTABLE                         R24 0 1
      221 MOVE                             R25 R16
      222 SETLIST                          R24 R25 1 [1]
      224 CALL                             R22 2 1
      225 GETUPVAL                         R23 2
      226 GETTABLEKS                       R23 R23 K23 ["useCallback"]
      228 NEWCLOSURE                       R24 P9
      229 CAPTURE                          VAL R0
      230 CAPTURE                          VAL R5
      231 CAPTURE                          UPVAL U3
      232 NEWTABLE                         R25 0 2
      234 GETTABLEKS                       R26 R0 K8 ["showEndDateTimeCalendarInput"]
      236 MOVE                             R27 R5
      237 SETLIST                          R25 R26 2 [1]
      239 CALL                             R23 2 1
      240 GETUPVAL                         R24 2
      241 GETTABLEKS                       R24 R24 K23 ["useCallback"]
      243 NEWCLOSURE                       R25 P10
      244 CAPTURE                          VAL R0
      245 CAPTURE                          UPVAL U3
      246 CAPTURE                          VAL R8
      247 CAPTURE                          VAL R5
      248 NEWTABLE                         R26 0 4
      250 MOVE                             R27 R5
      251 GETTABLEKS                       R28 R0 K25 ["selectableDateRange"]
      253 MOVE                             R29 R8
      254 GETTABLEKS                       R30 R0 K8 ["showEndDateTimeCalendarInput"]
      256 SETLIST                          R26 R27 4 [1]
      258 CALL                             R24 2 1
      259 GETUPVAL                         R25 2
      260 GETTABLEKS                       R25 R25 K23 ["useCallback"]
      262 NEWCLOSURE                       R26 P11
      263 CAPTURE                          VAL R3
      264 CAPTURE                          VAL R11
      265 CAPTURE                          UPVAL U3
      266 CAPTURE                          VAL R0
      267 CAPTURE                          VAL R5
      268 CAPTURE                          VAL R15
      269 CAPTURE                          VAL R6
      270 NEWTABLE                         R27 0 5
      272 GETTABLEKS                       R28 R0 K6 ["onSelectedDateChanged"]
      274 GETTABLEKS                       R29 R0 K8 ["showEndDateTimeCalendarInput"]
      276 MOVE                             R30 R24
      277 MOVE                             R31 R5
      278 MOVE                             R32 R3
      279 SETLIST                          R27 R28 5 [1]
      281 CALL                             R25 2 1
      282 GETUPVAL                         R26 2
      283 GETTABLEKS                       R26 R26 K23 ["useCallback"]
      285 NEWCLOSURE                       R27 P12
      286 CAPTURE                          VAL R3
      287 CAPTURE                          VAL R13
      288 CAPTURE                          UPVAL U3
      289 CAPTURE                          VAL R5
      290 CAPTURE                          VAL R15
      291 CAPTURE                          VAL R6
      292 CAPTURE                          VAL R0
      293 NEWTABLE                         R28 0 4
      295 GETTABLEKS                       R29 R0 K6 ["onSelectedDateChanged"]
      297 MOVE                             R30 R5
      298 MOVE                             R31 R24
      299 MOVE                             R32 R3
      300 SETLIST                          R28 R29 4 [1]
      302 CALL                             R26 2 1
      303 GETUPVAL                         R27 2
      304 GETTABLEKS                       R27 R27 K26 ["useMemo"]
      306 NEWCLOSURE                       R28 P13
      307 CAPTURE                          UPVAL U2
      308 CAPTURE                          VAL R1
      309 CAPTURE                          VAL R2
      310 CAPTURE                          UPVAL U3
      311 CAPTURE                          UPVAL U4
      312 CAPTURE                          VAL R14
      313 CAPTURE                          UPVAL U5
      314 CAPTURE                          VAL R23
      315 CAPTURE                          VAL R24
      316 CAPTURE                          VAL R22
      317 CAPTURE                          VAL R21
      318 CAPTURE                          VAL R0
      319 NEWTABLE                         R29 0 8
      321 MOVE                             R30 R22
      322 MOVE                             R31 R23
      323 MOVE                             R32 R24
      324 MOVE                             R33 R14
      325 MOVE                             R34 R5
      326 MOVE                             R35 R21
      327 GETTABLEKS                       R36 R0 K25 ["selectableDateRange"]
      329 GETTABLEKS                       R37 R0 K8 ["showEndDateTimeCalendarInput"]
      331 SETLIST                          R29 R30 8 [1]
      333 CALL                             R27 2 1
      334 GETUPVAL                         R28 2
      335 GETTABLEKS                       R28 R28 K23 ["useCallback"]
      337 NEWCLOSURE                       R29 P14
      338 CAPTURE                          VAL R6
      339 CAPTURE                          VAL R0
      340 NEWTABLE                         R30 0 2
      342 MOVE                             R31 R5
      343 GETTABLEKS                       R32 R0 K6 ["onSelectedDateChanged"]
      345 SETLIST                          R30 R31 2 [1]
      347 CALL                             R28 2 1
      348 GETUPVAL                         R29 2
      349 GETTABLEKS                       R29 R29 K27 ["createElement"]
      351 GETUPVAL                         R30 6
      352 DUPTABLE                         R31 K32 [{"LayoutOrder", "tag", "Size", "testId"}]
      353 GETTABLEKS                       R32 R0 K28 ["LayoutOrder"]
      355 SETTABLEKS                       R32 R31 K28 ["LayoutOrder"]
      357 LOADK                            R32 K33 ["col auto-y"]
      358 SETTABLEKS                       R32 R31 K29 ["tag"]
      360 GETIMPORT                        R32 K36 [UDim2.fromOffset]
      362 MOVE                             R33 R2
      363 LOADN                            R34 0
      364 CALL                             R32 2 1
      365 SETTABLEKS                       R32 R31 K30 ["Size"]
      367 GETTABLEKS                       R32 R0 K31 ["testId"]
      369 SETTABLEKS                       R32 R31 K31 ["testId"]
      371 DUPTABLE                         R32 K41 [{"CalendarHeader", "TimeDropdown", "CalendarInputContainer", "WeekAndDates"}]
      372 GETUPVAL                         R33 2
      373 GETTABLEKS                       R33 R33 K27 ["createElement"]
      375 GETUPVAL                         R34 6
      376 DUPTABLE                         R35 K42 [{"LayoutOrder", "tag"}]
      377 LOADN                            R36 1
      378 SETTABLEKS                       R36 R35 K28 ["LayoutOrder"]
      380 LOADK                            R36 K43 ["row align-y-center gap-small size-full-0 auto-y padding-y-small"]
      381 SETTABLEKS                       R36 R35 K29 ["tag"]
      383 DUPTABLE                         R36 K48 [{"PreviousMonthButton", "MonthText", "YearText", "NextMonthButton"}]
      384 GETUPVAL                         R37 2
      385 GETTABLEKS                       R37 R37 K27 ["createElement"]
      387 GETUPVAL                         R38 7
      388 DUPTABLE                         R39 K54 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      389 LOADN                            R40 1
      390 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      392 GETUPVAL                         R40 8
      393 GETTABLEKS                       R40 R40 K55 ["ChevronSmallLeft"]
      395 SETTABLEKS                       R40 R39 K49 ["icon"]
      397 LOADB                            R40 1
      398 SETTABLEKS                       R40 R39 K50 ["isCircular"]
      400 SETTABLEKS                       R20 R39 K51 ["onActivated"]
      402 GETUPVAL                         R40 9
      403 GETTABLEKS                       R40 R40 K56 ["Small"]
      405 SETTABLEKS                       R40 R39 K52 ["size"]
      407 GETUPVAL                         R40 10
      408 GETTABLEKS                       R40 R40 K57 ["Utility"]
      410 SETTABLEKS                       R40 R39 K53 ["variant"]
      412 LOADK                            R41 K58 ["%*--previous-month-button"]
      413 GETTABLEKS                       R43 R0 K31 ["testId"]
      415 NAMECALL                         R41 R41 K59 ["format"]
      417 CALL                             R41 2 1
      418 MOVE                             R40 R41
      419 SETTABLEKS                       R40 R39 K31 ["testId"]
      421 CALL                             R37 2 1
      422 SETTABLEKS                       R37 R36 K44 ["PreviousMonthButton"]
      424 GETUPVAL                         R37 2
      425 GETTABLEKS                       R37 R37 K27 ["createElement"]
      427 GETUPVAL                         R38 4
      428 DUPTABLE                         R39 K61 [{"LayoutOrder", "Text", "tag", "testId"}]
      429 LOADN                            R40 2
      430 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      432 GETUPVAL                         R41 3
      433 GETTABLEKS                       R41 R41 K62 ["monthMap"]
      435 GETTABLEKS                       R42 R14 K14 ["month"]
      437 GETTABLE                         R40 R41 R42
      438 SETTABLEKS                       R40 R39 K60 ["Text"]
      440 LOADK                            R40 K63 ["grow auto-xy text-align-x-right"]
      441 SETTABLEKS                       R40 R39 K29 ["tag"]
      443 LOADK                            R41 K64 ["%*--month-text"]
      444 GETTABLEKS                       R43 R0 K31 ["testId"]
      446 NAMECALL                         R41 R41 K59 ["format"]
      448 CALL                             R41 2 1
      449 MOVE                             R40 R41
      450 SETTABLEKS                       R40 R39 K31 ["testId"]
      452 CALL                             R37 2 1
      453 SETTABLEKS                       R37 R36 K45 ["MonthText"]
      455 GETUPVAL                         R37 2
      456 GETTABLEKS                       R37 R37 K27 ["createElement"]
      458 GETUPVAL                         R38 4
      459 DUPTABLE                         R39 K61 [{"LayoutOrder", "Text", "tag", "testId"}]
      460 LOADN                            R40 3
      461 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      463 GETTABLEKS                       R41 R14 K15 ["year"]
      465 FASTCALL1                        TOSTRING R41 ; [+2]
      466 GETIMPORT                        R40 K66 [tostring]
      468 CALL                             R40 1 1
      469 SETTABLEKS                       R40 R39 K60 ["Text"]
      471 LOADK                            R40 K67 ["grow auto-xy text-align-x-left"]
      472 SETTABLEKS                       R40 R39 K29 ["tag"]
      474 LOADK                            R41 K68 ["%*--year-text"]
      475 GETTABLEKS                       R43 R0 K31 ["testId"]
      477 NAMECALL                         R41 R41 K59 ["format"]
      479 CALL                             R41 2 1
      480 MOVE                             R40 R41
      481 SETTABLEKS                       R40 R39 K31 ["testId"]
      483 CALL                             R37 2 1
      484 SETTABLEKS                       R37 R36 K46 ["YearText"]
      486 GETUPVAL                         R37 2
      487 GETTABLEKS                       R37 R37 K27 ["createElement"]
      489 GETUPVAL                         R38 7
      490 DUPTABLE                         R39 K54 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      491 LOADN                            R40 4
      492 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      494 GETUPVAL                         R40 8
      495 GETTABLEKS                       R40 R40 K69 ["ChevronSmallRight"]
      497 SETTABLEKS                       R40 R39 K49 ["icon"]
      499 LOADB                            R40 1
      500 SETTABLEKS                       R40 R39 K50 ["isCircular"]
      502 SETTABLEKS                       R19 R39 K51 ["onActivated"]
      504 GETUPVAL                         R40 9
      505 GETTABLEKS                       R40 R40 K56 ["Small"]
      507 SETTABLEKS                       R40 R39 K52 ["size"]
      509 GETUPVAL                         R40 10
      510 GETTABLEKS                       R40 R40 K57 ["Utility"]
      512 SETTABLEKS                       R40 R39 K53 ["variant"]
      514 LOADK                            R41 K70 ["%*--next-month-button"]
      515 GETTABLEKS                       R43 R0 K31 ["testId"]
      517 NAMECALL                         R41 R41 K59 ["format"]
      519 CALL                             R41 2 1
      520 MOVE                             R40 R41
      521 SETTABLEKS                       R40 R39 K31 ["testId"]
      523 CALL                             R37 2 1
      524 SETTABLEKS                       R37 R36 K47 ["NextMonthButton"]
      526 CALL                             R33 3 1
      527 SETTABLEKS                       R33 R32 K37 ["CalendarHeader"]
      529 GETTABLEKS                       R34 R0 K71 ["showTimeDropdown"]
      531 JUMPIFNOT                        R34 ; [+31]
      532 GETUPVAL                         R33 2
      533 GETTABLEKS                       R33 R33 K27 ["createElement"]
      535 GETUPVAL                         R34 11
      536 DUPTABLE                         R35 K76 [{"dateTime", "layoutOrder", "onItemChanged", "width", "testId"}]
      537 GETTABLEN                        R36 R5 1
      538 SETTABLEKS                       R36 R35 K72 ["dateTime"]
      540 LOADN                            R36 2
      541 SETTABLEKS                       R36 R35 K73 ["layoutOrder"]
      543 SETTABLEKS                       R28 R35 K74 ["onItemChanged"]
      545 GETIMPORT                        R36 K79 [UDim.new]
      547 LOADN                            R37 1
      548 LOADN                            R38 0
      549 CALL                             R36 2 1
      550 SETTABLEKS                       R36 R35 K75 ["width"]
      552 LOADK                            R37 K80 ["%*--time-dropdown"]
      553 GETTABLEKS                       R39 R0 K31 ["testId"]
      555 NAMECALL                         R37 R37 K59 ["format"]
      557 CALL                             R37 2 1
      558 MOVE                             R36 R37
      559 SETTABLEKS                       R36 R35 K31 ["testId"]
      561 CALL                             R33 2 1
      562 JUMP                             ; [+1]
      563 LOADNIL                          R33
      564 SETTABLEKS                       R33 R32 K38 ["TimeDropdown"]
      566 GETTABLEKS                       R34 R0 K24 ["showStartDateTimeCalendarInput"]
      568 JUMPIFNOT                        R34 ; [+166]
      569 GETUPVAL                         R33 2
      570 GETTABLEKS                       R33 R33 K27 ["createElement"]
      572 GETUPVAL                         R34 6
      573 DUPTABLE                         R35 K81 [{"LayoutOrder", "tag", "testId"}]
      574 LOADN                            R36 3
      575 SETTABLEKS                       R36 R35 K28 ["LayoutOrder"]
      577 LOADK                            R36 K82 ["row flex-x-fill align-y-center gap-small size-full-0 auto-y"]
      578 SETTABLEKS                       R36 R35 K29 ["tag"]
      580 LOADK                            R37 K83 ["%*--input"]
      581 GETTABLEKS                       R39 R0 K31 ["testId"]
      583 NAMECALL                         R37 R37 K59 ["format"]
      585 CALL                             R37 2 1
      586 MOVE                             R36 R37
      587 SETTABLEKS                       R36 R35 K31 ["testId"]
      589 DUPTABLE                         R36 K87 [{"StartDateTime", "InputSeparator", "EndDateTime"}]
      590 GETUPVAL                         R37 2
      591 GETTABLEKS                       R37 R37 K27 ["createElement"]
      593 GETUPVAL                         R38 12
      594 DUPTABLE                         R39 K95 [{"hasError", "label", "LayoutOrder", "onChanged", "onFocusLost", "placeholder", "size", "text", "onFocusGained", "testId"}]
      595 LOADB                            R40 0
      596 JUMPIFEQKS                       R10 K13 [""] ; [+10]
      598 GETUPVAL                         R41 3
      599 GETTABLEKS                       R41 R41 K96 ["getDateTimeFromText"]
      601 MOVE                             R42 R10
      602 CALL                             R41 1 1
      603 JUMPIFEQKNIL                     R41 ; [+2]
      605 LOADB                            R40 0 +1
      606 LOADB                            R40 1
      607 SETTABLEKS                       R40 R39 K88 ["hasError"]
      609 LOADK                            R40 K13 [""]
      610 SETTABLEKS                       R40 R39 K89 ["label"]
      612 LOADN                            R40 1
      613 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      615 SETTABLEKS                       R25 R39 K90 ["onChanged"]
      617 SETTABLEKS                       R17 R39 K91 ["onFocusLost"]
      619 LOADK                            R40 K97 ["MM/DD/YYYY"]
      620 SETTABLEKS                       R40 R39 K92 ["placeholder"]
      622 GETUPVAL                         R40 9
      623 GETTABLEKS                       R40 R40 K98 ["Medium"]
      625 SETTABLEKS                       R40 R39 K52 ["size"]
      627 SETTABLEKS                       R10 R39 K93 ["text"]
      629 NEWCLOSURE                       R40 P15
      630 CAPTURE                          VAL R9
      631 SETTABLEKS                       R40 R39 K94 ["onFocusGained"]
      633 LOADK                            R41 K99 ["%*--start-datetime-input"]
      634 GETTABLEKS                       R43 R0 K31 ["testId"]
      636 NAMECALL                         R41 R41 K59 ["format"]
      638 CALL                             R41 2 1
      639 MOVE                             R40 R41
      640 SETTABLEKS                       R40 R39 K31 ["testId"]
      642 CALL                             R37 2 1
      643 SETTABLEKS                       R37 R36 K84 ["StartDateTime"]
      645 GETTABLEKS                       R38 R0 K8 ["showEndDateTimeCalendarInput"]
      647 JUMPIFNOT                        R38 ; [+16]
      648 GETUPVAL                         R37 2
      649 GETTABLEKS                       R37 R37 K27 ["createElement"]
      651 GETUPVAL                         R38 4
      652 DUPTABLE                         R39 K100 [{"LayoutOrder", "tag", "Text"}]
      653 LOADN                            R40 2
      654 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      656 LOADK                            R40 K101 ["auto-xy"]
      657 SETTABLEKS                       R40 R39 K29 ["tag"]
      659 LOADK                            R40 K102 ["-"]
      660 SETTABLEKS                       R40 R39 K60 ["Text"]
      662 CALL                             R37 2 1
      663 JUMP                             ; [+1]
      664 LOADNIL                          R37
      665 SETTABLEKS                       R37 R36 K85 ["InputSeparator"]
      667 GETTABLEKS                       R38 R0 K8 ["showEndDateTimeCalendarInput"]
      669 JUMPIFNOT                        R38 ; [+60]
      670 GETUPVAL                         R37 2
      671 GETTABLEKS                       R37 R37 K27 ["createElement"]
      673 GETUPVAL                         R38 12
      674 DUPTABLE                         R39 K105 [{"hasError", "isDisabled", "label", "LayoutOrder", "onChanged", "onFocusGained", "onFocusLost", "placeholder", "size", "text", "textBoxRef", "testId"}]
      675 LOADB                            R40 0
      676 JUMPIFEQKS                       R12 K13 [""] ; [+10]
      678 GETUPVAL                         R41 3
      679 GETTABLEKS                       R41 R41 K96 ["getDateTimeFromText"]
      681 MOVE                             R42 R12
      682 CALL                             R41 1 1
      683 JUMPIFEQKNIL                     R41 ; [+2]
      685 LOADB                            R40 0 +1
      686 LOADB                            R40 1
      687 SETTABLEKS                       R40 R39 K88 ["hasError"]
      689 GETTABLEN                        R41 R5 1
      690 NOT                              R40 R41
      691 SETTABLEKS                       R40 R39 K103 ["isDisabled"]
      693 LOADK                            R40 K13 [""]
      694 SETTABLEKS                       R40 R39 K89 ["label"]
      696 LOADN                            R40 3
      697 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      699 SETTABLEKS                       R26 R39 K90 ["onChanged"]
      701 NEWCLOSURE                       R40 P16
      702 CAPTURE                          VAL R9
      703 SETTABLEKS                       R40 R39 K94 ["onFocusGained"]
      705 SETTABLEKS                       R18 R39 K91 ["onFocusLost"]
      707 LOADK                            R40 K97 ["MM/DD/YYYY"]
      708 SETTABLEKS                       R40 R39 K92 ["placeholder"]
      710 GETUPVAL                         R40 9
      711 GETTABLEKS                       R40 R40 K98 ["Medium"]
      713 SETTABLEKS                       R40 R39 K52 ["size"]
      715 SETTABLEKS                       R12 R39 K93 ["text"]
      717 SETTABLEKS                       R7 R39 K104 ["textBoxRef"]
      719 LOADK                            R41 K106 ["%*--end-datetime-input"]
      720 GETTABLEKS                       R43 R0 K31 ["testId"]
      722 NAMECALL                         R41 R41 K59 ["format"]
      724 CALL                             R41 2 1
      725 MOVE                             R40 R41
      726 SETTABLEKS                       R40 R39 K31 ["testId"]
      728 CALL                             R37 2 1
      729 JUMP                             ; [+1]
      730 LOADNIL                          R37
      731 SETTABLEKS                       R37 R36 K86 ["EndDateTime"]
      733 CALL                             R33 3 1
      734 JUMP                             ; [+1]
      735 LOADNIL                          R33
      736 SETTABLEKS                       R33 R32 K39 ["CalendarInputContainer"]
      738 GETUPVAL                         R33 2
      739 GETTABLEKS                       R33 R33 K27 ["createElement"]
      741 GETUPVAL                         R34 6
      742 DUPTABLE                         R35 K81 [{"LayoutOrder", "tag", "testId"}]
      743 LOADN                            R36 4
      744 SETTABLEKS                       R36 R35 K28 ["LayoutOrder"]
      746 LOADK                            R36 K107 ["size-full-0 auto-y"]
      747 SETTABLEKS                       R36 R35 K29 ["tag"]
      749 LOADK                            R37 K108 ["%*--weekAndDates"]
      750 GETTABLEKS                       R39 R0 K31 ["testId"]
      752 NAMECALL                         R37 R37 K59 ["format"]
      754 CALL                             R37 2 1
      755 MOVE                             R36 R37
      756 SETTABLEKS                       R36 R35 K31 ["testId"]
      758 MOVE                             R36 R27
      759 CALL                             R33 3 1
      760 SETTABLEKS                       R33 R32 K40 ["WeekAndDates"]
      762 CALL                             R29 3 -1
      763 RETURN                           R29 -1

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
