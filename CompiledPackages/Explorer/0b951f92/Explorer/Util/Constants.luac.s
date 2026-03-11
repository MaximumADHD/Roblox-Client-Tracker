MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Flags"]
       23 GETTABLEKS                       R4 R5 K10 ["getFFlagExplorerFixBlurryTextHopefully"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Flags"]
       30 GETTABLEKS                       R5 R6 K11 ["getFFlagExplorerUseBuilderSans"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R7 R1 K12 ["Style"]
       35 GETTABLEKS                       R6 R7 K13 ["Themes"]
       37 GETTABLEKS                       R5 R6 K14 ["FoundationDark"]
       39 MOVE                             R6 R5
       40 LOADN                            R7 1
       41 CALL                             R6 1 1
       42 NEWTABLE                         R7 32 0
       44 LOADK                            R8 K15 ["<<<NIL>>>"]
       45 SETTABLEKS                       R8 R7 K16 ["nilId"]
       47 LOADK                            R8 K17 ["<<<ROOT>>>"]
       48 SETTABLEKS                       R8 R7 K18 ["rootId"]
       50 GETIMPORT                        R8 K20 [game]
       52 LOADK                            R10 K21 ["ExplorerScrollRate"]
       53 LOADN                            R11 3
       54 NAMECALL                         R8 R8 K22 ["DefineFastInt"]
       56 CALL                             R8 3 1
       57 SETTABLEKS                       R8 R7 K23 ["explorerScrollRate"]
       59 LOADN                            R8 20
       60 SETTABLEKS                       R8 R7 K24 ["explorerRowHeight"]
       62 LOADN                            R8 12
       63 SETTABLEKS                       R8 R7 K25 ["indentWidth"]
       65 LOADN                            R8 1
       66 SETTABLEKS                       R8 R7 K26 ["indentLineWidth"]
       68 LOADN                            R8 16
       69 SETTABLEKS                       R8 R7 K27 ["iconSize"]
       71 LOADN                            R8 16
       72 SETTABLEKS                       R8 R7 K28 ["fieldSize"]
       74 LOADN                            R8 4
       75 SETTABLEKS                       R8 R7 K29 ["minNameLabelWidth"]
       77 LOADN                            R8 20
       78 SETTABLEKS                       R8 R7 K30 ["searchBarHeight"]
       80 LOADN                            R8 4
       81 SETTABLEKS                       R8 R7 K31 ["searchBarPadding"]
       83 LOADN                            R8 1
       84 SETTABLEKS                       R8 R7 K32 ["searchHeaderBottomBorderWidth"]
       86 GETTABLEKS                       R10 R7 K30 ["searchBarHeight"]
       88 GETTABLEKS                       R12 R7 K31 ["searchBarPadding"]
       90 MULK                             R11 R12 K33 [2]
       91 ADD                              R9 R10 R11
       92 GETTABLEKS                       R10 R7 K32 ["searchHeaderBottomBorderWidth"]
       94 ADD                              R8 R9 R10
       95 SETTABLEKS                       R8 R7 K34 ["minSearchHeaderHeight"]
       97 MOVE                             R8 R4
       98 CALL                             R8 0 1
       99 JUMPIFNOT                        R8 ; [+21]
      100 GETTABLEKS                       R10 R6 K35 ["Typography"]
      102 GETTABLEKS                       R9 R10 K36 ["BodySmall"]
      104 GETTABLEKS                       R8 R9 K37 ["Font"]
      106 SETTABLEKS                       R8 R7 K38 ["defaultFont"]
      108 GETTABLEKS                       R11 R6 K35 ["Typography"]
      110 GETTABLEKS                       R10 R11 K36 ["BodySmall"]
      112 GETTABLEKS                       R9 R10 K39 ["FontSize"]
      114 FASTCALL1                        MATH_ROUND R9 ; [+2]
      115 GETIMPORT                        R8 K42 [math.round]
      117 CALL                             R8 1 1
      118 SETTABLEKS                       R8 R7 K43 ["standardTextSize"]
      120 JUMP                             ; [+12]
      121 GETIMPORT                        R8 K46 [Enum.Font.SourceSans]
      123 SETTABLEKS                       R8 R7 K38 ["defaultFont"]
      125 MOVE                             R9 R3
      126 CALL                             R9 0 1
      127 JUMPIFNOT                        R9 ; [+2]
      128 LOADN                            R8 17
      129 JUMP                             ; [+1]
      130 LOADK                            R8 K47 [17.598]
      131 SETTABLEKS                       R8 R7 K43 ["standardTextSize"]
      133 LOADN                            R8 6
      134 SETTABLEKS                       R8 R7 K48 ["sessionViewScrollBarWidth"]
      136 LOADN                            R8 2
      137 SETTABLEKS                       R8 R7 K49 ["sessionViewScrollBarPadding"]
      139 GETIMPORT                        R8 K52 [table.freeze]
      141 DUPTABLE                         R9 K54 [{"datum"}]
      142 GETIMPORT                        R10 K52 [table.freeze]
      144 DUPTABLE                         R11 K62 [{"id", "name", "className", "parentId", "hasChildren", "fieldValues", "isGhost"}]
      145 GETTABLEKS                       R12 R7 K18 ["rootId"]
      147 SETTABLEKS                       R12 R11 K55 ["id"]
      149 LOADK                            R12 K63 ["DataModel"]
      150 SETTABLEKS                       R12 R11 K56 ["name"]
      152 LOADK                            R12 K63 ["DataModel"]
      153 SETTABLEKS                       R12 R11 K57 ["className"]
      155 LOADNIL                          R12
      156 SETTABLEKS                       R12 R11 K58 ["parentId"]
      158 LOADB                            R12 1
      159 SETTABLEKS                       R12 R11 K59 ["hasChildren"]
      161 LOADNIL                          R12
      162 SETTABLEKS                       R12 R11 K60 ["fieldValues"]
      164 LOADNIL                          R12
      165 SETTABLEKS                       R12 R11 K61 ["isGhost"]
      167 CALL                             R10 1 1
      168 SETTABLEKS                       R10 R9 K53 ["datum"]
      170 CALL                             R8 1 1
      171 SETTABLEKS                       R8 R7 K64 ["emptyDataModelNode"]
      173 RETURN                           R7 1
