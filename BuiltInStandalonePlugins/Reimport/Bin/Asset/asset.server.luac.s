MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["ReimportPlugin"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["isCli"]
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+1]
       22 RETURN                           R0 0
       23 GETIMPORT                        R2 K7 [require]
       25 GETTABLEKS                       R3 R0 K11 ["Flags"]
       27 GETTABLEKS                       R3 R3 K12 ["GetFFlagEnableReimport"]
       29 CALL                             R2 1 1
       30 MOVE                             R3 R2
       31 CALL                             R3 0 1
       32 JUMPIF                           R3 ; [+1]
       33 RETURN                           R0 0
       34 GETIMPORT                        R3 K14 [game]
       36 LOADK                            R5 K15 ["RunService"]
       37 NAMECALL                         R3 R3 K16 ["GetService"]
       39 CALL                             R3 2 1
       40 NAMECALL                         R3 R3 K17 ["IsEdit"]
       42 CALL                             R3 1 1
       43 JUMPIF                           R3 ; [+1]
       44 RETURN                           R0 0
       45 GETIMPORT                        R3 K1 [plugin]
       47 GETTABLEKS                       R4 R0 K18 ["Name"]
       49 SETTABLEKS                       R4 R3 K18 ["Name"]
       51 GETIMPORT                        R3 K7 [require]
       53 GETTABLEKS                       R4 R0 K19 ["Bin"]
       55 GETTABLEKS                       R4 R4 K20 ["Common"]
       57 GETTABLEKS                       R4 R4 K21 ["Events"]
       59 CALL                             R3 1 1
       60 GETTABLEKS                       R4 R3 K22 ["registerActions"]
       62 CALL                             R4 0 0
       63 GETIMPORT                        R4 K7 [require]
       65 GETTABLEKS                       R5 R0 K11 ["Flags"]
       67 GETTABLEKS                       R5 R5 K23 ["GetFFlagReimportSendReimportConfigOnUpload"]
       69 CALL                             R4 1 1
       70 MOVE                             R5 R4
       71 CALL                             R5 0 1
       72 JUMPIFNOT                        R5 ; [+3]
       73 GETTABLEKS                       R5 R3 K24 ["registerCrossPluginListeners"]
       75 CALL                             R5 0 0
       76 GETIMPORT                        R5 K7 [require]
       78 GETTABLEKS                       R6 R0 K11 ["Flags"]
       80 GETTABLEKS                       R6 R6 K25 ["GetFFlagReimportDefaultCreator"]
       82 CALL                             R5 1 1
       83 MOVE                             R6 R5
       84 CALL                             R6 0 1
       85 JUMPIFNOT                        R6 ; [+12]
       86 GETIMPORT                        R6 K7 [require]
       88 GETTABLEKS                       R7 R0 K26 ["Lib"]
       90 GETTABLEKS                       R7 R7 K27 ["Reimport"]
       92 GETTABLEKS                       R7 R7 K28 ["ReimportConfigs"]
       94 CALL                             R6 1 1
       95 GETTABLEKS                       R7 R6 K29 ["init"]
       97 CALL                             R7 0 0
       98 GETIMPORT                        R6 K7 [require]
      100 GETTABLEKS                       R7 R0 K11 ["Flags"]
      102 GETTABLEKS                       R7 R7 K30 ["GetFFlagReimportFileWatcher"]
      104 CALL                             R6 1 1
      105 MOVE                             R7 R6
      106 CALL                             R7 0 1
      107 JUMPIFNOT                        R7 ; [+12]
      108 GETIMPORT                        R7 K7 [require]
      110 GETTABLEKS                       R8 R0 K26 ["Lib"]
      112 GETTABLEKS                       R8 R8 K31 ["FileWatch"]
      114 CALL                             R7 1 1
      115 GETTABLEKS                       R8 R7 K29 ["init"]
      117 GETIMPORT                        R9 K1 [plugin]
      119 CALL                             R8 1 0
      120 GETIMPORT                        R7 K7 [require]
      122 GETTABLEKS                       R8 R0 K19 ["Bin"]
      124 GETTABLEKS                       R8 R8 K20 ["Common"]
      126 GETTABLEKS                       R8 R8 K32 ["Debug"]
      128 CALL                             R7 1 1
      129 GETTABLEKS                       R8 R7 K33 ["debugEnabled"]
      131 CALL                             R8 0 1
      132 JUMPIFNOT                        R8 ; [+3]
      133 GETTABLEKS                       R8 R7 K34 ["showDebugUi"]
      135 CALL                             R8 0 0
      136 RETURN                           R0 0
