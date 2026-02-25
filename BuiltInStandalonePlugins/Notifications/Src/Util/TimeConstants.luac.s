MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K10 [{"SECONDS_IN_MS", "MINUTE_IN_SECONDS", "HOUR_IN_SECONDS", "DAY_IN_SECONDS", "WEEK_IN_SECONDS", "MONTH_IN_SECONDS", "YEAR_IN_SECONDS", "LOCALE_SCOPE_LONG", "LOCALE_SCOPE_SHORT", "LOCALE_SCOPE"}]
        2 LOADN                            R1 232
        3 SETTABLEKS                       R1 R0 K0 ["SECONDS_IN_MS"]
        5 LOADN                            R1 60
        6 SETTABLEKS                       R1 R0 K1 ["MINUTE_IN_SECONDS"]
        8 LOADN                            R1 16
        9 SETTABLEKS                       R1 R0 K2 ["HOUR_IN_SECONDS"]
       11 LOADK                            R1 K11 [86400]
       12 SETTABLEKS                       R1 R0 K3 ["DAY_IN_SECONDS"]
       14 LOADK                            R1 K12 [604800]
       15 SETTABLEKS                       R1 R0 K4 ["WEEK_IN_SECONDS"]
       17 LOADK                            R1 K13 [2628000]
       18 SETTABLEKS                       R1 R0 K5 ["MONTH_IN_SECONDS"]
       20 LOADK                            R1 K14 [31536000]
       21 SETTABLEKS                       R1 R0 K6 ["YEAR_IN_SECONDS"]
       23 LOADK                            R1 K15 ["ElapsedTime"]
       24 SETTABLEKS                       R1 R0 K7 ["LOCALE_SCOPE_LONG"]
       26 LOADK                            R1 K16 ["ElapsedTimeShort"]
       27 SETTABLEKS                       R1 R0 K8 ["LOCALE_SCOPE_SHORT"]
       29 LOADK                            R1 K16 ["ElapsedTimeShort"]
       30 SETTABLEKS                       R1 R0 K9 ["LOCALE_SCOPE"]
       32 RETURN                           R0 1
