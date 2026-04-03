MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AudioPlayerEditor"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R3 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R3 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["AudioPlayerEditor"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R5 R0 K13 ["Bin"]
       33 GETTABLEKS                       R4 R5 K14 ["Common"]
       35 GETTABLEKS                       R3 R4 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagAudioPlayerEditorEnabled"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K7 [require]
       45 GETTABLEKS                       R6 R0 K11 ["Src"]
       47 GETTABLEKS                       R5 R6 K17 ["Util"]
       49 GETTABLEKS                       R4 R5 K18 ["PlayerUtil"]
       51 CALL                             R3 1 1
       52 GETTABLEKS                       R4 R3 K19 ["setPlugin"]
       54 GETIMPORT                        R5 K1 [plugin]
       56 CALL                             R4 1 0
       57 GETIMPORT                        R4 K7 [require]
       59 GETTABLEKS                       R7 R0 K11 ["Src"]
       61 GETTABLEKS                       R6 R7 K17 ["Util"]
       63 GETTABLEKS                       R5 R6 K20 ["AssetUtil"]
       65 CALL                             R4 1 1
       66 GETTABLEKS                       R5 R4 K21 ["setup"]
       68 GETIMPORT                        R6 K1 [plugin]
       70 CALL                             R5 1 0
       71 GETIMPORT                        R5 K7 [require]
       73 GETTABLEKS                       R8 R0 K13 ["Bin"]
       75 GETTABLEKS                       R7 R8 K14 ["Common"]
       77 GETTABLEKS                       R6 R7 K22 ["pluginType"]
       79 CALL                             R5 1 1
       80 GETTABLEKS                       R6 R5 K23 ["get"]
       82 CALL                             R6 0 1
       83 GETTABLEKS                       R7 R5 K24 ["Asset"]
       85 JUMPIFEQ                         R6 R7 ; [+2]
       87 RETURN                           R0 0
       88 GETIMPORT                        R6 K7 [require]
       90 GETTABLEKS                       R9 R0 K13 ["Bin"]
       92 GETTABLEKS                       R8 R9 K14 ["Common"]
       94 GETTABLEKS                       R7 R8 K21 ["setup"]
       96 CALL                             R6 1 1
       97 GETIMPORT                        R7 K7 [require]
       99 GETTABLEKS                       R10 R0 K13 ["Bin"]
      101 GETTABLEKS                       R9 R10 K14 ["Common"]
      103 GETTABLEKS                       R8 R9 K25 ["setupMain"]
      105 CALL                             R7 1 1
      106 MOVE                             R8 R6
      107 GETIMPORT                        R9 K1 [plugin]
      109 MOVE                             R10 R7
      110 CALL                             R8 2 0
      111 RETURN                           R0 0
