MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["Breakpoint"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["BreakpointShortName"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 8 0
       23 GETTABLEKS                       R4 R1 K9 ["XSmall"]
       25 GETTABLEKS                       R5 R2 K10 ["xs"]
       27 SETTABLE                         R5 R3 R4
       28 GETTABLEKS                       R4 R1 K11 ["Small"]
       30 GETTABLEKS                       R5 R2 K12 ["sm"]
       32 SETTABLE                         R5 R3 R4
       33 GETTABLEKS                       R4 R1 K13 ["Medium"]
       35 GETTABLEKS                       R5 R2 K14 ["md"]
       37 SETTABLE                         R5 R3 R4
       38 GETTABLEKS                       R4 R1 K15 ["Large"]
       40 GETTABLEKS                       R5 R2 K16 ["lg"]
       42 SETTABLE                         R5 R3 R4
       43 GETTABLEKS                       R4 R1 K17 ["XLarge"]
       45 GETTABLEKS                       R5 R2 K18 ["xl"]
       47 SETTABLE                         R5 R3 R4
       48 GETTABLEKS                       R4 R1 K19 ["XXLarge"]
       50 GETTABLEKS                       R5 R2 K20 ["xxl"]
       52 SETTABLE                         R5 R3 R4
       53 NEWTABLE                         R4 8 0
       55 GETTABLEKS                       R5 R1 K9 ["XSmall"]
       57 LOADN                            R6 104
       58 SETTABLE                         R6 R4 R5
       59 GETTABLEKS                       R5 R1 K11 ["Small"]
       61 LOADN                            R6 88
       62 SETTABLE                         R6 R4 R5
       63 GETTABLEKS                       R5 R1 K13 ["Medium"]
       65 LOADN                            R6 116
       66 SETTABLE                         R6 R4 R5
       67 GETTABLEKS                       R5 R1 K15 ["Large"]
       69 LOADN                            R6 240
       70 SETTABLE                         R6 R4 R5
       71 GETTABLEKS                       R5 R1 K17 ["XLarge"]
       73 LOADN                            R6 128
       74 SETTABLE                         R6 R4 R5
       75 GETTABLEKS                       R5 R1 K19 ["XXLarge"]
       77 LOADK                            R6 K21 [∞]
       78 SETTABLE                         R6 R4 R5
       79 NEWTABLE                         R5 0 6
       81 GETTABLEKS                       R6 R1 K9 ["XSmall"]
       83 GETTABLEKS                       R7 R1 K11 ["Small"]
       85 GETTABLEKS                       R8 R1 K13 ["Medium"]
       87 GETTABLEKS                       R9 R1 K15 ["Large"]
       89 GETTABLEKS                       R10 R1 K17 ["XLarge"]
       91 GETTABLEKS                       R11 R1 K19 ["XXLarge"]
       93 SETLIST                          R5 R6 6 [1]
       95 DUPTABLE                         R6 K25 [{"shortNames", "widths", "order"}]
       96 SETTABLEKS                       R3 R6 K22 ["shortNames"]
       98 SETTABLEKS                       R4 R6 K23 ["widths"]
      100 SETTABLEKS                       R5 R6 K24 ["order"]
      102 RETURN                           R6 1
