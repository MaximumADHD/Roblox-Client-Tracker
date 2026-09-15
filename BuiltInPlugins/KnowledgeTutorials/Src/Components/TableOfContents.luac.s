PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSectionClicked"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["index"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 MOVE                             R4 R0
        8 SETLIST                          R3 R4 1 [1]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["createElement"]
       14 GETUPVAL                         R3 1
       15 DUPTABLE                         R4 K7 [{["tag"] = "size-full-0 auto-y padding-xsmall bg-surface-100", ["testId"], ["LayoutOrder"], ["onActivated"]}]
       16 LOADK                            R5 K8 ["--knowledge-tutorials-SectionButton_%*"]
       17 GETTABLEKS                       R7 R0 K9 ["index"]
       19 NAMECALL                         R5 R5 K10 ["format"]
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K4 ["testId"]
       24 GETTABLEKS                       R5 R0 K9 ["index"]
       26 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       28 SETTABLEKS                       R1 R4 K6 ["onActivated"]
       30 DUPTABLE                         R5 K12 [{"Background"}]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K1 ["createElement"]
       34 GETUPVAL                         R7 1
       35 DUPTABLE                         R8 K13 [{"tag"}]
       36 LOADK                            R10 K14 ["row gap-medium padding-small align-x-left align-y-center size-full radius-small bg-surface-100"]
       37 GETTABLEKS                       R12 R0 K15 ["isSelected"]
       39 JUMPIFNOT                        R12 ; [+2]
       40 LOADK                            R11 K16 [" stroke-thick stroke-default"]
       41 JUMP                             ; [+1]
       42 LOADK                            R11 K17 [""]
       43 CONCAT                           R9 R10 R11
       44 SETTABLEKS                       R9 R8 K2 ["tag"]
       46 DUPTABLE                         R9 K20 [{"Number", "Title"}]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K1 ["createElement"]
       50 GETUPVAL                         R11 2
       51 DUPTABLE                         R12 K24 [{["tag"] = "size-800-800 text-body-medium text-align-x-center radius-circle bg-action-standard content-action-standard", ["Text"], ["LayoutOrder"] = 0}]
       52 GETTABLEKS                       R15 R0 K9 ["index"]
       54 ADDK                             R14 R15 K25 [1]
       55 FASTCALL1                        TOSTRING R14 ; [+2]
       56 GETIMPORT                        R13 K27 [tostring]
       58 CALL                             R13 1 1
       59 SETTABLEKS                       R13 R12 K22 ["Text"]
       61 CALL                             R10 2 1
       62 SETTABLEKS                       R10 R9 K18 ["Number"]
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K1 ["createElement"]
       67 GETUPVAL                         R11 2
       68 DUPTABLE                         R12 K29 [{["tag"] = "auto-xy text-body-medium text-wrap text-align-x-left content-action-standard", ["Text"], ["LayoutOrder"] = 1}]
       69 GETTABLEKS                       R13 R0 K30 ["title"]
       71 SETTABLEKS                       R13 R12 K22 ["Text"]
       73 CALL                             R10 2 1
       74 SETTABLEKS                       R10 R9 K19 ["Title"]
       76 CALL                             R6 3 1
       77 SETTABLEKS                       R6 R5 K11 ["Background"]
       79 CALL                             R2 3 -1
       80 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["visible"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K1 ["tutorialData"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 0
       11 NAMECALL                         R2 R2 K2 ["use"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["Hooks"]
       17 GETTABLEKS                       R3 R3 K4 ["useTokens"]
       19 CALL                             R3 0 1
       20 NEWTABLE                         R4 0 0
       22 GETTABLEKS                       R6 R1 K5 ["home"]
       24 GETTABLEKS                       R6 R6 K6 ["ast"]
       26 GETTABLEKS                       R6 R6 K7 ["children"]
       28 LENGTH                           R5 R6
       29 LOADN                            R6 1
       30 JUMPIFNOTLT                      R6 R5 ; [+28]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K8 ["createElement"]
       35 GETUPVAL                         R6 3
       36 DUPTABLE                         R7 K14 [{["title"], ["index"] = 0, ["isSelected"], ["onSectionClicked"]}]
       37 LOADK                            R10 K15 ["Plugin"]
       38 LOADK                            R11 K16 ["Home"]
       39 NAMECALL                         R8 R2 K17 ["getText"]
       41 CALL                             R8 3 1
       42 SETTABLEKS                       R8 R7 K9 ["title"]
       44 GETTABLEKS                       R9 R0 K18 ["currentSectionIndex"]
       46 JUMPIFEQKN                       R9 K11 [0] ; [+2]
       48 LOADB                            R8 0 +1
       49 LOADB                            R8 1
       50 SETTABLEKS                       R8 R7 K12 ["isSelected"]
       52 GETTABLEKS                       R8 R0 K13 ["onSectionClicked"]
       54 SETTABLEKS                       R8 R7 K13 ["onSectionClicked"]
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R4 K16 ["Home"]
       59 GETTABLEKS                       R5 R1 K19 ["sections"]
       61 LOADNIL                          R6
       62 LOADNIL                          R7
       63 FORGPREP                         R5
       64 LOADK                            R10 K20 ["Section_%*"]
       65 MOVE                             R12 R8
       66 NAMECALL                         R10 R10 K21 ["format"]
       68 CALL                             R10 2 1
       69 GETUPVAL                         R11 2
       70 GETTABLEKS                       R11 R11 K8 ["createElement"]
       72 GETUPVAL                         R12 3
       73 DUPTABLE                         R13 K22 [{"title", "index", "isSelected", "onSectionClicked"}]
       74 GETTABLEKS                       R14 R9 K9 ["title"]
       76 JUMPIF                           R14 ; [+8]
       77 LOADK                            R16 K15 ["Plugin"]
       78 LOADK                            R17 K23 ["SectionInfo"]
       79 DUPTABLE                         R18 K24 [{"index"}]
       80 SETTABLEKS                       R8 R18 K10 ["index"]
       82 NAMECALL                         R14 R2 K17 ["getText"]
       84 CALL                             R14 4 1
       85 SETTABLEKS                       R14 R13 K9 ["title"]
       87 SETTABLEKS                       R8 R13 K10 ["index"]
       89 GETTABLEKS                       R15 R0 K18 ["currentSectionIndex"]
       91 JUMPIFEQ                         R15 R8 ; [+2]
       93 LOADB                            R14 0 +1
       94 LOADB                            R14 1
       95 SETTABLEKS                       R14 R13 K12 ["isSelected"]
       97 GETTABLEKS                       R14 R0 K13 ["onSectionClicked"]
       99 SETTABLEKS                       R14 R13 K13 ["onSectionClicked"]
      101 CALL                             R11 2 1
      102 SETTABLE                         R11 R4 R10
      103 FORGLOOP                         R5 2 ; [-40]
      105 GETUPVAL                         R5 2
      106 GETTABLEKS                       R5 R5 K8 ["createElement"]
      108 GETUPVAL                         R6 4
      109 DUPTABLE                         R7 K27 [{["tag"] = "col align-x-center gap-medium size-full bg-surface-100"}]
      110 DUPTABLE                         R8 K30 [{"Title", "ScrollView"}]
      111 GETUPVAL                         R9 2
      112 GETTABLEKS                       R9 R9 K8 ["createElement"]
      114 GETUPVAL                         R10 5
      115 DUPTABLE                         R11 K34 [{["LayoutOrder"] = 0, ["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left"}]
      116 LOADK                            R14 K15 ["Plugin"]
      117 LOADK                            R15 K35 ["TableOfContents"]
      118 NAMECALL                         R12 R2 K17 ["getText"]
      120 CALL                             R12 3 1
      121 SETTABLEKS                       R12 R11 K32 ["Text"]
      123 CALL                             R9 2 1
      124 SETTABLEKS                       R9 R8 K28 ["Title"]
      126 GETUPVAL                         R9 2
      127 GETTABLEKS                       R9 R9 K8 ["createElement"]
      129 GETUPVAL                         R10 6
      130 DUPTABLE                         R11 K40 [{["LayoutOrder"] = 1, ["tag"] = "fill size-full-0", ["scroll"], ["layout"]}]
      131 DUPTABLE                         R12 K44 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
      132 GETIMPORT                        R13 K48 [Enum.AutomaticSize.Y]
      134 SETTABLEKS                       R13 R12 K41 ["AutomaticCanvasSize"]
      136 GETIMPORT                        R13 K49 [Enum.ScrollingDirection.Y]
      138 SETTABLEKS                       R13 R12 K42 ["ScrollingDirection"]
      140 GETIMPORT                        R13 K52 [UDim2.new]
      142 CALL                             R13 0 1
      143 SETTABLEKS                       R13 R12 K43 ["CanvasSize"]
      145 SETTABLEKS                       R12 R11 K38 ["scroll"]
      147 DUPTABLE                         R12 K58 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      148 GETIMPORT                        R13 K59 [Enum.SortOrder.LayoutOrder]
      150 SETTABLEKS                       R13 R12 K53 ["SortOrder"]
      152 GETIMPORT                        R13 K61 [Enum.FillDirection.Vertical]
      154 SETTABLEKS                       R13 R12 K54 ["FillDirection"]
      156 GETIMPORT                        R13 K63 [Enum.HorizontalAlignment.Center]
      158 SETTABLEKS                       R13 R12 K55 ["HorizontalAlignment"]
      160 GETIMPORT                        R13 K65 [Enum.VerticalAlignment.Top]
      162 SETTABLEKS                       R13 R12 K56 ["VerticalAlignment"]
      164 GETIMPORT                        R13 K67 [UDim.new]
      166 LOADN                            R14 0
      167 GETTABLEKS                       R15 R3 K68 ["Gap"]
      169 GETTABLEKS                       R15 R15 K69 ["Small"]
      171 CALL                             R13 2 1
      172 SETTABLEKS                       R13 R12 K57 ["Padding"]
      174 SETTABLEKS                       R12 R11 K39 ["layout"]
      176 MOVE                             R12 R4
      177 CALL                             R9 3 1
      178 SETTABLEKS                       R9 R8 K29 ["ScrollView"]
      180 CALL                             R5 3 -1
      181 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETTABLEKS                       R7 R4 K14 ["View"]
       41 GETTABLEKS                       R8 R4 K15 ["ScrollView"]
       43 GETTABLEKS                       R9 R4 K16 ["Text"]
       45 DUPCLOSURE                       R10 K17 [PROTO_1]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R9
       49 DUPCLOSURE                       R11 K18 [PROTO_2]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R10
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R8
       57 RETURN                           R11 1
