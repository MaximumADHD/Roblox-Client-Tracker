PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1
        5 LOADNIL                          R1
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K8 [{"delete", "duplicate", "selectAll", "clearSelection", "zoomExtents", "copy", "cut", "paste"}]
        1 DUPTABLE                         R1 K12 [{"studioAction", "isEnabled", "activate"}]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K13 ["DeleteSelected"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R1 K9 ["studioAction"]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K10 ["isEnabled"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K14 ["removeSelectedNodesAsync"]
       17 SETTABLEKS                       R2 R1 K11 ["activate"]
       19 SETTABLEKS                       R1 R0 K0 ["delete"]
       21 DUPTABLE                         R1 K12 [{"studioAction", "isEnabled", "activate"}]
       22 GETUPVAL                         R3 0
       23 JUMPIFNOT                        R3 ; [+4]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K15 ["DuplicateSelection"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R2
       29 SETTABLEKS                       R2 R1 K9 ["studioAction"]
       31 GETUPVAL                         R2 1
       32 SETTABLEKS                       R2 R1 K10 ["isEnabled"]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K16 ["duplicateSelectedNodesAsync"]
       37 SETTABLEKS                       R2 R1 K11 ["activate"]
       39 SETTABLEKS                       R1 R0 K1 ["duplicate"]
       41 DUPTABLE                         R1 K18 [{["studioAction"], ["isEnabled"] = True, ["activate"]}]
       42 GETUPVAL                         R3 0
       43 JUMPIFNOT                        R3 ; [+4]
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R2 R3 K19 ["SelectAll"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R2
       49 SETTABLEKS                       R2 R1 K9 ["studioAction"]
       51 GETUPVAL                         R2 2
       52 GETTABLEKS                       R2 R2 K20 ["selectAllNodesAsync"]
       54 SETTABLEKS                       R2 R1 K11 ["activate"]
       56 SETTABLEKS                       R1 R0 K2 ["selectAll"]
       58 DUPTABLE                         R1 K18 [{["studioAction"], ["isEnabled"] = True, ["activate"]}]
       59 GETUPVAL                         R3 0
       60 JUMPIFNOT                        R3 ; [+4]
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R2 R3 K21 ["ClearSelection"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R2
       66 SETTABLEKS                       R2 R1 K9 ["studioAction"]
       68 GETUPVAL                         R2 2
       69 GETTABLEKS                       R2 R2 K22 ["clearNodeSelectionAsync"]
       71 SETTABLEKS                       R2 R1 K11 ["activate"]
       73 SETTABLEKS                       R1 R0 K3 ["clearSelection"]
       75 DUPTABLE                         R1 K18 [{["studioAction"], ["isEnabled"] = True, ["activate"]}]
       76 GETUPVAL                         R3 0
       77 JUMPIFNOT                        R3 ; [+4]
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R2 R3 K23 ["ZoomExtents"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R2
       83 SETTABLEKS                       R2 R1 K9 ["studioAction"]
       85 GETUPVAL                         R2 3
       86 GETTABLEKS                       R2 R2 K24 ["frameSelection"]
       88 SETTABLEKS                       R2 R1 K11 ["activate"]
       90 SETTABLEKS                       R1 R0 K4 ["zoomExtents"]
       92 DUPTABLE                         R1 K12 [{"studioAction", "isEnabled", "activate"}]
       93 GETUPVAL                         R3 0
       94 JUMPIFNOT                        R3 ; [+4]
       95 GETUPVAL                         R3 0
       96 GETTABLEKS                       R2 R3 K25 ["Copy"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R2
      100 SETTABLEKS                       R2 R1 K9 ["studioAction"]
      102 GETUPVAL                         R2 1
      103 SETTABLEKS                       R2 R1 K10 ["isEnabled"]
      105 GETUPVAL                         R2 2
      106 GETTABLEKS                       R2 R2 K26 ["copySelectedNodesAsync"]
      108 SETTABLEKS                       R2 R1 K11 ["activate"]
      110 SETTABLEKS                       R1 R0 K5 ["copy"]
      112 DUPTABLE                         R1 K12 [{"studioAction", "isEnabled", "activate"}]
      113 GETUPVAL                         R3 0
      114 JUMPIFNOT                        R3 ; [+4]
      115 GETUPVAL                         R3 0
      116 GETTABLEKS                       R2 R3 K27 ["Cut"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R2
      120 SETTABLEKS                       R2 R1 K9 ["studioAction"]
      122 GETUPVAL                         R2 1
      123 SETTABLEKS                       R2 R1 K10 ["isEnabled"]
      125 GETUPVAL                         R2 2
      126 GETTABLEKS                       R2 R2 K28 ["cutSelectedNodesAsync"]
      128 SETTABLEKS                       R2 R1 K11 ["activate"]
      130 SETTABLEKS                       R1 R0 K6 ["cut"]
      132 DUPTABLE                         R1 K18 [{["studioAction"], ["isEnabled"] = True, ["activate"]}]
      133 GETUPVAL                         R3 0
      134 JUMPIFNOT                        R3 ; [+4]
      135 GETUPVAL                         R3 0
      136 GETTABLEKS                       R2 R3 K29 ["Paste"]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R2
      140 SETTABLEKS                       R2 R1 K9 ["studioAction"]
      142 GETUPVAL                         R2 2
      143 GETTABLEKS                       R2 R2 K30 ["pasteNodesAsync"]
      145 SETTABLEKS                       R2 R1 K11 ["activate"]
      147 SETTABLEKS                       R1 R0 K7 ["paste"]
      149 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R1 R1 K2 ["onlySelectingNodes"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["useContext"]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K3 ["ViewportRectContext"]
       22 GETTABLEKS                       R3 R3 K1 ["Context"]
       24 CALL                             R2 1 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R5 0 9
       35 MOVE                             R6 R1
       36 GETTABLEKS                       R7 R0 K5 ["removeSelectedNodesAsync"]
       38 GETTABLEKS                       R8 R0 K6 ["duplicateSelectedNodesAsync"]
       40 GETTABLEKS                       R9 R0 K7 ["selectAllNodesAsync"]
       42 GETTABLEKS                       R10 R0 K8 ["clearNodeSelectionAsync"]
       44 GETTABLEKS                       R11 R0 K9 ["copySelectedNodesAsync"]
       46 GETTABLEKS                       R12 R0 K10 ["cutSelectedNodesAsync"]
       48 GETTABLEKS                       R13 R0 K11 ["pasteNodesAsync"]
       50 GETTABLEKS                       R14 R2 K12 ["frameSelection"]
       52 SETLIST                          R5 R6 9 [1]
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["NativeGraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["NodesSelectedContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K13 [Enum]
       37 GETTABLEKS                       R5 R5 K14 ["StudioAction"]
       39 DUPCLOSURE                       R6 K15 [PROTO_0]
       40 CAPTURE                          VAL R5
       41 DUPCLOSURE                       R7 K16 [PROTO_2]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 RETURN                           R7 1
