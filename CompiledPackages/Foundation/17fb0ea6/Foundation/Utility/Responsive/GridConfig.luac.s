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
       14 NEWTABLE                         R2 8 0
       16 GETTABLEKS                       R3 R1 K8 ["XSmall"]
       18 LOADN                            R4 3
       19 SETTABLE                         R4 R2 R3
       20 GETTABLEKS                       R3 R1 K9 ["Small"]
       22 LOADN                            R4 6
       23 SETTABLE                         R4 R2 R3
       24 GETTABLEKS                       R3 R1 K10 ["Medium"]
       26 LOADN                            R4 12
       27 SETTABLE                         R4 R2 R3
       28 GETTABLEKS                       R3 R1 K11 ["Large"]
       30 LOADN                            R4 12
       31 SETTABLE                         R4 R2 R3
       32 GETTABLEKS                       R3 R1 K12 ["XLarge"]
       34 LOADN                            R4 12
       35 SETTABLE                         R4 R2 R3
       36 GETTABLEKS                       R3 R1 K13 ["XXLarge"]
       38 LOADN                            R4 12
       39 SETTABLE                         R4 R2 R3
       40 NEWTABLE                         R3 8 0
       42 GETTABLEKS                       R4 R1 K8 ["XSmall"]
       44 LOADN                            R5 12
       45 SETTABLE                         R5 R3 R4
       46 GETTABLEKS                       R4 R1 K9 ["Small"]
       48 LOADN                            R5 20
       49 SETTABLE                         R5 R3 R4
       50 GETTABLEKS                       R4 R1 K10 ["Medium"]
       52 LOADN                            R5 24
       53 SETTABLE                         R5 R3 R4
       54 GETTABLEKS                       R4 R1 K11 ["Large"]
       56 LOADN                            R5 24
       57 SETTABLE                         R5 R3 R4
       58 GETTABLEKS                       R4 R1 K12 ["XLarge"]
       60 LOADN                            R5 32
       61 SETTABLE                         R5 R3 R4
       62 GETTABLEKS                       R4 R1 K13 ["XXLarge"]
       64 LOADN                            R5 48
       65 SETTABLE                         R5 R3 R4
       66 NEWTABLE                         R4 8 0
       68 GETTABLEKS                       R5 R1 K8 ["XSmall"]
       70 LOADN                            R6 8
       71 SETTABLE                         R6 R4 R5
       72 GETTABLEKS                       R5 R1 K9 ["Small"]
       74 LOADN                            R6 12
       75 SETTABLE                         R6 R4 R5
       76 GETTABLEKS                       R5 R1 K10 ["Medium"]
       78 LOADN                            R6 16
       79 SETTABLE                         R6 R4 R5
       80 GETTABLEKS                       R5 R1 K11 ["Large"]
       82 LOADN                            R6 16
       83 SETTABLE                         R6 R4 R5
       84 GETTABLEKS                       R5 R1 K12 ["XLarge"]
       86 LOADN                            R6 20
       87 SETTABLE                         R6 R4 R5
       88 GETTABLEKS                       R5 R1 K13 ["XXLarge"]
       90 LOADN                            R6 20
       91 SETTABLE                         R6 R4 R5
       92 NEWTABLE                         R5 8 0
       94 GETTABLEKS                       R6 R1 K8 ["XSmall"]
       96 LOADN                            R7 8
       97 SETTABLE                         R7 R5 R6
       98 GETTABLEKS                       R6 R1 K9 ["Small"]
      100 LOADN                            R7 12
      101 SETTABLE                         R7 R5 R6
      102 GETTABLEKS                       R6 R1 K10 ["Medium"]
      104 LOADN                            R7 16
      105 SETTABLE                         R7 R5 R6
      106 GETTABLEKS                       R6 R1 K11 ["Large"]
      108 LOADN                            R7 16
      109 SETTABLE                         R7 R5 R6
      110 GETTABLEKS                       R6 R1 K12 ["XLarge"]
      112 LOADN                            R7 20
      113 SETTABLE                         R7 R5 R6
      114 GETTABLEKS                       R6 R1 K13 ["XXLarge"]
      116 LOADN                            R7 20
      117 SETTABLE                         R7 R5 R6
      118 DUPTABLE                         R6 K18 [{"columns", "margins", "gutters", "gaps"}]
      119 SETTABLEKS                       R2 R6 K14 ["columns"]
      121 SETTABLEKS                       R3 R6 K15 ["margins"]
      123 SETTABLEKS                       R4 R6 K16 ["gutters"]
      125 SETTABLEKS                       R5 R6 K17 ["gaps"]
      127 RETURN                           R6 1
