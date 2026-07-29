MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
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
       38 DUPTABLE                         R3 K22 [{["Top"] = 24}]
       39 SETTABLEKS                       R3 R2 K23 ["ButtonPadding"]
       41 LOADN                            R3 24
       42 SETTABLEKS                       R3 R2 K24 ["ButtonSpacing"]
       44 LOADN                            R3 24
       45 SETTABLEKS                       R3 R2 K25 ["ContentPadding"]
       47 DUPTABLE                         R3 K28 [{["Buttons"], ["Modal"] = True}]
       48 NEWTABLE                         R4 0 1
       50 DUPTABLE                         R5 K30 [{["Style"] = "RoundPrimary"}]
       51 SETLIST                          R4 R5 1 [1]
       53 SETTABLEKS                       R4 R3 K26 ["Buttons"]
       55 SETTABLEKS                       R3 R2 K31 ["&Alert"]
       57 DUPTABLE                         R3 K32 [{"Buttons"}]
       58 NEWTABLE                         R4 0 2
       60 DUPTABLE                         R5 K30 [{["Style"] = "RoundPrimary"}]
       61 DUPTABLE                         R6 K34 [{["Style"] = "Round"}]
       62 SETLIST                          R4 R5 2 [1]
       64 SETTABLEKS                       R4 R3 K26 ["Buttons"]
       66 SETTABLEKS                       R3 R2 K35 ["&AcceptCancel"]
       68 DUPTABLE                         R3 K32 [{"Buttons"}]
       69 NEWTABLE                         R4 0 2
       71 DUPTABLE                         R5 K34 [{["Style"] = "Round"}]
       72 DUPTABLE                         R6 K30 [{["Style"] = "RoundPrimary"}]
       73 SETLIST                          R4 R5 2 [1]
       75 SETTABLEKS                       R4 R3 K26 ["Buttons"]
       77 SETTABLEKS                       R3 R2 K36 ["&CancelAccept"]
       79 DUPTABLE                         R3 K38 [{["ButtonPadding"] = 24, ["ContentPadding"] = 0}]
       80 SETTABLEKS                       R3 R2 K39 ["&FullBleed"]
       82 DUPTABLE                         R3 K42 [{["ButtonHorizontalAlignment"], ["ButtonWidth"] = 150, ["ButtonHeight"] = 36}]
       83 GETIMPORT                        R4 K44 [Enum.HorizontalAlignment.Center]
       85 SETTABLEKS                       R4 R3 K17 ["ButtonHorizontalAlignment"]
       87 SETTABLEKS                       R3 R2 K45 ["&LargeCenterButtons"]
       89 RETURN                           R2 1
