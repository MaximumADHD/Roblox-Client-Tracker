MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["BuilderIconsFallback"]
        9 CALL                             R1 1 1
       10 LOADK                            R2 K6 ["rbxassetid://%*"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K7 ["format"]
       14 CALL                             R2 2 1
       15 DUPTABLE                         R3 K11 [{"Regular", "Filled", "Fallback"}]
       16 GETIMPORT                        R4 K14 [Font.new]
       18 LOADK                            R5 K15 ["rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json"]
       19 GETIMPORT                        R6 K18 [Enum.FontWeight.Regular]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K8 ["Regular"]
       24 GETIMPORT                        R4 K14 [Font.new]
       26 LOADK                            R5 K15 ["rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json"]
       27 GETIMPORT                        R6 K20 [Enum.FontWeight.Bold]
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K9 ["Filled"]
       32 DUPTABLE                         R4 K21 [{"Regular", "Filled"}]
       33 GETIMPORT                        R5 K14 [Font.new]
       35 MOVE                             R6 R2
       36 GETIMPORT                        R7 K18 [Enum.FontWeight.Regular]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K8 ["Regular"]
       41 GETIMPORT                        R5 K14 [Font.new]
       43 MOVE                             R6 R2
       44 GETIMPORT                        R7 K20 [Enum.FontWeight.Bold]
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K9 ["Filled"]
       49 SETTABLEKS                       R4 R3 K10 ["Fallback"]
       51 RETURN                           R3 1
