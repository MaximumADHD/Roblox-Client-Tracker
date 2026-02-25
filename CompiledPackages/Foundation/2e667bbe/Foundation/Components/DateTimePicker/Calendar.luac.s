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
        9 JUMPIFNOT                        R0 ; [+29]
       10 GETUPVAL                         R2 2
       11 GETTABLEN                        R1 R2 2
       12 JUMPIFNOT                        R1 ; [+26]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 2
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R2 R1 ; [+14]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R3 2
       28 GETTABLEN                        R2 R3 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K2 ["DATE_COMPOSITE_TOKEN"]
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R5 R6 K3 ["RobloxLocaleId"]
       35 NAMECALL                         R2 R2 K4 ["FormatLocalTime"]
       37 CALL                             R2 3 -1
       38 CALL                             R1 -1 0
       39 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDateTimeFromText"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R2 2
        7 GETTABLEN                        R1 R2 2
        8 JUMPIF                           R1 ; [+17]
        9 JUMPIFNOT                        R0 ; [+29]
       10 GETUPVAL                         R2 2
       11 GETTABLEN                        R1 R2 1
       12 JUMPIFNOT                        R1 ; [+26]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K1 ["roundToStartOfDay"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K1 ["roundToStartOfDay"]
       21 GETUPVAL                         R4 2
       22 GETTABLEN                        R3 R4 1
       23 CALL                             R2 1 1
       24 JUMPIFNOTLT                      R1 R2 ; [+14]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R3 2
       28 GETTABLEN                        R2 R3 2
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K2 ["DATE_COMPOSITE_TOKEN"]
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R5 R6 K3 ["RobloxLocaleId"]
       35 NAMECALL                         R2 R2 K4 ["FormatLocalTime"]
       37 CALL                             R2 3 -1
       38 CALL                             R1 -1 0
       39 RETURN                           R0 0

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
        5 CALL                             R3 3 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["showStartDateTimeCalendarInput"]
        9 JUMPIFNOT                        R4 ; [+97]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K4 ["showEndDateTimeCalendarInput"]
       13 JUMPIFNOT                        R4 ; [+74]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K5 ["startDateTimeInput"]
       17 JUMPIFNOT                        R4 ; [+21]
       18 GETUPVAL                         R4 2
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R7 R8 K6 ["DATE_COMPOSITE_TOKEN"]
       22 GETUPVAL                         R9 4
       23 GETTABLEKS                       R8 R9 K7 ["RobloxLocaleId"]
       25 NAMECALL                         R5 R3 K8 ["FormatLocalTime"]
       27 CALL                             R5 3 -1
       28 CALL                             R4 -1 0
       29 GETUPVAL                         R4 5
       30 DUPTABLE                         R5 K10 [{"startDateTimeInput", "endDateTimeInput"}]
       31 LOADB                            R6 0
       32 SETTABLEKS                       R6 R5 K5 ["startDateTimeInput"]
       34 LOADB                            R6 1
       35 SETTABLEKS                       R6 R5 K9 ["endDateTimeInput"]
       37 CALL                             R4 1 0
       38 JUMP                             ; [+60]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R4 R5 K9 ["endDateTimeInput"]
       42 JUMPIFNOT                        R4 ; [+21]
       43 GETUPVAL                         R4 6
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R7 R8 K6 ["DATE_COMPOSITE_TOKEN"]
       47 GETUPVAL                         R9 4
       48 GETTABLEKS                       R8 R9 K7 ["RobloxLocaleId"]
       50 NAMECALL                         R5 R3 K8 ["FormatLocalTime"]
       52 CALL                             R5 3 -1
       53 CALL                             R4 -1 0
       54 GETUPVAL                         R4 5
       55 DUPTABLE                         R5 K10 [{"startDateTimeInput", "endDateTimeInput"}]
       56 LOADB                            R6 0
       57 SETTABLEKS                       R6 R5 K5 ["startDateTimeInput"]
       59 LOADB                            R6 0
       60 SETTABLEKS                       R6 R5 K9 ["endDateTimeInput"]
       62 CALL                             R4 1 0
       63 JUMP                             ; [+35]
       64 GETUPVAL                         R4 2
       65 GETUPVAL                         R8 3
       66 GETTABLEKS                       R7 R8 K6 ["DATE_COMPOSITE_TOKEN"]
       68 GETUPVAL                         R9 4
       69 GETTABLEKS                       R8 R9 K7 ["RobloxLocaleId"]
       71 NAMECALL                         R5 R3 K8 ["FormatLocalTime"]
       73 CALL                             R5 3 -1
       74 CALL                             R4 -1 0
       75 GETUPVAL                         R4 6
       76 LOADK                            R5 K11 [""]
       77 CALL                             R4 1 0
       78 GETUPVAL                         R4 5
       79 DUPTABLE                         R5 K10 [{"startDateTimeInput", "endDateTimeInput"}]
       80 LOADB                            R6 0
       81 SETTABLEKS                       R6 R5 K5 ["startDateTimeInput"]
       83 LOADB                            R6 1
       84 SETTABLEKS                       R6 R5 K9 ["endDateTimeInput"]
       86 CALL                             R4 1 0
       87 JUMP                             ; [+11]
       88 GETUPVAL                         R4 2
       89 GETUPVAL                         R8 3
       90 GETTABLEKS                       R7 R8 K6 ["DATE_COMPOSITE_TOKEN"]
       92 GETUPVAL                         R9 4
       93 GETTABLEKS                       R8 R9 K7 ["RobloxLocaleId"]
       95 NAMECALL                         R5 R3 K8 ["FormatLocalTime"]
       97 CALL                             R5 3 -1
       98 CALL                             R4 -1 0
       99 GETUPVAL                         R4 7
      100 DUPTABLE                         R5 K14 [{"month", "year"}]
      101 SETTABLEKS                       R1 R5 K12 ["month"]
      103 SETTABLEKS                       R2 R5 K13 ["year"]
      105 CALL                             R4 1 0
      106 RETURN                           R0 0
      107 GETUPVAL                         R4 7
      108 DUPTABLE                         R5 K14 [{"month", "year"}]
      109 SETTABLEKS                       R1 R5 K12 ["month"]
      111 SETTABLEKS                       R2 R5 K13 ["year"]
      113 CALL                             R4 1 0
      114 GETUPVAL                         R4 8
      115 NEWTABLE                         R5 0 1
      117 MOVE                             R6 R3
      118 SETLIST                          R5 R6 1 [1]
      120 CALL                             R4 1 0
      121 GETUPVAL                         R5 0
      122 GETTABLEKS                       R4 R5 K15 ["onSelectedDateChanged"]
      124 NEWTABLE                         R5 0 1
      126 MOVE                             R6 R3
      127 SETLIST                          R5 R6 1 [1]
      129 CALL                             R4 1 0
      130 RETURN                           R0 0

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
       13 JUMPIFNOT                        R1 ; [+59]
       14 LOADNIL                          R2
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K2 ["showEndDateTimeCalendarInput"]
       18 JUMPIFNOT                        R3 ; [+26]
       19 GETUPVAL                         R4 4
       20 GETTABLEN                        R3 R4 2
       21 JUMPIFNOT                        R3 ; [+14]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K3 ["roundToStartOfDay"]
       25 MOVE                             R4 R1
       26 CALL                             R3 1 1
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R4 R5 K3 ["roundToStartOfDay"]
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
       68 GETUPVAL                         R5 3
       69 GETTABLEKS                       R4 R5 K10 ["onSelectedDateChanged"]
       71 MOVE                             R5 R2
       72 CALL                             R4 1 0
       73 RETURN                           R0 0

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
      136 GETUPVAL                         R14 0
      137 GETTABLEKS                       R13 R14 K0 ["createElement"]
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
      178 GETUPVAL                         R20 11
      179 GETTABLEKS                       R19 R20 K47 ["testId"]
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
      196 GETUPVAL                         R10 3
      197 GETTABLEKS                       R9 R10 K39 ["getDaysInMonth"]
      199 GETUPVAL                         R11 5
      200 GETTABLEKS                       R10 R11 K36 ["month"]
      202 GETUPVAL                         R12 5
      203 GETTABLEKS                       R11 R12 K37 ["year"]
      205 CALL                             R9 2 1
      206 MOVE                             R6 R9
      207 LOADN                            R7 1
      208 FORNPREP                         R6
      209 GETUPVAL                         R9 8
      210 GETIMPORT                        R10 K42 [DateTime.fromLocalTime]
      212 GETUPVAL                         R12 5
      213 GETTABLEKS                       R11 R12 K37 ["year"]
      215 GETUPVAL                         R13 5
      216 GETTABLEKS                       R12 R13 K36 ["month"]
      218 MOVE                             R13 R8
      219 CALL                             R10 3 -1
      220 CALL                             R9 -1 1
      221 GETUPVAL                         R10 9
      222 GETIMPORT                        R11 K42 [DateTime.fromLocalTime]
      224 GETUPVAL                         R13 5
      225 GETTABLEKS                       R12 R13 K37 ["year"]
      227 GETUPVAL                         R14 5
      228 GETTABLEKS                       R13 R14 K36 ["month"]
      230 MOVE                             R14 R8
      231 CALL                             R11 3 -1
      232 CALL                             R10 -1 1
      233 MOVE                             R12 R0
      234 GETUPVAL                         R14 0
      235 GETTABLEKS                       R13 R14 K0 ["createElement"]
      237 GETUPVAL                         R14 6
      238 DUPTABLE                         R15 K55 [{"emphasizeText", "highlight", "isSelectable", "isSelected", "key", "LayoutOrder", "onActivated", "Text", "testId"}]
      239 MOVE                             R16 R9
      240 JUMPIFNOT                        R16 ; [+1]
      241 NOT                              R16 R10
      242 SETTABLEKS                       R16 R15 K54 ["emphasizeText"]
      244 GETUPVAL                         R16 7
      245 GETIMPORT                        R17 K42 [DateTime.fromLocalTime]
      247 GETUPVAL                         R19 5
      248 GETTABLEKS                       R18 R19 K37 ["year"]
      250 GETUPVAL                         R20 5
      251 GETTABLEKS                       R19 R20 K36 ["month"]
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
      283 GETUPVAL                         R20 11
      284 GETTABLEKS                       R19 R20 K47 ["testId"]
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
      300 GETUPVAL                         R7 3
      301 GETTABLEKS                       R6 R7 K58 ["getLastDayOfWeek"]
      303 GETUPVAL                         R8 5
      304 GETTABLEKS                       R7 R8 K36 ["month"]
      306 GETUPVAL                         R9 5
      307 GETTABLEKS                       R8 R9 K37 ["year"]
      309 CALL                             R6 2 1
      310 GETUPVAL                         R8 3
      311 GETTABLEKS                       R7 R8 K59 ["getNextMonthInfo"]
      313 GETUPVAL                         R9 5
      314 GETTABLEKS                       R8 R9 K36 ["month"]
      316 GETUPVAL                         R10 5
      317 GETTABLEKS                       R9 R10 K37 ["year"]
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
      333 GETUPVAL                         R17 0
      334 GETTABLEKS                       R16 R17 K0 ["createElement"]
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
      375 GETUPVAL                         R23 11
      376 GETTABLEKS                       R22 R23 K47 ["testId"]
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
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"startDateTimeInput", "endDateTimeInput"}]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R1 K0 ["startDateTimeInput"]
        5 LOADB                            R2 0
        6 SETTABLEKS                       R2 R1 K1 ["endDateTimeInput"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"startDateTimeInput", "endDateTimeInput"}]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R1 K0 ["startDateTimeInput"]
        5 LOADB                            R2 1
        6 SETTABLEKS                       R2 R1 K1 ["endDateTimeInput"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_19:
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
       59 GETTABLEKS                       R11 R0 K2 ["defaultDates"]
       61 GETTABLEN                        R10 R11 1
       62 GETUPVAL                         R13 3
       63 GETTABLEKS                       R12 R13 K8 ["DATE_COMPOSITE_TOKEN"]
       65 GETUPVAL                         R14 4
       66 GETTABLEKS                       R13 R14 K9 ["RobloxLocaleId"]
       68 NAMECALL                         R10 R10 K10 ["FormatLocalTime"]
       70 CALL                             R10 3 -1
       71 CALL                             R9 -1 2
       72 GETUPVAL                         R12 2
       73 GETTABLEKS                       R11 R12 K1 ["useState"]
       75 GETTABLEKS                       R14 R0 K2 ["defaultDates"]
       77 GETTABLEN                        R13 R14 2
       78 JUMPIFNOT                        R13 ; [+13]
       79 GETTABLEKS                       R13 R0 K2 ["defaultDates"]
       81 GETTABLEN                        R12 R13 2
       82 GETUPVAL                         R15 3
       83 GETTABLEKS                       R14 R15 K8 ["DATE_COMPOSITE_TOKEN"]
       85 GETUPVAL                         R16 4
       86 GETTABLEKS                       R15 R16 K9 ["RobloxLocaleId"]
       88 NAMECALL                         R12 R12 K10 ["FormatLocalTime"]
       90 CALL                             R12 3 1
       91 JUMP                             ; [+1]
       92 LOADK                            R12 K11 [""]
       93 CALL                             R11 1 2
       94 GETUPVAL                         R14 2
       95 GETTABLEKS                       R13 R14 K7 ["useEffect"]
       97 NEWCLOSURE                       R14 P1
       98 CAPTURE                          VAL R3
       99 NEWTABLE                         R15 0 0
      101 CALL                             R13 2 0
      102 GETUPVAL                         R14 2
      103 GETTABLEKS                       R13 R14 K1 ["useState"]
      105 DUPTABLE                         R14 K14 [{"month", "year"}]
      106 GETTABLEKS                       R17 R0 K2 ["defaultDates"]
      108 GETTABLEN                        R16 R17 1
      109 NAMECALL                         R16 R16 K15 ["ToLocalTime"]
      111 CALL                             R16 1 1
      112 GETTABLEKS                       R15 R16 K16 ["Month"]
      114 SETTABLEKS                       R15 R14 K12 ["month"]
      116 GETTABLEKS                       R17 R0 K2 ["defaultDates"]
      118 GETTABLEN                        R16 R17 1
      119 NAMECALL                         R16 R16 K15 ["ToLocalTime"]
      121 CALL                             R16 1 1
      122 GETTABLEKS                       R15 R16 K17 ["Year"]
      124 SETTABLEKS                       R15 R14 K13 ["year"]
      126 CALL                             R13 1 2
      127 NEWTABLE                         R15 0 0
      129 MOVE                             R16 R4
      130 LOADNIL                          R17
      131 LOADNIL                          R18
      132 FORGPREP                         R16
      133 MOVE                             R22 R15
      134 NAMECALL                         R23 R20 K15 ["ToLocalTime"]
      136 CALL                             R23 1 -1
      137 FASTCALL                         TABLE_INSERT ; [+2]
      138 GETIMPORT                        R21 K20 [table.insert]
      140 CALL                             R21 -1 0
      141 FORGLOOP                         R16 2 ; [-9]
      143 NEWCLOSURE                       R16 P2
      144 CAPTURE                          UPVAL U3
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R10
      148 CAPTURE                          UPVAL U4
      149 NEWCLOSURE                       R17 P3
      150 CAPTURE                          UPVAL U3
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R12
      154 CAPTURE                          UPVAL U4
      155 GETUPVAL                         R19 2
      156 GETTABLEKS                       R18 R19 K21 ["useCallback"]
      158 NEWCLOSURE                       R19 P4
      159 CAPTURE                          UPVAL U3
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R14
      162 NEWTABLE                         R20 0 1
      164 MOVE                             R21 R13
      165 SETLIST                          R20 R21 1 [1]
      167 CALL                             R18 2 1
      168 GETUPVAL                         R20 2
      169 GETTABLEKS                       R19 R20 K21 ["useCallback"]
      171 NEWCLOSURE                       R20 P5
      172 CAPTURE                          UPVAL U3
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R14
      175 NEWTABLE                         R21 0 1
      177 MOVE                             R22 R13
      178 SETLIST                          R21 R22 1 [1]
      180 CALL                             R19 2 1
      181 GETUPVAL                         R21 2
      182 GETTABLEKS                       R20 R21 K21 ["useCallback"]
      184 NEWCLOSURE                       R21 P6
      185 CAPTURE                          VAL R0
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R10
      188 CAPTURE                          UPVAL U3
      189 CAPTURE                          UPVAL U4
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R5
      194 NEWTABLE                         R22 0 5
      196 GETTABLEKS                       R23 R0 K22 ["showStartDateTimeCalendarInput"]
      198 GETTABLEKS                       R24 R0 K3 ["showEndDateTimeCalendarInput"]
      200 MOVE                             R25 R4
      201 MOVE                             R26 R7
      202 MOVE                             R27 R6
      203 SETLIST                          R22 R23 5 [1]
      205 CALL                             R20 2 1
      206 GETUPVAL                         R22 2
      207 GETTABLEKS                       R21 R22 K21 ["useCallback"]
      209 NEWCLOSURE                       R22 P7
      210 CAPTURE                          VAL R15
      211 NEWTABLE                         R23 0 1
      213 MOVE                             R24 R15
      214 SETLIST                          R23 R24 1 [1]
      216 CALL                             R21 2 1
      217 GETUPVAL                         R23 2
      218 GETTABLEKS                       R22 R23 K21 ["useCallback"]
      220 NEWCLOSURE                       R23 P8
      221 CAPTURE                          VAL R0
      222 CAPTURE                          VAL R4
      223 CAPTURE                          UPVAL U3
      224 NEWTABLE                         R24 0 2
      226 GETTABLEKS                       R25 R0 K3 ["showEndDateTimeCalendarInput"]
      228 MOVE                             R26 R4
      229 SETLIST                          R24 R25 2 [1]
      231 CALL                             R22 2 1
      232 GETUPVAL                         R24 2
      233 GETTABLEKS                       R23 R24 K21 ["useCallback"]
      235 NEWCLOSURE                       R24 P9
      236 CAPTURE                          VAL R0
      237 CAPTURE                          UPVAL U3
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R4
      240 NEWTABLE                         R25 0 4
      242 MOVE                             R26 R4
      243 GETTABLEKS                       R27 R0 K23 ["selectableDateRange"]
      245 MOVE                             R28 R7
      246 GETTABLEKS                       R29 R0 K3 ["showEndDateTimeCalendarInput"]
      248 SETLIST                          R25 R26 4 [1]
      250 CALL                             R23 2 1
      251 GETUPVAL                         R25 2
      252 GETTABLEKS                       R24 R25 K21 ["useCallback"]
      254 NEWCLOSURE                       R25 P10
      255 CAPTURE                          VAL R3
      256 CAPTURE                          VAL R10
      257 CAPTURE                          UPVAL U3
      258 CAPTURE                          VAL R0
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R14
      261 CAPTURE                          VAL R5
      262 NEWTABLE                         R26 0 5
      264 GETTABLEKS                       R27 R0 K24 ["onSelectedDateChanged"]
      266 GETTABLEKS                       R28 R0 K3 ["showEndDateTimeCalendarInput"]
      268 MOVE                             R29 R23
      269 MOVE                             R30 R4
      270 MOVE                             R31 R3
      271 SETLIST                          R26 R27 5 [1]
      273 CALL                             R24 2 1
      274 GETUPVAL                         R26 2
      275 GETTABLEKS                       R25 R26 K21 ["useCallback"]
      277 NEWCLOSURE                       R26 P11
      278 CAPTURE                          VAL R3
      279 CAPTURE                          VAL R12
      280 CAPTURE                          UPVAL U3
      281 CAPTURE                          VAL R4
      282 CAPTURE                          VAL R14
      283 CAPTURE                          VAL R5
      284 CAPTURE                          VAL R0
      285 NEWTABLE                         R27 0 4
      287 GETTABLEKS                       R28 R0 K24 ["onSelectedDateChanged"]
      289 MOVE                             R29 R4
      290 MOVE                             R30 R23
      291 MOVE                             R31 R3
      292 SETLIST                          R27 R28 4 [1]
      294 CALL                             R25 2 1
      295 GETUPVAL                         R27 2
      296 GETTABLEKS                       R26 R27 K25 ["useMemo"]
      298 NEWCLOSURE                       R27 P12
      299 CAPTURE                          UPVAL U2
      300 CAPTURE                          VAL R1
      301 CAPTURE                          VAL R2
      302 CAPTURE                          UPVAL U3
      303 CAPTURE                          UPVAL U5
      304 CAPTURE                          VAL R13
      305 CAPTURE                          UPVAL U6
      306 CAPTURE                          VAL R22
      307 CAPTURE                          VAL R23
      308 CAPTURE                          VAL R21
      309 CAPTURE                          VAL R20
      310 CAPTURE                          VAL R0
      311 NEWTABLE                         R28 0 8
      313 MOVE                             R29 R21
      314 MOVE                             R30 R22
      315 MOVE                             R31 R23
      316 MOVE                             R32 R13
      317 MOVE                             R33 R4
      318 MOVE                             R34 R20
      319 GETTABLEKS                       R35 R0 K23 ["selectableDateRange"]
      321 GETTABLEKS                       R36 R0 K3 ["showEndDateTimeCalendarInput"]
      323 SETLIST                          R28 R29 8 [1]
      325 CALL                             R26 2 1
      326 GETUPVAL                         R28 2
      327 GETTABLEKS                       R27 R28 K26 ["createElement"]
      329 GETUPVAL                         R28 7
      330 DUPTABLE                         R29 K31 [{"LayoutOrder", "tag", "Size", "testId"}]
      331 GETTABLEKS                       R30 R0 K27 ["LayoutOrder"]
      333 SETTABLEKS                       R30 R29 K27 ["LayoutOrder"]
      335 LOADK                            R30 K32 ["col auto-y"]
      336 SETTABLEKS                       R30 R29 K28 ["tag"]
      338 GETIMPORT                        R30 K35 [UDim2.fromOffset]
      340 MOVE                             R31 R2
      341 LOADN                            R32 0
      342 CALL                             R30 2 1
      343 SETTABLEKS                       R30 R29 K29 ["Size"]
      345 GETTABLEKS                       R30 R0 K30 ["testId"]
      347 SETTABLEKS                       R30 R29 K30 ["testId"]
      349 DUPTABLE                         R30 K39 [{"CalendarHeader", "CalendarInputContainer", "WeekAndDates"}]
      350 GETUPVAL                         R32 2
      351 GETTABLEKS                       R31 R32 K26 ["createElement"]
      353 GETUPVAL                         R32 7
      354 DUPTABLE                         R33 K40 [{"LayoutOrder", "tag"}]
      355 LOADN                            R34 1
      356 SETTABLEKS                       R34 R33 K27 ["LayoutOrder"]
      358 LOADK                            R34 K41 ["row size-full-0 auto-y gap-small align-y-center padding-y-small"]
      359 SETTABLEKS                       R34 R33 K28 ["tag"]
      361 DUPTABLE                         R34 K46 [{"PreviousMonthButton", "MonthText", "YearText", "NextMonthButton"}]
      362 GETUPVAL                         R36 2
      363 GETTABLEKS                       R35 R36 K26 ["createElement"]
      365 GETUPVAL                         R36 8
      366 DUPTABLE                         R37 K52 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      367 LOADN                            R38 1
      368 SETTABLEKS                       R38 R37 K27 ["LayoutOrder"]
      370 GETUPVAL                         R39 9
      371 GETTABLEKS                       R38 R39 K53 ["ChevronSmallLeft"]
      373 SETTABLEKS                       R38 R37 K47 ["icon"]
      375 LOADB                            R38 1
      376 SETTABLEKS                       R38 R37 K48 ["isCircular"]
      378 SETTABLEKS                       R19 R37 K49 ["onActivated"]
      380 GETUPVAL                         R39 10
      381 GETTABLEKS                       R38 R39 K54 ["Small"]
      383 SETTABLEKS                       R38 R37 K50 ["size"]
      385 GETUPVAL                         R39 11
      386 GETTABLEKS                       R38 R39 K55 ["Utility"]
      388 SETTABLEKS                       R38 R37 K51 ["variant"]
      390 LOADK                            R39 K56 ["%*--previous-month-button"]
      391 GETTABLEKS                       R41 R0 K30 ["testId"]
      393 NAMECALL                         R39 R39 K57 ["format"]
      395 CALL                             R39 2 1
      396 MOVE                             R38 R39
      397 SETTABLEKS                       R38 R37 K30 ["testId"]
      399 CALL                             R35 2 1
      400 SETTABLEKS                       R35 R34 K42 ["PreviousMonthButton"]
      402 GETUPVAL                         R36 2
      403 GETTABLEKS                       R35 R36 K26 ["createElement"]
      405 GETUPVAL                         R36 5
      406 DUPTABLE                         R37 K59 [{"LayoutOrder", "Text", "tag", "testId"}]
      407 LOADN                            R38 2
      408 SETTABLEKS                       R38 R37 K27 ["LayoutOrder"]
      410 GETUPVAL                         R40 3
      411 GETTABLEKS                       R39 R40 K60 ["monthMap"]
      413 GETTABLEKS                       R40 R13 K12 ["month"]
      415 GETTABLE                         R38 R39 R40
      416 SETTABLEKS                       R38 R37 K58 ["Text"]
      418 LOADK                            R38 K61 ["grow text-align-x-right auto-xy"]
      419 SETTABLEKS                       R38 R37 K28 ["tag"]
      421 LOADK                            R39 K62 ["%*--month-text"]
      422 GETTABLEKS                       R41 R0 K30 ["testId"]
      424 NAMECALL                         R39 R39 K57 ["format"]
      426 CALL                             R39 2 1
      427 MOVE                             R38 R39
      428 SETTABLEKS                       R38 R37 K30 ["testId"]
      430 CALL                             R35 2 1
      431 SETTABLEKS                       R35 R34 K43 ["MonthText"]
      433 GETUPVAL                         R36 2
      434 GETTABLEKS                       R35 R36 K26 ["createElement"]
      436 GETUPVAL                         R36 5
      437 DUPTABLE                         R37 K59 [{"LayoutOrder", "Text", "tag", "testId"}]
      438 LOADN                            R38 3
      439 SETTABLEKS                       R38 R37 K27 ["LayoutOrder"]
      441 GETTABLEKS                       R39 R13 K13 ["year"]
      443 FASTCALL1                        TOSTRING R39 ; [+2]
      444 GETIMPORT                        R38 K64 [tostring]
      446 CALL                             R38 1 1
      447 SETTABLEKS                       R38 R37 K58 ["Text"]
      449 LOADK                            R38 K65 ["grow text-align-x-left auto-xy"]
      450 SETTABLEKS                       R38 R37 K28 ["tag"]
      452 LOADK                            R39 K66 ["%*--year-text"]
      453 GETTABLEKS                       R41 R0 K30 ["testId"]
      455 NAMECALL                         R39 R39 K57 ["format"]
      457 CALL                             R39 2 1
      458 MOVE                             R38 R39
      459 SETTABLEKS                       R38 R37 K30 ["testId"]
      461 CALL                             R35 2 1
      462 SETTABLEKS                       R35 R34 K44 ["YearText"]
      464 GETUPVAL                         R36 2
      465 GETTABLEKS                       R35 R36 K26 ["createElement"]
      467 GETUPVAL                         R36 8
      468 DUPTABLE                         R37 K52 [{"LayoutOrder", "icon", "isCircular", "onActivated", "size", "variant", "testId"}]
      469 LOADN                            R38 4
      470 SETTABLEKS                       R38 R37 K27 ["LayoutOrder"]
      472 GETUPVAL                         R39 9
      473 GETTABLEKS                       R38 R39 K67 ["ChevronSmallRight"]
      475 SETTABLEKS                       R38 R37 K47 ["icon"]
      477 LOADB                            R38 1
      478 SETTABLEKS                       R38 R37 K48 ["isCircular"]
      480 SETTABLEKS                       R18 R37 K49 ["onActivated"]
      482 GETUPVAL                         R39 10
      483 GETTABLEKS                       R38 R39 K54 ["Small"]
      485 SETTABLEKS                       R38 R37 K50 ["size"]
      487 GETUPVAL                         R39 11
      488 GETTABLEKS                       R38 R39 K55 ["Utility"]
      490 SETTABLEKS                       R38 R37 K51 ["variant"]
      492 LOADK                            R39 K68 ["%*--next-month-button"]
      493 GETTABLEKS                       R41 R0 K30 ["testId"]
      495 NAMECALL                         R39 R39 K57 ["format"]
      497 CALL                             R39 2 1
      498 MOVE                             R38 R39
      499 SETTABLEKS                       R38 R37 K30 ["testId"]
      501 CALL                             R35 2 1
      502 SETTABLEKS                       R35 R34 K45 ["NextMonthButton"]
      504 CALL                             R31 3 1
      505 SETTABLEKS                       R31 R30 K36 ["CalendarHeader"]
      507 GETTABLEKS                       R32 R0 K22 ["showStartDateTimeCalendarInput"]
      509 JUMPIFNOT                        R32 ; [+166]
      510 GETUPVAL                         R32 2
      511 GETTABLEKS                       R31 R32 K26 ["createElement"]
      513 GETUPVAL                         R32 7
      514 DUPTABLE                         R33 K69 [{"LayoutOrder", "tag", "testId"}]
      515 LOADN                            R34 2
      516 SETTABLEKS                       R34 R33 K27 ["LayoutOrder"]
      518 LOADK                            R34 K70 ["flex-x-fill size-full-0 auto-y row gap-small align-y-center"]
      519 SETTABLEKS                       R34 R33 K28 ["tag"]
      521 LOADK                            R35 K71 ["%*--input"]
      522 GETTABLEKS                       R37 R0 K30 ["testId"]
      524 NAMECALL                         R35 R35 K57 ["format"]
      526 CALL                             R35 2 1
      527 MOVE                             R34 R35
      528 SETTABLEKS                       R34 R33 K30 ["testId"]
      530 DUPTABLE                         R34 K75 [{"StartDateTime", "InputSeparator", "EndDateTime"}]
      531 GETUPVAL                         R36 2
      532 GETTABLEKS                       R35 R36 K26 ["createElement"]
      534 GETUPVAL                         R36 12
      535 DUPTABLE                         R37 K83 [{"hasError", "label", "LayoutOrder", "onChanged", "onFocusLost", "placeholder", "size", "text", "onFocusGained", "testId"}]
      536 LOADB                            R38 0
      537 JUMPIFEQKS                       R9 K11 [""] ; [+10]
      539 GETUPVAL                         R40 3
      540 GETTABLEKS                       R39 R40 K84 ["getDateTimeFromText"]
      542 MOVE                             R40 R9
      543 CALL                             R39 1 1
      544 JUMPIFEQKNIL                     R39 ; [+2]
      546 LOADB                            R38 0 +1
      547 LOADB                            R38 1
      548 SETTABLEKS                       R38 R37 K76 ["hasError"]
      550 LOADK                            R38 K11 [""]
      551 SETTABLEKS                       R38 R37 K77 ["label"]
      553 LOADN                            R38 1
      554 SETTABLEKS                       R38 R37 K27 ["LayoutOrder"]
      556 SETTABLEKS                       R24 R37 K78 ["onChanged"]
      558 SETTABLEKS                       R16 R37 K79 ["onFocusLost"]
      560 LOADK                            R38 K85 ["MM/DD/YYYY"]
      561 SETTABLEKS                       R38 R37 K80 ["placeholder"]
      563 GETUPVAL                         R39 10
      564 GETTABLEKS                       R38 R39 K86 ["Medium"]
      566 SETTABLEKS                       R38 R37 K50 ["size"]
      568 SETTABLEKS                       R9 R37 K81 ["text"]
      570 NEWCLOSURE                       R38 P13
      571 CAPTURE                          VAL R8
      572 SETTABLEKS                       R38 R37 K82 ["onFocusGained"]
      574 LOADK                            R39 K87 ["%*--start-datetime-input"]
      575 GETTABLEKS                       R41 R0 K30 ["testId"]
      577 NAMECALL                         R39 R39 K57 ["format"]
      579 CALL                             R39 2 1
      580 MOVE                             R38 R39
      581 SETTABLEKS                       R38 R37 K30 ["testId"]
      583 CALL                             R35 2 1
      584 SETTABLEKS                       R35 R34 K72 ["StartDateTime"]
      586 GETTABLEKS                       R36 R0 K3 ["showEndDateTimeCalendarInput"]
      588 JUMPIFNOT                        R36 ; [+16]
      589 GETUPVAL                         R36 2
      590 GETTABLEKS                       R35 R36 K26 ["createElement"]
      592 GETUPVAL                         R36 5
      593 DUPTABLE                         R37 K88 [{"LayoutOrder", "tag", "Text"}]
      594 LOADN                            R38 2
      595 SETTABLEKS                       R38 R37 K27 ["LayoutOrder"]
      597 LOADK                            R38 K89 ["auto-xy"]
      598 SETTABLEKS                       R38 R37 K28 ["tag"]
      600 LOADK                            R38 K90 ["-"]
      601 SETTABLEKS                       R38 R37 K58 ["Text"]
      603 CALL                             R35 2 1
      604 JUMP                             ; [+1]
      605 LOADNIL                          R35
      606 SETTABLEKS                       R35 R34 K73 ["InputSeparator"]
      608 GETTABLEKS                       R36 R0 K3 ["showEndDateTimeCalendarInput"]
      610 JUMPIFNOT                        R36 ; [+60]
      611 GETUPVAL                         R36 2
      612 GETTABLEKS                       R35 R36 K26 ["createElement"]
      614 GETUPVAL                         R36 12
      615 DUPTABLE                         R37 K93 [{"hasError", "isDisabled", "label", "LayoutOrder", "onChanged", "onFocusGained", "onFocusLost", "placeholder", "size", "text", "textBoxRef", "testId"}]
      616 LOADB                            R38 0
      617 JUMPIFEQKS                       R11 K11 [""] ; [+10]
      619 GETUPVAL                         R40 3
      620 GETTABLEKS                       R39 R40 K84 ["getDateTimeFromText"]
      622 MOVE                             R40 R11
      623 CALL                             R39 1 1
      624 JUMPIFEQKNIL                     R39 ; [+2]
      626 LOADB                            R38 0 +1
      627 LOADB                            R38 1
      628 SETTABLEKS                       R38 R37 K76 ["hasError"]
      630 GETTABLEN                        R39 R4 1
      631 NOT                              R38 R39
      632 SETTABLEKS                       R38 R37 K91 ["isDisabled"]
      634 LOADK                            R38 K11 [""]
      635 SETTABLEKS                       R38 R37 K77 ["label"]
      637 LOADN                            R38 3
      638 SETTABLEKS                       R38 R37 K27 ["LayoutOrder"]
      640 SETTABLEKS                       R25 R37 K78 ["onChanged"]
      642 NEWCLOSURE                       R38 P14
      643 CAPTURE                          VAL R8
      644 SETTABLEKS                       R38 R37 K82 ["onFocusGained"]
      646 SETTABLEKS                       R17 R37 K79 ["onFocusLost"]
      648 LOADK                            R38 K85 ["MM/DD/YYYY"]
      649 SETTABLEKS                       R38 R37 K80 ["placeholder"]
      651 GETUPVAL                         R39 10
      652 GETTABLEKS                       R38 R39 K86 ["Medium"]
      654 SETTABLEKS                       R38 R37 K50 ["size"]
      656 SETTABLEKS                       R11 R37 K81 ["text"]
      658 SETTABLEKS                       R6 R37 K92 ["textBoxRef"]
      660 LOADK                            R39 K94 ["%*--end-datetime-input"]
      661 GETTABLEKS                       R41 R0 K30 ["testId"]
      663 NAMECALL                         R39 R39 K57 ["format"]
      665 CALL                             R39 2 1
      666 MOVE                             R38 R39
      667 SETTABLEKS                       R38 R37 K30 ["testId"]
      669 CALL                             R35 2 1
      670 JUMP                             ; [+1]
      671 LOADNIL                          R35
      672 SETTABLEKS                       R35 R34 K74 ["EndDateTime"]
      674 CALL                             R31 3 1
      675 JUMP                             ; [+1]
      676 LOADNIL                          R31
      677 SETTABLEKS                       R31 R30 K37 ["CalendarInputContainer"]
      679 GETUPVAL                         R32 2
      680 GETTABLEKS                       R31 R32 K26 ["createElement"]
      682 GETUPVAL                         R32 7
      683 DUPTABLE                         R33 K40 [{"LayoutOrder", "tag"}]
      684 LOADN                            R34 3
      685 SETTABLEKS                       R34 R33 K27 ["LayoutOrder"]
      687 LOADK                            R34 K95 ["size-full-0 auto-y"]
      688 SETTABLEKS                       R34 R33 K28 ["tag"]
      690 MOVE                             R34 R26
      691 CALL                             R31 3 1
      692 SETTABLEKS                       R31 R30 K38 ["WeekAndDates"]
      694 CALL                             R27 3 -1
      695 RETURN                           R27 -1

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
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R14 R0 K17 ["Utility"]
       64 GETTABLEKS                       R13 R14 K18 ["Wrappers"]
       66 CALL                             R12 1 1
       67 GETTABLEKS                       R11 R12 K19 ["Services"]
       69 GETTABLEKS                       R10 R11 K20 ["LocalizationService"]
       71 GETIMPORT                        R11 K6 [require]
       73 GETTABLEKS                       R13 R0 K14 ["Components"]
       75 GETTABLEKS                       R12 R13 K21 ["Text"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K6 [require]
       80 GETTABLEKS                       R14 R0 K14 ["Components"]
       82 GETTABLEKS                       R13 R14 K22 ["TextInput"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K6 [require]
       87 GETTABLEKS                       R15 R0 K17 ["Utility"]
       89 GETTABLEKS                       R14 R15 K23 ["useScaledValue"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETTABLEKS                       R17 R0 K24 ["Providers"]
       96 GETTABLEKS                       R16 R17 K25 ["Style"]
       98 GETTABLEKS                       R15 R16 K26 ["useTokens"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K6 [require]
      103 GETTABLEKS                       R17 R0 K14 ["Components"]
      105 GETTABLEKS                       R16 R17 K27 ["View"]
      107 CALL                             R15 1 1
      108 DUPCLOSURE                       R16 K28 [PROTO_19]
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R12
      122 RETURN                           R16 1
