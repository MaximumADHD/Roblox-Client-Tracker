PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K3 ["createElement"]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K5 [{"Plugin"}]
       12 GETIMPORT                        R3 K1 [plugin]
       14 SETTABLEKS                       R3 R2 K4 ["Plugin"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R1 R2 K6 ["createRoot"]
       20 GETUPVAL                         R2 5
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 3
       23 GETUPVAL                         R1 3
       24 JUMPIFNOT                        R1 ; [+5]
       25 GETUPVAL                         R1 3
       26 MOVE                             R3 R0
       27 NAMECALL                         R1 R1 K7 ["render"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["Common"]
       11 GETTABLEKS                       R1 R2 K6 ["defineLuaFlags"]
       13 CALL                             R0 1 0
       14 GETIMPORT                        R3 K3 [script]
       16 GETTABLEKS                       R2 R3 K4 ["Parent"]
       18 GETTABLEKS                       R1 R2 K4 ["Parent"]
       20 GETTABLEKS                       R0 R1 K5 ["Common"]
       22 GETIMPORT                        R1 K1 [require]
       24 GETTABLEKS                       R2 R0 K7 ["getUseAssetForDebugging"]
       26 CALL                             R1 1 1
       27 JUMPIFNOT                        R1 ; [+31]
       28 GETIMPORT                        R1 K9 [plugin]
       30 JUMPIF                           R1 ; [+1]
       31 RETURN                           R0 0
       32 GETIMPORT                        R4 K3 [script]
       34 GETTABLEKS                       R3 R4 K4 ["Parent"]
       36 GETTABLEKS                       R2 R3 K4 ["Parent"]
       38 GETTABLEKS                       R1 R2 K4 ["Parent"]
       40 GETIMPORT                        R2 K1 [require]
       42 GETTABLEKS                       R4 R1 K10 ["Packages"]
       44 GETTABLEKS                       R3 R4 K11 ["TestLoader"]
       46 CALL                             R2 1 1
       47 GETTABLEKS                       R3 R2 K12 ["launch"]
       49 LOADK                            R4 K13 ["ActivityFeed"]
       50 GETTABLEKS                       R5 R1 K14 ["Src"]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R2 K15 ["isCli"]
       55 CALL                             R3 0 1
       56 JUMPIFNOT                        R3 ; [+84]
       57 RETURN                           R0 0
       58 RETURN                           R0 0
       59 GETIMPORT                        R1 K9 [plugin]
       61 JUMPIF                           R1 ; [+1]
       62 RETURN                           R0 0
       63 GETIMPORT                        R4 K3 [script]
       65 GETTABLEKS                       R3 R4 K4 ["Parent"]
       67 GETTABLEKS                       R2 R3 K4 ["Parent"]
       69 GETTABLEKS                       R1 R2 K4 ["Parent"]
       71 GETIMPORT                        R2 K1 [require]
       73 GETTABLEKS                       R3 R0 K16 ["commonInit"]
       75 CALL                             R2 1 1
       76 MOVE                             R3 R2
       77 CALL                             R3 0 0
       78 GETIMPORT                        R3 K1 [require]
       80 GETTABLEKS                       R5 R1 K10 ["Packages"]
       82 GETTABLEKS                       R4 R5 K11 ["TestLoader"]
       84 CALL                             R3 1 1
       85 GETTABLEKS                       R4 R3 K12 ["launch"]
       87 LOADK                            R5 K13 ["ActivityFeed"]
       88 GETTABLEKS                       R6 R1 K14 ["Src"]
       90 CALL                             R4 2 0
       91 GETTABLEKS                       R4 R3 K15 ["isCli"]
       93 CALL                             R4 0 1
       94 JUMPIFNOT                        R4 ; [+1]
       95 RETURN                           R0 0
       96 GETIMPORT                        R4 K19 [Instance.new]
       98 LOADK                            R5 K20 ["Frame"]
       99 CALL                             R4 1 1
      100 GETIMPORT                        R5 K1 [require]
      102 GETTABLEKS                       R7 R1 K10 ["Packages"]
      104 GETTABLEKS                       R6 R7 K21 ["React"]
      106 CALL                             R5 1 1
      107 GETIMPORT                        R6 K1 [require]
      109 GETTABLEKS                       R8 R1 K10 ["Packages"]
      111 GETTABLEKS                       R7 R8 K22 ["ReactRoblox"]
      113 CALL                             R6 1 1
      114 GETIMPORT                        R7 K1 [require]
      116 GETTABLEKS                       R9 R1 K14 ["Src"]
      118 GETTABLEKS                       R8 R9 K23 ["MainPlugin"]
      120 CALL                             R7 1 1
      121 LOADNIL                          R8
      122 NEWCLOSURE                       R9 P0
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R7
      126 CAPTURE                          REF R8
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R4
      129 GETIMPORT                        R11 K9 [plugin]
      131 GETTABLEKS                       R10 R11 K24 ["Unloading"]
      133 NEWCLOSURE                       R12 P1
      134 CAPTURE                          REF R8
      135 NAMECALL                         R10 R10 K25 ["Connect"]
      137 CALL                             R10 2 0
      138 MOVE                             R10 R9
      139 CALL                             R10 0 0
      140 CLOSEUPVALS                      R8
      141 RETURN                           R0 0
