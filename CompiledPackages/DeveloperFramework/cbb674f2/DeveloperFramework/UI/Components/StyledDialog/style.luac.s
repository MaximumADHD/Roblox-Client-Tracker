MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 16 0
       18 GETTABLEKS                       R3 R1 K9 ["MainBackground"]
       20 SETTABLEKS                       R3 R2 K10 ["Background"]
       22 LOADB                            R3 0
       23 SETTABLEKS                       R3 R2 K11 ["Modal"]
       25 LOADB                            R3 0
       26 SETTABLEKS                       R3 R2 K12 ["Resizable"]
       28 GETIMPORT                        R3 K16 [Enum.HorizontalAlignment.Right]
       30 SETTABLEKS                       R3 R2 K17 ["ButtonHorizontalAlignment"]
       32 LOADN                            R3 120
       33 SETTABLEKS                       R3 R2 K18 ["ButtonWidth"]
       35 LOADN                            R3 32
       36 SETTABLEKS                       R3 R2 K19 ["ButtonHeight"]
       38 DUPTABLE                         R3 K21 [{"Top"}]
       39 LOADN                            R4 24
       40 SETTABLEKS                       R4 R3 K20 ["Top"]
       42 SETTABLEKS                       R3 R2 K22 ["ButtonPadding"]
       44 LOADN                            R3 24
       45 SETTABLEKS                       R3 R2 K23 ["ButtonSpacing"]
       47 LOADN                            R3 24
       48 SETTABLEKS                       R3 R2 K24 ["ContentPadding"]
       50 DUPTABLE                         R3 K26 [{"Buttons", "Modal"}]
       51 NEWTABLE                         R4 0 1
       53 DUPTABLE                         R5 K27 [{"Style"}]
       54 LOADK                            R6 K28 ["RoundPrimary"]
       55 SETTABLEKS                       R6 R5 K7 ["Style"]
       57 SETLIST                          R4 R5 1 [1]
       59 SETTABLEKS                       R4 R3 K25 ["Buttons"]
       61 LOADB                            R4 1
       62 SETTABLEKS                       R4 R3 K11 ["Modal"]
       64 SETTABLEKS                       R3 R2 K29 ["&Alert"]
       66 DUPTABLE                         R3 K30 [{"Buttons"}]
       67 NEWTABLE                         R4 0 2
       69 DUPTABLE                         R5 K27 [{"Style"}]
       70 LOADK                            R6 K28 ["RoundPrimary"]
       71 SETTABLEKS                       R6 R5 K7 ["Style"]
       73 DUPTABLE                         R6 K27 [{"Style"}]
       74 LOADK                            R7 K31 ["Round"]
       75 SETTABLEKS                       R7 R6 K7 ["Style"]
       77 SETLIST                          R4 R5 2 [1]
       79 SETTABLEKS                       R4 R3 K25 ["Buttons"]
       81 SETTABLEKS                       R3 R2 K32 ["&AcceptCancel"]
       83 DUPTABLE                         R3 K30 [{"Buttons"}]
       84 NEWTABLE                         R4 0 2
       86 DUPTABLE                         R5 K27 [{"Style"}]
       87 LOADK                            R6 K31 ["Round"]
       88 SETTABLEKS                       R6 R5 K7 ["Style"]
       90 DUPTABLE                         R6 K27 [{"Style"}]
       91 LOADK                            R7 K28 ["RoundPrimary"]
       92 SETTABLEKS                       R7 R6 K7 ["Style"]
       94 SETLIST                          R4 R5 2 [1]
       96 SETTABLEKS                       R4 R3 K25 ["Buttons"]
       98 SETTABLEKS                       R3 R2 K33 ["&CancelAccept"]
      100 DUPTABLE                         R3 K34 [{"ButtonPadding", "ContentPadding"}]
      101 LOADN                            R4 24
      102 SETTABLEKS                       R4 R3 K22 ["ButtonPadding"]
      104 LOADN                            R4 0
      105 SETTABLEKS                       R4 R3 K24 ["ContentPadding"]
      107 SETTABLEKS                       R3 R2 K35 ["&FullBleed"]
      109 DUPTABLE                         R3 K36 [{"ButtonHorizontalAlignment", "ButtonWidth", "ButtonHeight"}]
      110 GETIMPORT                        R4 K38 [Enum.HorizontalAlignment.Center]
      112 SETTABLEKS                       R4 R3 K17 ["ButtonHorizontalAlignment"]
      114 LOADN                            R4 150
      115 SETTABLEKS                       R4 R3 K18 ["ButtonWidth"]
      117 LOADN                            R4 36
      118 SETTABLEKS                       R4 R3 K19 ["ButtonHeight"]
      120 SETTABLEKS                       R3 R2 K39 ["&LargeCenterButtons"]
      122 RETURN                           R2 1
