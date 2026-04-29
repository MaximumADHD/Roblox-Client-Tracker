PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSelectedDateChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDateTimeFromText"]
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
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 2
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R2 R1 ; [+9]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K2 ["formatLocalTime"]
       30 GETUPVAL                         R4 4
       31 GETTABLEN                        R3 R4 1
       32 CALL                             R2 1 -1
       33 CALL                             R1 -1 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDateTimeFromText"]
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
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 1
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R1 R2 ; [+9]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K2 ["formatLocalTime"]
       30 GETUPVAL                         R4 4
       31 GETTABLEN                        R3 R4 2
       32 CALL                             R2 1 -1
       33 CALL                             R1 -1 0
       34 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["month"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["year"]
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
       78 LOADK                            R12 K33 ["text-body-small text-align-x-center text-align-y-center"]
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

PROTO_18:
        0 GETIMPORT                        R1 K2 [DateTime.fromUnixTimestamp]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R3 K5 [os.date]
        6 LOADK                            R4 K6 ["*t"]
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R2 R3 K7 ["isdst"]
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
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K10 ["onSelectedDateChanged"]
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
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K0 ["useRef"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 3
       11 JUMPIFNOT                        R5 ; [+11]
       12 GETTABLEKS                       R5 R0 K1 ["defaultDates"]
       14 JUMPIF                           R5 ; [+8]
       15 NEWTABLE                         R4 0 1
       17 GETIMPORT                        R5 K4 [DateTime.now]
       19 CALL                             R5 0 -1
       20 SETLIST                          R4 R5 -1 [1]
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R4 R0 K1 ["defaultDates"]
       25 GETUPVAL                         R5 3
       26 JUMPIFNOT                        R5 ; [+16]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R5 R6 K5 ["useEffect"]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R4
       33 NEWTABLE                         R7 0 3
       35 MOVE                             R8 R4
       36 GETTABLEKS                       R9 R0 K1 ["defaultDates"]
       38 GETTABLEKS                       R10 R0 K6 ["onSelectedDateChanged"]
       40 SETLIST                          R7 R8 3 [1]
       42 CALL                             R5 2 0
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R5 R6 K7 ["useState"]
       46 MOVE                             R6 R4
       47 CALL                             R5 1 2
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R7 R8 K0 ["useRef"]
       51 LOADNIL                          R8
       52 CALL                             R7 1 1
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R8 R9 K7 ["useState"]
       56 GETTABLEKS                       R10 R0 K8 ["showEndDateTimeCalendarInput"]
       58 JUMPIFNOT                        R10 ; [+8]
       59 DUPTABLE                         R9 K11 [{"startDateTimeInput", "endDateTimeInput"}]
       60 LOADB                            R10 0
       61 SETTABLEKS                       R10 R9 K9 ["startDateTimeInput"]
       63 LOADB                            R10 1
       64 SETTABLEKS                       R10 R9 K10 ["endDateTimeInput"]
       66 JUMP                             ; [+7]
       67 DUPTABLE                         R9 K11 [{"startDateTimeInput", "endDateTimeInput"}]
       68 LOADB                            R10 1
       69 SETTABLEKS                       R10 R9 K9 ["startDateTimeInput"]
       71 LOADB                            R10 0
       72 SETTABLEKS                       R10 R9 K10 ["endDateTimeInput"]
       74 CALL                             R8 1 2
       75 GETUPVAL                         R11 2
       76 GETTABLEKS                       R10 R11 K5 ["useEffect"]
       78 NEWCLOSURE                       R11 P1
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 NEWTABLE                         R12 0 1
       84 MOVE                             R13 R8
       85 SETLIST                          R12 R13 1 [1]
       87 CALL                             R10 2 0
       88 GETUPVAL                         R11 2
       89 GETTABLEKS                       R10 R11 K7 ["useState"]
       91 GETUPVAL                         R12 4
       92 GETTABLEKS                       R11 R12 K12 ["formatLocalTime"]
       94 GETTABLEN                        R12 R4 1
       95 CALL                             R11 1 -1
       96 CALL                             R10 -1 2
       97 GETUPVAL                         R13 2
       98 GETTABLEKS                       R12 R13 K7 ["useState"]
      100 GETTABLEN                        R14 R4 2
      101 JUMPIFNOT                        R14 ; [+6]
      102 GETUPVAL                         R14 4
      103 GETTABLEKS                       R13 R14 K12 ["formatLocalTime"]
      105 GETTABLEN                        R14 R4 2
      106 CALL                             R13 1 1
      107 JUMP                             ; [+1]
      108 LOADK                            R13 K13 [""]
      109 CALL                             R12 1 2
      110 GETUPVAL                         R15 2
      111 GETTABLEKS                       R14 R15 K5 ["useEffect"]
      113 NEWCLOSURE                       R15 P2
      114 CAPTURE                          VAL R3
      115 NEWTABLE                         R16 0 0
      117 CALL                             R14 2 0
      118 GETUPVAL                         R15 2
      119 GETTABLEKS                       R14 R15 K7 ["useState"]
      121 DUPTABLE                         R15 K16 [{"month", "year"}]
      122 GETTABLEN                        R17 R4 1
      123 NAMECALL                         R17 R17 K17 ["ToLocalTime"]
      125 CALL                             R17 1 1
      126 GETTABLEKS                       R16 R17 K18 ["Month"]
      128 SETTABLEKS                       R16 R15 K14 ["month"]
      130 GETTABLEN                        R17 R4 1
      131 NAMECALL                         R17 R17 K17 ["ToLocalTime"]
      133 CALL                             R17 1 1
      134 GETTABLEKS                       R16 R17 K19 ["Year"]
      136 SETTABLEKS                       R16 R15 K15 ["year"]
      138 CALL                             R14 1 2
      139 NEWTABLE                         R16 0 0
      141 MOVE                             R17 R5
      142 LOADNIL                          R18
      143 LOADNIL                          R19
      144 FORGPREP                         R17
      145 MOVE                             R23 R16
      146 NAMECALL                         R24 R21 K17 ["ToLocalTime"]
      148 CALL                             R24 1 -1
      149 FASTCALL                         TABLE_INSERT ; [+2]
      150 GETIMPORT                        R22 K22 [table.insert]
      152 CALL                             R22 -1 0
      153 FORGLOOP                         R17 2 ; [-9]
      155 NEWCLOSURE                       R17 P3
      156 CAPTURE                          UPVAL U4
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R4
      161 NEWCLOSURE                       R18 P4
      162 CAPTURE                          UPVAL U4
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R4
      167 GETUPVAL                         R20 2
      168 GETTABLEKS                       R19 R20 K23 ["useCallback"]
      170 NEWCLOSURE                       R20 P5
      171 CAPTURE                          UPVAL U4
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R15
      174 NEWTABLE                         R21 0 1
      176 MOVE                             R22 R14
      177 SETLIST                          R21 R22 1 [1]
      179 CALL                             R19 2 1
      180 GETUPVAL                         R21 2
      181 GETTABLEKS                       R20 R21 K23 ["useCallback"]
      183 NEWCLOSURE                       R21 P6
      184 CAPTURE                          UPVAL U4
      185 CAPTURE                          VAL R14
      186 CAPTURE                          VAL R15
      187 NEWTABLE                         R22 0 1
      189 MOVE                             R23 R14
      190 SETLIST                          R22 R23 1 [1]
      192 CALL                             R20 2 1
      193 GETUPVAL                         R22 2
      194 GETTABLEKS                       R21 R22 K23 ["useCallback"]
      196 NEWCLOSURE                       R22 P7
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R0
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R11
      201 CAPTURE                          UPVAL U4
      202 CAPTURE                          VAL R9
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R6
      206 NEWTABLE                         R23 0 5
      208 GETTABLEKS                       R24 R0 K24 ["showStartDateTimeCalendarInput"]
      210 GETTABLEKS                       R25 R0 K8 ["showEndDateTimeCalendarInput"]
      212 MOVE                             R26 R5
      213 MOVE                             R27 R8
      214 MOVE                             R28 R7
      215 SETLIST                          R23 R24 5 [1]
      217 CALL                             R21 2 1
      218 GETUPVAL                         R23 2
      219 GETTABLEKS                       R22 R23 K23 ["useCallback"]
      221 NEWCLOSURE                       R23 P8
      222 CAPTURE                          VAL R16
      223 NEWTABLE                         R24 0 1
      225 MOVE                             R25 R16
      226 SETLIST                          R24 R25 1 [1]
      228 CALL                             R22 2 1
      229 GETUPVAL                         R24 2
      230 GETTABLEKS                       R23 R24 K23 ["useCallback"]
      232 NEWCLOSURE                       R24 P9
      233 CAPTURE                          VAL R0
      234 CAPTURE                          VAL R5
      235 CAPTURE                          UPVAL U4
      236 NEWTABLE                         R25 0 2
      238 GETTABLEKS                       R26 R0 K8 ["showEndDateTimeCalendarInput"]
      240 MOVE                             R27 R5
      241 SETLIST                          R25 R26 2 [1]
      243 CALL                             R23 2 1
      244 GETUPVAL                         R25 2
      245 GETTABLEKS                       R24 R25 K23 ["useCallback"]
      247 NEWCLOSURE                       R25 P10
      248 CAPTURE                          VAL R0
      249 CAPTURE                          UPVAL U4
      250 CAPTURE                          VAL R8
      251 CAPTURE                          VAL R5
      252 NEWTABLE                         R26 0 4
      254 MOVE                             R27 R5
      255 GETTABLEKS                       R28 R0 K25 ["selectableDateRange"]
      257 MOVE                             R29 R8
      258 GETTABLEKS                       R30 R0 K8 ["showEndDateTimeCalendarInput"]
      260 SETLIST                          R26 R27 4 [1]
      262 CALL                             R24 2 1
      263 GETUPVAL                         R26 2
      264 GETTABLEKS                       R25 R26 K23 ["useCallback"]
      266 NEWCLOSURE                       R26 P11
      267 CAPTURE                          VAL R3
      268 CAPTURE                          VAL R11
      269 CAPTURE                          UPVAL U4
      270 CAPTURE                          VAL R0
      271 CAPTURE                          VAL R5
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R6
      274 NEWTABLE                         R27 0 5
      276 GETTABLEKS                       R28 R0 K6 ["onSelectedDateChanged"]
      278 GETTABLEKS                       R29 R0 K8 ["showEndDateTimeCalendarInput"]
      280 MOVE                             R30 R24
      281 MOVE                             R31 R5
      282 MOVE                             R32 R3
      283 SETLIST                          R27 R28 5 [1]
      285 CALL                             R25 2 1
      286 GETUPVAL                         R27 2
      287 GETTABLEKS                       R26 R27 K23 ["useCallback"]
      289 NEWCLOSURE                       R27 P12
      290 CAPTURE                          VAL R3
      291 CAPTURE                          VAL R13
      292 CAPTURE                          UPVAL U4
      293 CAPTURE                          VAL R5
      294 CAPTURE                          VAL R15
      295 CAPTURE                          VAL R6
      296 CAPTURE                          VAL R0
      297 NEWTABLE                         R28 0 4
      299 GETTABLEKS                       R29 R0 K6 ["onSelectedDateChanged"]
      301 MOVE                             R30 R5
      302 MOVE                             R31 R24
      303 MOVE                             R32 R3
      304 SETLIST                          R28 R29 4 [1]
      306 CALL                             R26 2 1
      307 GETUPVAL                         R28 2
      308 GETTABLEKS                       R27 R28 K26 ["useMemo"]
      310 NEWCLOSURE                       R28 P13
      311 CAPTURE                          UPVAL U2
      312 CAPTURE                          VAL R1
      313 CAPTURE                          VAL R2
      314 CAPTURE                          UPVAL U4
      315 CAPTURE                          UPVAL U5
      316 CAPTURE                          VAL R14
      317 CAPTURE                          UPVAL U6
      318 CAPTURE                          VAL R23
      319 CAPTURE                          VAL R24
      320 CAPTURE                          VAL R22
      321 CAPTURE                          VAL R21
      322 CAPTURE                          VAL R0
      323 NEWTABLE                         R29 0 8
      325 MOVE                             R30 R22
      326 MOVE                             R31 R23
      327 MOVE                             R32 R24
      328 MOVE                             R33 R14
      329 MOVE                             R34 R5
      330 MOVE                             R35 R21
      331 GETTABLEKS                       R36 R0 K25 ["selectableDateRange"]
      333 GETTABLEKS                       R37 R0 K8 ["showEndDateTimeCalendarInput"]
      335 SETLIST                          R29 R30 8 [1]
      337 CALL                             R27 2 1
      338 GETUPVAL                         R29 2
      339 GETTABLEKS                       R28 R29 K23 ["useCallback"]
      341 NEWCLOSURE                       R29 P14
      342 CAPTURE                          VAL R6
      343 CAPTURE                          VAL R0
      344 NEWTABLE                         R30 0 2
      346 MOVE                             R31 R5
      347 GETTABLEKS                       R32 R0 K6 ["onSelectedDateChanged"]
      349 SETLIST                          R30 R31 2 [1]
      351 CALL                             R28 2 1
      352 GETUPVAL                         R30 2
      353 GETTABLEKS                       R29 R30 K27 ["createElement"]
      355 GETUPVAL                         R30 7
      356 DUPTABLE                         R31 K32 [{"LayoutOrder", "tag", "Size", "testId"}]
      357 GETTABLEKS                       R32 R0 K28 ["LayoutOrder"]
      359 SETTABLEKS                       R32 R31 K28 ["LayoutOrder"]
      361 LOADK                            R32 K33 ["col auto-y"]
      362 SETTABLEKS                       R32 R31 K29 ["tag"]
      364 GETIMPORT                        R32 K36 [UDim2.fromOffset]
      366 MOVE                             R33 R2
      367 LOADN                            R34 0
      368 CALL                             R32 2 1
      369 SETTABLEKS                       R32 R31 K30 ["Size"]
      371 GETTABLEKS                       R32 R0 K31 ["testId"]
      373 SETTABLEKS                       R32 R31 K31 ["testId"]
      375 DUPTABLE                         R32 K41 [{"CalendarHeader", "TimeDropdown", "CalendarInputContainer", "WeekAndDates"}]
      376 GETUPVAL                         R34 2
      377 GETTABLEKS                       R33 R34 K27 ["createElement"]
      379 GETUPVAL                         R34 7
      380 DUPTABLE                         R35 K42 [{"LayoutOrder", "tag"}]
      381 LOADN                            R36 1
      382 SETTABLEKS                       R36 R35 K28 ["LayoutOrder"]
      384 LOADK                            R36 K43 ["row align-y-center gap-small size-full-0 auto-y padding-y-small"]
      385 SETTABLEKS                       R36 R35 K29 ["tag"]
      387 DUPTABLE                         R36 K48 [{"PreviousMonthButton", "MonthText", "YearText", "NextMonthButton"}]
      388 GETUPVAL                         R38 2
      389 GETTABLEKS                       R37 R38 K27 ["createElement"]
      391 GETUPVAL                         R38 8
      392 DUPTABLE                         R39 K54 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      393 LOADN                            R40 1
      394 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      396 GETUPVAL                         R41 9
      397 GETTABLEKS                       R40 R41 K55 ["ChevronSmallLeft"]
      399 SETTABLEKS                       R40 R39 K49 ["icon"]
      401 LOADB                            R40 1
      402 SETTABLEKS                       R40 R39 K50 ["isCircular"]
      404 SETTABLEKS                       R20 R39 K51 ["onActivated"]
      406 GETUPVAL                         R41 10
      407 GETTABLEKS                       R40 R41 K56 ["Small"]
      409 SETTABLEKS                       R40 R39 K52 ["size"]
      411 GETUPVAL                         R41 11
      412 GETTABLEKS                       R40 R41 K57 ["Utility"]
      414 SETTABLEKS                       R40 R39 K53 ["variant"]
      416 LOADK                            R41 K58 ["%*--previous-month-button"]
      417 GETTABLEKS                       R43 R0 K31 ["testId"]
      419 NAMECALL                         R41 R41 K59 ["format"]
      421 CALL                             R41 2 1
      422 MOVE                             R40 R41
      423 SETTABLEKS                       R40 R39 K31 ["testId"]
      425 CALL                             R37 2 1
      426 SETTABLEKS                       R37 R36 K44 ["PreviousMonthButton"]
      428 GETUPVAL                         R38 2
      429 GETTABLEKS                       R37 R38 K27 ["createElement"]
      431 GETUPVAL                         R38 5
      432 DUPTABLE                         R39 K61 [{"LayoutOrder", "Text", "tag", "testId"}]
      433 LOADN                            R40 2
      434 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      436 GETUPVAL                         R42 4
      437 GETTABLEKS                       R41 R42 K62 ["monthMap"]
      439 GETTABLEKS                       R42 R14 K14 ["month"]
      441 GETTABLE                         R40 R41 R42
      442 SETTABLEKS                       R40 R39 K60 ["Text"]
      444 LOADK                            R40 K63 ["grow auto-xy text-align-x-right"]
      445 SETTABLEKS                       R40 R39 K29 ["tag"]
      447 LOADK                            R41 K64 ["%*--month-text"]
      448 GETTABLEKS                       R43 R0 K31 ["testId"]
      450 NAMECALL                         R41 R41 K59 ["format"]
      452 CALL                             R41 2 1
      453 MOVE                             R40 R41
      454 SETTABLEKS                       R40 R39 K31 ["testId"]
      456 CALL                             R37 2 1
      457 SETTABLEKS                       R37 R36 K45 ["MonthText"]
      459 GETUPVAL                         R38 2
      460 GETTABLEKS                       R37 R38 K27 ["createElement"]
      462 GETUPVAL                         R38 5
      463 DUPTABLE                         R39 K61 [{"LayoutOrder", "Text", "tag", "testId"}]
      464 LOADN                            R40 3
      465 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      467 GETTABLEKS                       R41 R14 K15 ["year"]
      469 FASTCALL1                        TOSTRING R41 ; [+2]
      470 GETIMPORT                        R40 K66 [tostring]
      472 CALL                             R40 1 1
      473 SETTABLEKS                       R40 R39 K60 ["Text"]
      475 LOADK                            R40 K67 ["grow auto-xy text-align-x-left"]
      476 SETTABLEKS                       R40 R39 K29 ["tag"]
      478 LOADK                            R41 K68 ["%*--year-text"]
      479 GETTABLEKS                       R43 R0 K31 ["testId"]
      481 NAMECALL                         R41 R41 K59 ["format"]
      483 CALL                             R41 2 1
      484 MOVE                             R40 R41
      485 SETTABLEKS                       R40 R39 K31 ["testId"]
      487 CALL                             R37 2 1
      488 SETTABLEKS                       R37 R36 K46 ["YearText"]
      490 GETUPVAL                         R38 2
      491 GETTABLEKS                       R37 R38 K27 ["createElement"]
      493 GETUPVAL                         R38 8
      494 DUPTABLE                         R39 K54 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      495 LOADN                            R40 4
      496 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      498 GETUPVAL                         R41 9
      499 GETTABLEKS                       R40 R41 K69 ["ChevronSmallRight"]
      501 SETTABLEKS                       R40 R39 K49 ["icon"]
      503 LOADB                            R40 1
      504 SETTABLEKS                       R40 R39 K50 ["isCircular"]
      506 SETTABLEKS                       R19 R39 K51 ["onActivated"]
      508 GETUPVAL                         R41 10
      509 GETTABLEKS                       R40 R41 K56 ["Small"]
      511 SETTABLEKS                       R40 R39 K52 ["size"]
      513 GETUPVAL                         R41 11
      514 GETTABLEKS                       R40 R41 K57 ["Utility"]
      516 SETTABLEKS                       R40 R39 K53 ["variant"]
      518 LOADK                            R41 K70 ["%*--next-month-button"]
      519 GETTABLEKS                       R43 R0 K31 ["testId"]
      521 NAMECALL                         R41 R41 K59 ["format"]
      523 CALL                             R41 2 1
      524 MOVE                             R40 R41
      525 SETTABLEKS                       R40 R39 K31 ["testId"]
      527 CALL                             R37 2 1
      528 SETTABLEKS                       R37 R36 K47 ["NextMonthButton"]
      530 CALL                             R33 3 1
      531 SETTABLEKS                       R33 R32 K37 ["CalendarHeader"]
      533 GETTABLEKS                       R34 R0 K71 ["showTimeDropdown"]
      535 JUMPIFNOT                        R34 ; [+31]
      536 GETUPVAL                         R34 2
      537 GETTABLEKS                       R33 R34 K27 ["createElement"]
      539 GETUPVAL                         R34 12
      540 DUPTABLE                         R35 K76 [{"dateTime", "layoutOrder", "onItemChanged", "width", "testId"}]
      541 GETTABLEN                        R36 R5 1
      542 SETTABLEKS                       R36 R35 K72 ["dateTime"]
      544 LOADN                            R36 2
      545 SETTABLEKS                       R36 R35 K73 ["layoutOrder"]
      547 SETTABLEKS                       R28 R35 K74 ["onItemChanged"]
      549 GETIMPORT                        R36 K79 [UDim.new]
      551 LOADN                            R37 1
      552 LOADN                            R38 0
      553 CALL                             R36 2 1
      554 SETTABLEKS                       R36 R35 K75 ["width"]
      556 LOADK                            R37 K80 ["%*--time-dropdown"]
      557 GETTABLEKS                       R39 R0 K31 ["testId"]
      559 NAMECALL                         R37 R37 K59 ["format"]
      561 CALL                             R37 2 1
      562 MOVE                             R36 R37
      563 SETTABLEKS                       R36 R35 K31 ["testId"]
      565 CALL                             R33 2 1
      566 JUMP                             ; [+1]
      567 LOADNIL                          R33
      568 SETTABLEKS                       R33 R32 K38 ["TimeDropdown"]
      570 GETTABLEKS                       R34 R0 K24 ["showStartDateTimeCalendarInput"]
      572 JUMPIFNOT                        R34 ; [+166]
      573 GETUPVAL                         R34 2
      574 GETTABLEKS                       R33 R34 K27 ["createElement"]
      576 GETUPVAL                         R34 7
      577 DUPTABLE                         R35 K81 [{"LayoutOrder", "tag", "testId"}]
      578 LOADN                            R36 3
      579 SETTABLEKS                       R36 R35 K28 ["LayoutOrder"]
      581 LOADK                            R36 K82 ["row flex-x-fill align-y-center gap-small size-full-0 auto-y"]
      582 SETTABLEKS                       R36 R35 K29 ["tag"]
      584 LOADK                            R37 K83 ["%*--input"]
      585 GETTABLEKS                       R39 R0 K31 ["testId"]
      587 NAMECALL                         R37 R37 K59 ["format"]
      589 CALL                             R37 2 1
      590 MOVE                             R36 R37
      591 SETTABLEKS                       R36 R35 K31 ["testId"]
      593 DUPTABLE                         R36 K87 [{"StartDateTime", "InputSeparator", "EndDateTime"}]
      594 GETUPVAL                         R38 2
      595 GETTABLEKS                       R37 R38 K27 ["createElement"]
      597 GETUPVAL                         R38 13
      598 DUPTABLE                         R39 K95 [{"hasError", "label", "LayoutOrder", "onChanged", "onFocusLost", "placeholder", "size", "text", "onFocusGained", "testId"}]
      599 LOADB                            R40 0
      600 JUMPIFEQKS                       R10 K13 [""] ; [+10]
      602 GETUPVAL                         R42 4
      603 GETTABLEKS                       R41 R42 K96 ["getDateTimeFromText"]
      605 MOVE                             R42 R10
      606 CALL                             R41 1 1
      607 JUMPIFEQKNIL                     R41 ; [+2]
      609 LOADB                            R40 0 +1
      610 LOADB                            R40 1
      611 SETTABLEKS                       R40 R39 K88 ["hasError"]
      613 LOADK                            R40 K13 [""]
      614 SETTABLEKS                       R40 R39 K89 ["label"]
      616 LOADN                            R40 1
      617 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      619 SETTABLEKS                       R25 R39 K90 ["onChanged"]
      621 SETTABLEKS                       R17 R39 K91 ["onFocusLost"]
      623 LOADK                            R40 K97 ["MM/DD/YYYY"]
      624 SETTABLEKS                       R40 R39 K92 ["placeholder"]
      626 GETUPVAL                         R41 10
      627 GETTABLEKS                       R40 R41 K98 ["Medium"]
      629 SETTABLEKS                       R40 R39 K52 ["size"]
      631 SETTABLEKS                       R10 R39 K93 ["text"]
      633 NEWCLOSURE                       R40 P15
      634 CAPTURE                          VAL R9
      635 SETTABLEKS                       R40 R39 K94 ["onFocusGained"]
      637 LOADK                            R41 K99 ["%*--start-datetime-input"]
      638 GETTABLEKS                       R43 R0 K31 ["testId"]
      640 NAMECALL                         R41 R41 K59 ["format"]
      642 CALL                             R41 2 1
      643 MOVE                             R40 R41
      644 SETTABLEKS                       R40 R39 K31 ["testId"]
      646 CALL                             R37 2 1
      647 SETTABLEKS                       R37 R36 K84 ["StartDateTime"]
      649 GETTABLEKS                       R38 R0 K8 ["showEndDateTimeCalendarInput"]
      651 JUMPIFNOT                        R38 ; [+16]
      652 GETUPVAL                         R38 2
      653 GETTABLEKS                       R37 R38 K27 ["createElement"]
      655 GETUPVAL                         R38 5
      656 DUPTABLE                         R39 K100 [{"LayoutOrder", "tag", "Text"}]
      657 LOADN                            R40 2
      658 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      660 LOADK                            R40 K101 ["auto-xy"]
      661 SETTABLEKS                       R40 R39 K29 ["tag"]
      663 LOADK                            R40 K102 ["-"]
      664 SETTABLEKS                       R40 R39 K60 ["Text"]
      666 CALL                             R37 2 1
      667 JUMP                             ; [+1]
      668 LOADNIL                          R37
      669 SETTABLEKS                       R37 R36 K85 ["InputSeparator"]
      671 GETTABLEKS                       R38 R0 K8 ["showEndDateTimeCalendarInput"]
      673 JUMPIFNOT                        R38 ; [+60]
      674 GETUPVAL                         R38 2
      675 GETTABLEKS                       R37 R38 K27 ["createElement"]
      677 GETUPVAL                         R38 13
      678 DUPTABLE                         R39 K105 [{"hasError", "isDisabled", "label", "LayoutOrder", "onChanged", "onFocusGained", "onFocusLost", "placeholder", "size", "text", "textBoxRef", "testId"}]
      679 LOADB                            R40 0
      680 JUMPIFEQKS                       R12 K13 [""] ; [+10]
      682 GETUPVAL                         R42 4
      683 GETTABLEKS                       R41 R42 K96 ["getDateTimeFromText"]
      685 MOVE                             R42 R12
      686 CALL                             R41 1 1
      687 JUMPIFEQKNIL                     R41 ; [+2]
      689 LOADB                            R40 0 +1
      690 LOADB                            R40 1
      691 SETTABLEKS                       R40 R39 K88 ["hasError"]
      693 GETTABLEN                        R41 R5 1
      694 NOT                              R40 R41
      695 SETTABLEKS                       R40 R39 K103 ["isDisabled"]
      697 LOADK                            R40 K13 [""]
      698 SETTABLEKS                       R40 R39 K89 ["label"]
      700 LOADN                            R40 3
      701 SETTABLEKS                       R40 R39 K28 ["LayoutOrder"]
      703 SETTABLEKS                       R26 R39 K90 ["onChanged"]
      705 NEWCLOSURE                       R40 P16
      706 CAPTURE                          VAL R9
      707 SETTABLEKS                       R40 R39 K94 ["onFocusGained"]
      709 SETTABLEKS                       R18 R39 K91 ["onFocusLost"]
      711 LOADK                            R40 K97 ["MM/DD/YYYY"]
      712 SETTABLEKS                       R40 R39 K92 ["placeholder"]
      714 GETUPVAL                         R41 10
      715 GETTABLEKS                       R40 R41 K98 ["Medium"]
      717 SETTABLEKS                       R40 R39 K52 ["size"]
      719 SETTABLEKS                       R12 R39 K93 ["text"]
      721 SETTABLEKS                       R7 R39 K104 ["textBoxRef"]
      723 LOADK                            R41 K106 ["%*--end-datetime-input"]
      724 GETTABLEKS                       R43 R0 K31 ["testId"]
      726 NAMECALL                         R41 R41 K59 ["format"]
      728 CALL                             R41 2 1
      729 MOVE                             R40 R41
      730 SETTABLEKS                       R40 R39 K31 ["testId"]
      732 CALL                             R37 2 1
      733 JUMP                             ; [+1]
      734 LOADNIL                          R37
      735 SETTABLEKS                       R37 R36 K86 ["EndDateTime"]
      737 CALL                             R33 3 1
      738 JUMP                             ; [+1]
      739 LOADNIL                          R33
      740 SETTABLEKS                       R33 R32 K39 ["CalendarInputContainer"]
      742 GETUPVAL                         R34 2
      743 GETTABLEKS                       R33 R34 K27 ["createElement"]
      745 GETUPVAL                         R34 7
      746 DUPTABLE                         R35 K81 [{"LayoutOrder", "tag", "testId"}]
      747 LOADN                            R36 4
      748 SETTABLEKS                       R36 R35 K28 ["LayoutOrder"]
      750 LOADK                            R36 K107 ["size-full-0 auto-y"]
      751 SETTABLEKS                       R36 R35 K29 ["tag"]
      753 LOADK                            R37 K108 ["%*--weekAndDates"]
      754 GETTABLEKS                       R39 R0 K31 ["testId"]
      756 NAMECALL                         R37 R37 K59 ["format"]
      758 CALL                             R37 2 1
      759 MOVE                             R36 R37
      760 SETTABLEKS                       R36 R35 K31 ["testId"]
      762 MOVE                             R36 R27
      763 CALL                             R33 3 1
      764 SETTABLEKS                       R33 R32 K40 ["WeekAndDates"]
      766 CALL                             R29 3 -1
      767 RETURN                           R29 -1

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
      113 GETTABLEKS                       R17 R8 K27 ["FoundationDateTimePickerDefaultDateFix"]
      115 DUPCLOSURE                       R18 K28 [PROTO_21]
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R17
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R12
      130 RETURN                           R18 1
