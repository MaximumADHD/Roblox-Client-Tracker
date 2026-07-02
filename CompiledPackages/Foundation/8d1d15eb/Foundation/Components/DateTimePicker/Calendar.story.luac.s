PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"defaultDates", "onSelectedDateChanged", "showStartDateTimeCalendarInput", "showEndDateTimeCalendarInput", "showTimeDropdown"}]
        5 NEWTABLE                         R4 0 1
        7 GETIMPORT                        R5 K9 [DateTime.now]
        9 CALL                             R5 0 -1
       10 SETLIST                          R4 R5 -1 [1]
       12 SETTABLEKS                       R4 R3 K1 ["defaultDates"]
       14 DUPCLOSURE                       R4 K10 [PROTO_0]
       15 SETTABLEKS                       R4 R3 K2 ["onSelectedDateChanged"]
       17 GETTABLEKS                       R4 R0 K11 ["controls"]
       19 GETTABLEKS                       R4 R4 K3 ["showStartDateTimeCalendarInput"]
       21 SETTABLEKS                       R4 R3 K3 ["showStartDateTimeCalendarInput"]
       23 GETTABLEKS                       R4 R0 K11 ["controls"]
       25 GETTABLEKS                       R4 R4 K4 ["showEndDateTimeCalendarInput"]
       27 SETTABLEKS                       R4 R3 K4 ["showEndDateTimeCalendarInput"]
       29 GETTABLEKS                       R4 R0 K11 ["controls"]
       31 GETTABLEKS                       R4 R4 K5 ["showTimeDropdown"]
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
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["Calendar"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K12 [{["summary"] = "Calendar", ["stories"], ["controls"]}]
       24 NEWTABLE                         R5 0 1
       26 DUPTABLE                         R6 K15 [{["name"] = "Calendar", ["story"]}]
       27 DUPCLOSURE                       R7 K16 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R7 R6 K14 ["story"]
       32 SETLIST                          R5 R6 1 [1]
       34 SETTABLEKS                       R5 R4 K10 ["stories"]
       36 DUPTABLE                         R5 K21 [{["showStartDateTimeCalendarInput"] = False, ["showEndDateTimeCalendarInput"] = False, ["showTimeDropdown"] = False}]
       37 SETTABLEKS                       R5 R4 K11 ["controls"]
       39 RETURN                           R4 1
