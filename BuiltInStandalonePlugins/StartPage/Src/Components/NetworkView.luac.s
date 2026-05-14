PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnItemCountUpdated"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["OnItemCountUpdated"]
        9 GETUPVAL                         R2 2
       10 LENGTH                           R1 R2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Query"]
        2 GETTABLEKS                       R1 R1 K1 ["searchKey"]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 GETTABLEKS                       R4 R0 K0 ["Query"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R0 K0 ["Query"]
       11 GETTABLEKS                       R3 R3 K2 ["pageSize"]
       13 JUMPIF                           R3 ; [+6]
       14 GETIMPORT                        R4 K4 [warn]
       16 MOVE                             R5 R3
       17 LOADK                            R6 K5 ["Should have a page size in the query"]
       18 CALL                             R4 2 0
       19 LOADN                            R3 30
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R6 R0 K0 ["Query"]
       23 MOVE                             R7 R2
       24 GETTABLEKS                       R8 R0 K6 ["FetchItems"]
       26 NAMECALL                         R4 R4 K7 ["use"]
       28 CALL                             R4 4 3
       29 GETUPVAL                         R7 2
       30 LOADB                            R8 0
       31 CALL                             R7 1 1
       32 GETTABLEKS                       R8 R7 K8 ["current"]
       34 JUMPIF                           R8 ; [+21]
       35 GETTABLEKS                       R8 R0 K9 ["InitialContentHasLoaded"]
       37 JUMPIFNOT                        R8 ; [+18]
       38 JUMPIFEQKNIL                     R5 ; [+17]
       40 LOADB                            R8 1
       41 SETTABLEKS                       R8 R7 K8 ["current"]
       43 GETTABLEKS                       R8 R0 K9 ["InitialContentHasLoaded"]
       45 LENGTH                           R10 R4
       46 GETTABLEKS                       R11 R0 K10 ["MaxCount"]
       48 JUMPIF                           R11 ; [+1]
       49 LENGTH                           R11 R4
       50 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       52 GETIMPORT                        R9 K13 [math.min]
       54 CALL                             R9 2 1
       55 CALL                             R8 1 0
       56 GETUPVAL                         R8 3
       57 NEWCLOSURE                       R9 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 NEWTABLE                         R10 0 2
       63 LENGTH                           R11 R4
       64 MOVE                             R12 R5
       65 SETLIST                          R10 R11 2 [1]
       67 CALL                             R8 2 0
       68 JUMPIFNOTEQKN                    R5 K14 [0] ; [+16]
       70 GETTABLEKS                       R8 R0 K15 ["NoContentDisplayComponent"]
       72 JUMPIFNOT                        R8 ; [+12]
       73 GETUPVAL                         R8 4
       74 GETTABLEKS                       R8 R8 K16 ["createElement"]
       76 GETTABLEKS                       R9 R0 K15 ["NoContentDisplayComponent"]
       78 DUPTABLE                         R10 K18 [{"Size"}]
       79 GETTABLEKS                       R11 R0 K17 ["Size"]
       81 SETTABLEKS                       R11 R10 K17 ["Size"]
       83 CALL                             R8 2 -1
       84 RETURN                           R8 -1
       85 GETUPVAL                         R8 4
       86 GETTABLEKS                       R8 R8 K16 ["createElement"]
       88 GETTABLEKS                       R9 R0 K19 ["DisplayComponent"]
       90 DUPTABLE                         R10 K28 [{"Cells", "OnLoadRange", "LayoutOrder", "CellComponent", "CellSize", "CellPadding", "Size", "DisplayComponentHasAdjustedQuery", "CanDisplayComponentAdjustQuery", "Query"}]
       91 GETTABLEKS                       R12 R0 K10 ["MaxCount"]
       93 JUMPIFNOT                        R12 ; [+7]
       94 GETUPVAL                         R11 5
       95 MOVE                             R12 R4
       96 LOADN                            R13 1
       97 GETTABLEKS                       R14 R0 K10 ["MaxCount"]
       99 CALL                             R11 3 1
      100 JUMP                             ; [+1]
      101 MOVE                             R11 R4
      102 SETTABLEKS                       R11 R10 K20 ["Cells"]
      104 SETTABLEKS                       R6 R10 K21 ["OnLoadRange"]
      106 GETTABLEKS                       R11 R0 K22 ["LayoutOrder"]
      108 SETTABLEKS                       R11 R10 K22 ["LayoutOrder"]
      110 GETTABLEKS                       R11 R0 K23 ["CellComponent"]
      112 SETTABLEKS                       R11 R10 K23 ["CellComponent"]
      114 GETTABLEKS                       R11 R0 K24 ["CellSize"]
      116 SETTABLEKS                       R11 R10 K24 ["CellSize"]
      118 GETTABLEKS                       R11 R0 K25 ["CellPadding"]
      120 SETTABLEKS                       R11 R10 K25 ["CellPadding"]
      122 GETTABLEKS                       R11 R0 K17 ["Size"]
      124 SETTABLEKS                       R11 R10 K17 ["Size"]
      126 GETTABLEKS                       R12 R0 K27 ["CanDisplayComponentAdjustQuery"]
      128 JUMPIFNOT                        R12 ; [+3]
      129 GETTABLEKS                       R11 R0 K26 ["DisplayComponentHasAdjustedQuery"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R11
      133 SETTABLEKS                       R11 R10 K26 ["DisplayComponentHasAdjustedQuery"]
      135 GETTABLEKS                       R12 R0 K27 ["CanDisplayComponentAdjustQuery"]
      137 ORK                              R11 R12 K29 []
      138 SETTABLEKS                       R11 R10 K27 ["CanDisplayComponentAdjustQuery"]
      140 GETTABLEKS                       R12 R0 K27 ["CanDisplayComponentAdjustQuery"]
      142 JUMPIFNOT                        R12 ; [+3]
      143 GETTABLEKS                       R11 R0 K0 ["Query"]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R11
      147 SETTABLEKS                       R11 R10 K0 ["Query"]
      149 CALL                             R8 2 -1
      150 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["memo"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETTABLEKS                       R4 R1 K10 ["useRef"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R6 R0 K6 ["Packages"]
       24 GETTABLEKS                       R6 R6 K11 ["Dash"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K12 ["slice"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R8 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R8 K14 ["Util"]
       35 GETTABLEKS                       R8 R8 K15 ["Telemetry"]
       37 GETTABLEKS                       R8 R8 K16 ["TelemetryContext"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Src"]
       44 GETTABLEKS                       R9 R9 K17 ["Network"]
       46 GETTABLEKS                       R9 R9 K18 ["GameCache"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Src"]
       53 GETTABLEKS                       R10 R10 K19 ["Types"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K13 ["Src"]
       60 GETTABLEKS                       R11 R11 K14 ["Util"]
       62 GETTABLEKS                       R11 R11 K20 ["getQueryString"]
       64 CALL                             R10 1 1
       65 DUPCLOSURE                       R11 K21 [PROTO_1]
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R6
       72 SETGLOBAL                        R11 K22 ["NetworkView"]
       74 MOVE                             R11 R2
       75 GETGLOBAL                        R12 K22 ["NetworkView"]
       77 CALL                             R11 1 -1
       78 RETURN                           R11 -1
