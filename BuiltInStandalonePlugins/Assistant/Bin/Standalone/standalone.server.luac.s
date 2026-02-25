MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["FFlagAssistantTestAutomation"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Flags"]
       22 GETTABLEKS                       R3 R4 K9 ["FFlagIsLuobuBuild"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R5 R0 K10 ["Packages"]
       33 GETTABLEKS                       R4 R5 K11 ["TestLoader"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K12 ["isCli"]
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+5]
       40 GETIMPORT                        R4 K14 [error]
       42 LOADK                            R5 K15 ["roblox-cli should not be loading standalone plugins"]
       43 CALL                             R4 1 0
       44 RETURN                           R0 0
       45 MOVE                             R4 R1
       46 CALL                             R4 0 1
       47 JUMPIFNOT                        R4 ; [+15]
       48 GETIMPORT                        R4 K5 [require]
       50 GETTABLEKS                       R6 R0 K10 ["Packages"]
       52 GETTABLEKS                       R5 R6 K16 ["AssistantUI"]
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R7 R4 K17 ["Utils"]
       57 GETTABLEKS                       R6 R7 K18 ["DataModelType"]
       59 GETTABLEKS                       R5 R6 K19 ["setIsStandalone"]
       61 LOADB                            R6 1
       62 CALL                             R5 1 0
       63 GETIMPORT                        R4 K5 [require]
       65 GETTABLEKS                       R7 R0 K20 ["Bin"]
       67 GETTABLEKS                       R6 R7 K21 ["Common"]
       69 GETTABLEKS                       R5 R6 K22 ["pluginType"]
       71 CALL                             R4 1 1
       72 GETTABLEKS                       R6 R4 K23 ["get"]
       74 CALL                             R6 0 1
       75 GETTABLEKS                       R7 R4 K24 ["Standalone"]
       77 JUMPIFEQ                         R6 R7 ; [+2]
       79 LOADB                            R5 0 +1
       80 LOADB                            R5 1
       81 JUMPIFNOT                        R5 ; [+57]
       82 GETIMPORT                        R6 K5 [require]
       84 GETTABLEKS                       R8 R0 K10 ["Packages"]
       86 GETTABLEKS                       R7 R8 K25 ["ReactDeveloperTools"]
       88 CALL                             R6 1 1
       89 GETTABLEKS                       R7 R6 K26 ["tryEnableDevtools"]
       91 DUPTABLE                         R8 K29 [{"pluginName", "profileOnStart"}]
       92 LOADK                            R9 K2 ["Assistant"]
       93 SETTABLEKS                       R9 R8 K27 ["pluginName"]
       95 LOADB                            R9 0
       96 SETTABLEKS                       R9 R8 K28 ["profileOnStart"]
       98 CALL                             R7 1 0
       99 GETIMPORT                        R7 K5 [require]
      101 GETTABLEKS                       R9 R0 K6 ["Src"]
      103 GETTABLEKS                       R8 R9 K30 ["toolInit"]
      105 CALL                             R7 1 1
      106 MOVE                             R8 R7
      107 GETIMPORT                        R9 K32 [plugin]
      109 DUPTABLE                         R10 K35 [{"isGuest", "isHost"}]
      110 SETTABLEKS                       R5 R10 K33 ["isGuest"]
      112 LOADB                            R11 0
      113 SETTABLEKS                       R11 R10 K34 ["isHost"]
      115 CALL                             R8 2 0
      116 GETIMPORT                        R8 K5 [require]
      118 GETTABLEKS                       R11 R0 K20 ["Bin"]
      120 GETTABLEKS                       R10 R11 K21 ["Common"]
      122 GETTABLEKS                       R9 R10 K36 ["setup"]
      124 CALL                             R8 1 1
      125 GETIMPORT                        R9 K5 [require]
      127 GETTABLEKS                       R12 R0 K20 ["Bin"]
      129 GETTABLEKS                       R11 R12 K21 ["Common"]
      131 GETTABLEKS                       R10 R11 K37 ["setupMain"]
      133 CALL                             R9 1 1
      134 MOVE                             R10 R8
      135 GETIMPORT                        R11 K32 [plugin]
      137 MOVE                             R12 R9
      138 CALL                             R10 2 0
      139 RETURN                           R0 0
