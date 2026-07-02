MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Style"]
       16 GETTABLEKS                       R3 R2 K9 ["StyleKey"]
       18 DUPTABLE                         R4 K20 [{["BorderColor"], ["BorderWidth"] = 1, ["BackgroundColor"], ["GraphColors"], ["Grid"], ["Padding"] = 15, ["ScaleWidth"] = 50}]
       19 GETTABLEKS                       R5 R3 K21 ["MainText"]
       21 SETTABLEKS                       R5 R4 K10 ["BorderColor"]
       23 GETTABLEKS                       R5 R3 K22 ["SubBackground2"]
       25 SETTABLEKS                       R5 R4 K13 ["BackgroundColor"]
       27 DUPTABLE                         R5 K26 [{"number", "Vector2", "Vector3"}]
       28 NEWTABLE                         R6 0 1
       30 GETTABLEKS                       R7 R3 K27 ["DialogMainButton"]
       32 SETLIST                          R6 R7 1 [1]
       34 SETTABLEKS                       R6 R5 K23 ["number"]
       36 NEWTABLE                         R6 0 2
       38 GETIMPORT                        R7 K30 [Color3.new]
       40 LOADK                            R8 K31 [0.75]
       41 LOADN                            R9 0
       42 LOADN                            R10 0
       43 CALL                             R7 3 1
       44 GETIMPORT                        R8 K30 [Color3.new]
       46 LOADN                            R9 0
       47 LOADK                            R10 K31 [0.75]
       48 LOADN                            R11 0
       49 CALL                             R8 3 -1
       50 SETLIST                          R6 R7 -1 [1]
       52 SETTABLEKS                       R6 R5 K24 ["Vector2"]
       54 NEWTABLE                         R6 0 3
       56 GETIMPORT                        R7 K30 [Color3.new]
       58 LOADK                            R8 K31 [0.75]
       59 LOADN                            R9 0
       60 LOADN                            R10 0
       61 CALL                             R7 3 1
       62 GETIMPORT                        R8 K30 [Color3.new]
       64 LOADN                            R9 0
       65 LOADK                            R10 K31 [0.75]
       66 LOADN                            R11 0
       67 CALL                             R8 3 1
       68 GETIMPORT                        R9 K30 [Color3.new]
       70 LOADN                            R10 0
       71 LOADN                            R11 0
       72 LOADK                            R12 K31 [0.75]
       73 CALL                             R9 3 -1
       74 SETLIST                          R6 R7 -1 [1]
       76 SETTABLEKS                       R6 R5 K25 ["Vector3"]
       78 SETTABLEKS                       R5 R4 K14 ["GraphColors"]
       80 DUPTABLE                         R5 K36 [{["AxisColor"], ["GridColor"], ["Margin"] = 0.05}]
       81 GETTABLEKS                       R6 R3 K21 ["MainText"]
       83 SETTABLEKS                       R6 R5 K32 ["AxisColor"]
       85 GETTABLEKS                       R6 R3 K37 ["MainTextDisabled"]
       87 SETTABLEKS                       R6 R5 K33 ["GridColor"]
       89 SETTABLEKS                       R5 R4 K15 ["Grid"]
       91 RETURN                           R4 1
