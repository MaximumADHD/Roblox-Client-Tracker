MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["launch"]
       16 LOADK                            R3 K2 ["Dialog"]
       17 GETTABLEKS                       R4 R0 K9 ["Src"]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K10 ["isCli"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K12 [game]
       27 LOADK                            R4 K13 ["DebugEnableDialogStorybook"]
       28 LOADB                            R5 0
       29 NAMECALL                         R2 R2 K14 ["DefineFastFlag"]
       31 CALL                             R2 3 1
       32 JUMPIFNOT                        R2 ; [+42]
       33 GETIMPORT                        R3 K12 [game]
       35 LOADK                            R5 K15 ["ReplicatedStorage"]
       36 NAMECALL                         R3 R3 K16 ["GetService"]
       38 CALL                             R3 2 1
       39 LOADK                            R6 K2 ["Dialog"]
       40 NAMECALL                         R4 R3 K17 ["FindFirstChild"]
       42 CALL                             R4 2 1
       43 JUMPIFNOT                        R4 ; [+3]
       44 NAMECALL                         R5 R4 K18 ["Destroy"]
       46 CALL                             R5 1 0
       47 GETTABLEKS                       R9 R0 K6 ["Packages"]
       49 GETTABLEKS                       R8 R9 K20 ["_Index"]
       51 GETTABLEKS                       R7 R8 K21 ["DeveloperFramework"]
       53 GETTABLEKS                       R6 R7 K21 ["DeveloperFramework"]
       55 GETTABLEKS                       R5 R6 K19 ["DeveloperFramework.storybook"]
       57 NAMECALL                         R5 R5 K18 ["Destroy"]
       59 CALL                             R5 1 0
       60 SETTABLEKS                       R3 R0 K22 ["Parent"]
       62 GETIMPORT                        R5 K25 [Instance.new]
       64 LOADK                            R6 K26 ["ObjectValue"]
       65 CALL                             R5 1 1
       66 LOADK                            R6 K27 ["Plugin"]
       67 SETTABLEKS                       R6 R5 K28 ["Name"]
       69 GETIMPORT                        R6 K30 [plugin]
       71 SETTABLEKS                       R6 R5 K31 ["Value"]
       73 SETTABLEKS                       R0 R5 K22 ["Parent"]
       75 GETIMPORT                        R3 K5 [require]
       77 GETTABLEKS                       R6 R0 K32 ["Bin"]
       79 GETTABLEKS                       R5 R6 K33 ["Common"]
       81 GETTABLEKS                       R4 R5 K34 ["defineLuaFlags"]
       83 CALL                             R3 1 0
       84 GETIMPORT                        R3 K5 [require]
       86 GETTABLEKS                       R6 R0 K32 ["Bin"]
       88 GETTABLEKS                       R5 R6 K33 ["Common"]
       90 GETTABLEKS                       R4 R5 K35 ["pluginType"]
       92 CALL                             R3 1 1
       93 GETTABLEKS                       R4 R3 K36 ["get"]
       95 CALL                             R4 0 1
       96 GETTABLEKS                       R5 R3 K37 ["Asset"]
       98 JUMPIFEQ                         R4 R5 ; [+2]
      100 RETURN                           R0 0
      101 GETIMPORT                        R4 K5 [require]
      103 GETTABLEKS                       R7 R0 K32 ["Bin"]
      105 GETTABLEKS                       R6 R7 K33 ["Common"]
      107 GETTABLEKS                       R5 R6 K38 ["setup"]
      109 CALL                             R4 1 1
      110 MOVE                             R5 R4
      111 GETIMPORT                        R6 K30 [plugin]
      113 CALL                             R5 1 0
      114 RETURN                           R0 0
