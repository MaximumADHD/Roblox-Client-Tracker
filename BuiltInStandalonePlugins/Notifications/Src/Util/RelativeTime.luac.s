PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 DUPTABLE                         R1 K3 [{[1] = "", ["key"] = ""}]
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K6 [DateTime.now]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R1 R1 K7 ["UnixTimestamp"]
        8 SUB                              R2 R1 R0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K8 ["MINUTE_IN_SECONDS"]
       12 JUMPIFNOTLT                      R2 R3 ; [+6]
       14 DUPTABLE                         R3 K10 [{[1], ["key"] = "Now"}]
       15 GETUPVAL                         R4 1
       16 SETTABLEKS                       R4 R3 K0 ["scope"]
       18 RETURN                           R3 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K11 ["HOUR_IN_SECONDS"]
       22 JUMPIFNOTLT                      R2 R3 ; [+20]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K8 ["MINUTE_IN_SECONDS"]
       27 DIV                              R5 R2 R6
       28 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       29 GETIMPORT                        R4 K14 [math.floor]
       31 CALL                             R4 1 1
       32 FASTCALL1                        TOSTRING R4 ; [+2]
       33 GETIMPORT                        R3 K16 [tostring]
       35 CALL                             R3 1 1
       36 DUPTABLE                         R4 K21 [{[1], ["key"] = "Minutes", ["paramName"] = "minutes", ["paramValue"]}]
       37 GETUPVAL                         R5 2
       38 SETTABLEKS                       R5 R4 K0 ["scope"]
       40 SETTABLEKS                       R3 R4 K20 ["paramValue"]
       42 RETURN                           R4 1
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K22 ["DAY_IN_SECONDS"]
       46 JUMPIFNOTLT                      R2 R3 ; [+20]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K11 ["HOUR_IN_SECONDS"]
       51 DIV                              R5 R2 R6
       52 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       53 GETIMPORT                        R4 K14 [math.floor]
       55 CALL                             R4 1 1
       56 FASTCALL1                        TOSTRING R4 ; [+2]
       57 GETIMPORT                        R3 K16 [tostring]
       59 CALL                             R3 1 1
       60 DUPTABLE                         R4 K25 [{[1], ["key"] = "Hours", ["paramName"] = "hours", ["paramValue"]}]
       61 GETUPVAL                         R5 2
       62 SETTABLEKS                       R5 R4 K0 ["scope"]
       64 SETTABLEKS                       R3 R4 K20 ["paramValue"]
       66 RETURN                           R4 1
       67 GETUPVAL                         R3 0
       68 GETTABLEKS                       R3 R3 K26 ["WEEK_IN_SECONDS"]
       70 JUMPIFNOTLT                      R2 R3 ; [+20]
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K22 ["DAY_IN_SECONDS"]
       75 DIV                              R5 R2 R6
       76 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       77 GETIMPORT                        R4 K14 [math.floor]
       79 CALL                             R4 1 1
       80 FASTCALL1                        TOSTRING R4 ; [+2]
       81 GETIMPORT                        R3 K16 [tostring]
       83 CALL                             R3 1 1
       84 DUPTABLE                         R4 K29 [{[1], ["key"] = "Days", ["paramName"] = "days", ["paramValue"]}]
       85 GETUPVAL                         R5 2
       86 SETTABLEKS                       R5 R4 K0 ["scope"]
       88 SETTABLEKS                       R3 R4 K20 ["paramValue"]
       90 RETURN                           R4 1
       91 GETUPVAL                         R3 0
       92 GETTABLEKS                       R3 R3 K30 ["MONTH_IN_SECONDS"]
       94 JUMPIFNOTLT                      R2 R3 ; [+20]
       96 GETUPVAL                         R6 0
       97 GETTABLEKS                       R6 R6 K26 ["WEEK_IN_SECONDS"]
       99 DIV                              R5 R2 R6
      100 FASTCALL1                        MATH_FLOOR R5 ; [+2]
      101 GETIMPORT                        R4 K14 [math.floor]
      103 CALL                             R4 1 1
      104 FASTCALL1                        TOSTRING R4 ; [+2]
      105 GETIMPORT                        R3 K16 [tostring]
      107 CALL                             R3 1 1
      108 DUPTABLE                         R4 K33 [{[1], ["key"] = "Weeks", ["paramName"] = "weeks", ["paramValue"]}]
      109 GETUPVAL                         R5 2
      110 SETTABLEKS                       R5 R4 K0 ["scope"]
      112 SETTABLEKS                       R3 R4 K20 ["paramValue"]
      114 RETURN                           R4 1
      115 GETUPVAL                         R3 0
      116 GETTABLEKS                       R3 R3 K34 ["YEAR_IN_SECONDS"]
      118 JUMPIFNOTLT                      R2 R3 ; [+20]
      120 GETUPVAL                         R6 0
      121 GETTABLEKS                       R6 R6 K30 ["MONTH_IN_SECONDS"]
      123 DIV                              R5 R2 R6
      124 FASTCALL1                        MATH_FLOOR R5 ; [+2]
      125 GETIMPORT                        R4 K14 [math.floor]
      127 CALL                             R4 1 1
      128 FASTCALL1                        TOSTRING R4 ; [+2]
      129 GETIMPORT                        R3 K16 [tostring]
      131 CALL                             R3 1 1
      132 DUPTABLE                         R4 K37 [{[1], ["key"] = "Months", ["paramName"] = "months", ["paramValue"]}]
      133 GETUPVAL                         R5 2
      134 SETTABLEKS                       R5 R4 K0 ["scope"]
      136 SETTABLEKS                       R3 R4 K20 ["paramValue"]
      138 RETURN                           R4 1
      139 GETUPVAL                         R6 0
      140 GETTABLEKS                       R6 R6 K34 ["YEAR_IN_SECONDS"]
      142 DIV                              R5 R2 R6
      143 FASTCALL1                        MATH_FLOOR R5 ; [+2]
      144 GETIMPORT                        R4 K14 [math.floor]
      146 CALL                             R4 1 1
      147 FASTCALL1                        TOSTRING R4 ; [+2]
      148 GETIMPORT                        R3 K16 [tostring]
      150 CALL                             R3 1 1
      151 DUPTABLE                         R4 K40 [{[1], ["key"] = "Years", ["paramName"] = "years", ["paramValue"]}]
      152 GETUPVAL                         R5 2
      153 SETTABLEKS                       R5 R4 K0 ["scope"]
      155 SETTABLEKS                       R3 R4 K20 ["paramValue"]
      157 RETURN                           R4 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [DateTime.now]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R1 R1 K3 ["UnixTimestamp"]
        8 SUB                              R2 R1 R0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["HOUR_IN_SECONDS"]
       12 JUMPIFNOTLT                      R2 R3 ; [+3]
       14 GETUPVAL                         R3 1
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K5 ["DAY_IN_SECONDS"]
       19 JUMPIFNOTLT                      R2 R3 ; [+3]
       21 GETUPVAL                         R3 2
       22 RETURN                           R3 1
       23 LOADNIL                          R3
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TimeConstants"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["LOCALE_SCOPE_LONG"]
       12 GETTABLEKS                       R2 R0 K7 ["LOCALE_SCOPE"]
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 GETTABLEKS                       R5 R0 K9 ["MINUTE_IN_SECONDS"]
       20 GETTABLEKS                       R6 R0 K10 ["SECONDS_IN_MS"]
       22 MUL                              R4 R5 R6
       23 GETTABLEKS                       R6 R0 K11 ["HOUR_IN_SECONDS"]
       25 GETTABLEKS                       R7 R0 K10 ["SECONDS_IN_MS"]
       27 MUL                              R5 R6 R7
       28 DUPCLOSURE                       R6 K12 [PROTO_1]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R5
       32 DUPTABLE                         R7 K15 [{"calculateRelativeTime", "getRefreshIntervalInMS"}]
       33 SETTABLEKS                       R3 R7 K13 ["calculateRelativeTime"]
       35 SETTABLEKS                       R6 R7 K14 ["getRefreshIntervalInMS"]
       37 RETURN                           R7 1
