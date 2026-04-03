MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["BuilderIconsFallback"]
        9 CALL                             R1 1 1
       10 LOADK                            R3 K6 ["rbxassetid://%*"]
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R3 K7 ["format"]
       14 CALL                             R3 2 1
       15 MOVE                             R2 R3
       16 DUPTABLE                         R3 K11 [{"Regular", "Filled", "Fallback"}]
       17 GETIMPORT                        R4 K14 [Font.new]
       19 LOADK                            R5 K15 ["rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json"]
       20 GETIMPORT                        R6 K18 [Enum.FontWeight.Regular]
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K8 ["Regular"]
       25 GETIMPORT                        R4 K14 [Font.new]
       27 LOADK                            R5 K15 ["rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json"]
       28 GETIMPORT                        R6 K20 [Enum.FontWeight.Bold]
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K9 ["Filled"]
       33 DUPTABLE                         R4 K21 [{"Regular", "Filled"}]
       34 GETIMPORT                        R5 K14 [Font.new]
       36 MOVE                             R6 R2
       37 GETIMPORT                        R7 K18 [Enum.FontWeight.Regular]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K8 ["Regular"]
       42 GETIMPORT                        R5 K14 [Font.new]
       44 MOVE                             R6 R2
       45 GETIMPORT                        R7 K20 [Enum.FontWeight.Bold]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K9 ["Filled"]
       50 SETTABLEKS                       R4 R3 K10 ["Fallback"]
       52 RETURN                           R3 1
