MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagNewProperties"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 1
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K9 ["Packages"]
       24 GETTABLEKS                       R3 R3 K10 ["TestLoader"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K11 ["isCli"]
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+5]
       31 GETIMPORT                        R3 K13 [error]
       33 LOADK                            R4 K14 ["roblox-cli should not be loading standalone plugins"]
       34 CALL                             R3 1 0
       35 RETURN                           R0 0
       36 GETIMPORT                        R3 K16 [game]
       38 LOADK                            R5 K17 ["DebugReactDevToolsPluginName"]
       39 NAMECALL                         R3 R3 K18 ["GetFastString"]
       41 CALL                             R3 2 1
       42 JUMPIFNOTEQKS                    R3 K2 ["PropertiesPlugin"] ; [+18]
       44 GETIMPORT                        R3 K5 [require]
       46 GETTABLEKS                       R4 R0 K9 ["Packages"]
       48 GETTABLEKS                       R4 R4 K19 ["ReactDeveloperTools"]
       50 CALL                             R3 1 1
       51 GETTABLEKS                       R4 R3 K20 ["tryEnableDevtools"]
       53 DUPTABLE                         R5 K23 [{"pluginName", "profileOnStart"}]
       54 LOADK                            R6 K2 ["PropertiesPlugin"]
       55 SETTABLEKS                       R6 R5 K21 ["pluginName"]
       57 LOADB                            R6 0
       58 SETTABLEKS                       R6 R5 K22 ["profileOnStart"]
       60 CALL                             R4 1 0
       61 GETIMPORT                        R3 K5 [require]
       63 GETTABLEKS                       R4 R0 K24 ["Bin"]
       65 GETTABLEKS                       R4 R4 K25 ["Common"]
       67 GETTABLEKS                       R4 R4 K26 ["pluginType"]
       69 CALL                             R3 1 1
       70 GETTABLEKS                       R4 R3 K27 ["get"]
       72 CALL                             R4 0 1
       73 GETTABLEKS                       R5 R3 K28 ["Standalone"]
       75 JUMPIFEQ                         R4 R5 ; [+2]
       77 RETURN                           R0 0
       78 GETIMPORT                        R4 K5 [require]
       80 GETTABLEKS                       R5 R0 K24 ["Bin"]
       82 GETTABLEKS                       R5 R5 K25 ["Common"]
       84 GETTABLEKS                       R5 R5 K29 ["setup"]
       86 CALL                             R4 1 1
       87 GETIMPORT                        R5 K5 [require]
       89 GETTABLEKS                       R6 R0 K24 ["Bin"]
       91 GETTABLEKS                       R6 R6 K25 ["Common"]
       93 GETTABLEKS                       R6 R6 K30 ["setupMain"]
       95 CALL                             R5 1 1
       96 MOVE                             R6 R4
       97 GETIMPORT                        R7 K32 [plugin]
       99 MOVE                             R8 R5
      100 CALL                             R6 2 0
      101 RETURN                           R0 0
