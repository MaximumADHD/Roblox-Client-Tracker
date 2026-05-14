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
       18 DUPTABLE                         R4 K17 [{"BorderColor", "BorderWidth", "BackgroundColor", "GraphColors", "Grid", "Padding", "ScaleWidth"}]
       19 GETTABLEKS                       R5 R3 K18 ["MainText"]
       21 SETTABLEKS                       R5 R4 K10 ["BorderColor"]
       23 LOADN                            R5 1
       24 SETTABLEKS                       R5 R4 K11 ["BorderWidth"]
       26 GETTABLEKS                       R5 R3 K19 ["SubBackground2"]
       28 SETTABLEKS                       R5 R4 K12 ["BackgroundColor"]
       30 DUPTABLE                         R5 K23 [{"number", "Vector2", "Vector3"}]
       31 NEWTABLE                         R6 0 1
       33 GETTABLEKS                       R7 R3 K24 ["DialogMainButton"]
       35 SETLIST                          R6 R7 1 [1]
       37 SETTABLEKS                       R6 R5 K20 ["number"]
       39 NEWTABLE                         R6 0 2
       41 GETIMPORT                        R7 K27 [Color3.new]
       43 LOADK                            R8 K28 [0.75]
       44 LOADN                            R9 0
       45 LOADN                            R10 0
       46 CALL                             R7 3 1
       47 GETIMPORT                        R8 K27 [Color3.new]
       49 LOADN                            R9 0
       50 LOADK                            R10 K28 [0.75]
       51 LOADN                            R11 0
       52 CALL                             R8 3 -1
       53 SETLIST                          R6 R7 -1 [1]
       55 SETTABLEKS                       R6 R5 K21 ["Vector2"]
       57 NEWTABLE                         R6 0 3
       59 GETIMPORT                        R7 K27 [Color3.new]
       61 LOADK                            R8 K28 [0.75]
       62 LOADN                            R9 0
       63 LOADN                            R10 0
       64 CALL                             R7 3 1
       65 GETIMPORT                        R8 K27 [Color3.new]
       67 LOADN                            R9 0
       68 LOADK                            R10 K28 [0.75]
       69 LOADN                            R11 0
       70 CALL                             R8 3 1
       71 GETIMPORT                        R9 K27 [Color3.new]
       73 LOADN                            R10 0
       74 LOADN                            R11 0
       75 LOADK                            R12 K28 [0.75]
       76 CALL                             R9 3 -1
       77 SETLIST                          R6 R7 -1 [1]
       79 SETTABLEKS                       R6 R5 K22 ["Vector3"]
       81 SETTABLEKS                       R5 R4 K13 ["GraphColors"]
       83 DUPTABLE                         R5 K32 [{"AxisColor", "GridColor", "Margin"}]
       84 GETTABLEKS                       R6 R3 K18 ["MainText"]
       86 SETTABLEKS                       R6 R5 K29 ["AxisColor"]
       88 GETTABLEKS                       R6 R3 K33 ["MainTextDisabled"]
       90 SETTABLEKS                       R6 R5 K30 ["GridColor"]
       92 LOADK                            R6 K34 [0.05]
       93 SETTABLEKS                       R6 R5 K31 ["Margin"]
       95 SETTABLEKS                       R5 R4 K14 ["Grid"]
       97 LOADN                            R5 15
       98 SETTABLEKS                       R5 R4 K15 ["Padding"]
      100 LOADN                            R5 50
      101 SETTABLEKS                       R5 R4 K16 ["ScaleWidth"]
      103 RETURN                           R4 1
