PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"defaultDates", "onSelectedDateChanged", "showStartDateTimeCalendarInput", "showEndDateTimeCalendarInput", "showTimeDropdown"}]
        5 NEWTABLE                         R4 0 1
        7 GETIMPORT                        R5 K9 [DateTime.now]
        9 CALL                             R5 0 -1
       10 SETLIST                          R4 R5 -1 [1]
       12 SETTABLEKS                       R4 R3 K1 ["defaultDates"]
       14 DUPCLOSURE                       R4 K10 [PROTO_0]
       15 SETTABLEKS                       R4 R3 K2 ["onSelectedDateChanged"]
       17 GETTABLEKS                       R5 R0 K11 ["controls"]
       19 GETTABLEKS                       R4 R5 K3 ["showStartDateTimeCalendarInput"]
       21 SETTABLEKS                       R4 R3 K3 ["showStartDateTimeCalendarInput"]
       23 GETTABLEKS                       R5 R0 K11 ["controls"]
       25 GETTABLEKS                       R4 R5 K4 ["showEndDateTimeCalendarInput"]
       27 SETTABLEKS                       R4 R3 K4 ["showEndDateTimeCalendarInput"]
       29 GETTABLEKS                       R5 R0 K11 ["controls"]
       31 GETTABLEKS                       R4 R5 K5 ["showTimeDropdown"]
       33 SETTABLEKS                       R4 R3 K5 ["showTimeDropdown"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K8 ["Calendar"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K12 [{"summary", "stories", "controls"}]
       24 LOADK                            R5 K8 ["Calendar"]
       25 SETTABLEKS                       R5 R4 K9 ["summary"]
       27 NEWTABLE                         R5 0 1
       29 DUPTABLE                         R6 K15 [{"name", "story"}]
       30 LOADK                            R7 K8 ["Calendar"]
       31 SETTABLEKS                       R7 R6 K13 ["name"]
       33 DUPCLOSURE                       R7 K16 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R7 R6 K14 ["story"]
       38 SETLIST                          R5 R6 1 [1]
       40 SETTABLEKS                       R5 R4 K10 ["stories"]
       42 DUPTABLE                         R5 K20 [{"showStartDateTimeCalendarInput", "showEndDateTimeCalendarInput", "showTimeDropdown"}]
       43 LOADB                            R6 0
       44 SETTABLEKS                       R6 R5 K17 ["showStartDateTimeCalendarInput"]
       46 LOADB                            R6 0
       47 SETTABLEKS                       R6 R5 K18 ["showEndDateTimeCalendarInput"]
       49 LOADB                            R6 0
       50 SETTABLEKS                       R6 R5 K19 ["showTimeDropdown"]
       52 SETTABLEKS                       R5 R4 K11 ["controls"]
       54 RETURN                           R4 1
