PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSectionClicked"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["index"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 MOVE                             R4 R0
        8 SETLIST                          R3 R4 1 [1]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K1 ["createElement"]
       14 GETUPVAL                         R3 1
       15 DUPTABLE                         R4 K6 [{"tag", "testId", "LayoutOrder", "onActivated"}]
       16 LOADK                            R5 K7 ["size-full-0 auto-y padding-xsmall bg-surface-100"]
       17 SETTABLEKS                       R5 R4 K2 ["tag"]
       19 LOADK                            R6 K8 ["--knowledge-tutorials-SectionButton_%*"]
       20 GETTABLEKS                       R8 R0 K9 ["index"]
       22 NAMECALL                         R6 R6 K10 ["format"]
       24 CALL                             R6 2 1
       25 MOVE                             R5 R6
       26 SETTABLEKS                       R5 R4 K3 ["testId"]
       28 GETTABLEKS                       R5 R0 K9 ["index"]
       30 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       32 SETTABLEKS                       R1 R4 K5 ["onActivated"]
       34 DUPTABLE                         R5 K12 [{"Background"}]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K1 ["createElement"]
       38 GETUPVAL                         R7 1
       39 DUPTABLE                         R8 K13 [{"tag"}]
       40 LOADK                            R10 K14 ["row gap-medium padding-small align-x-left align-y-center size-full radius-small bg-surface-100"]
       41 GETTABLEKS                       R12 R0 K15 ["isSelected"]
       43 JUMPIFNOT                        R12 ; [+2]
       44 LOADK                            R11 K16 [" stroke-thick stroke-default"]
       45 JUMP                             ; [+1]
       46 LOADK                            R11 K17 [""]
       47 CONCAT                           R9 R10 R11
       48 SETTABLEKS                       R9 R8 K2 ["tag"]
       50 DUPTABLE                         R9 K20 [{"Number", "Title"}]
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R10 R11 K1 ["createElement"]
       54 GETUPVAL                         R11 2
       55 DUPTABLE                         R12 K22 [{"tag", "Text", "LayoutOrder"}]
       56 LOADK                            R13 K23 ["text-body-medium size-800-800 text-align-x-center radius-circle bg-action-standard content-action-standard"]
       57 SETTABLEKS                       R13 R12 K2 ["tag"]
       59 GETTABLEKS                       R15 R0 K9 ["index"]
       61 ADDK                             R14 R15 K24 [1]
       62 FASTCALL1                        TOSTRING R14 ; [+2]
       63 GETIMPORT                        R13 K26 [tostring]
       65 CALL                             R13 1 1
       66 SETTABLEKS                       R13 R12 K21 ["Text"]
       68 LOADN                            R13 0
       69 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       71 CALL                             R10 2 1
       72 SETTABLEKS                       R10 R9 K18 ["Number"]
       74 GETUPVAL                         R11 0
       75 GETTABLEKS                       R10 R11 K1 ["createElement"]
       77 GETUPVAL                         R11 2
       78 DUPTABLE                         R12 K22 [{"tag", "Text", "LayoutOrder"}]
       79 LOADK                            R13 K27 ["text-body-medium auto-xy text-align-x-left text-wrap content-action-standard"]
       80 SETTABLEKS                       R13 R12 K2 ["tag"]
       82 GETTABLEKS                       R13 R0 K28 ["title"]
       84 SETTABLEKS                       R13 R12 K21 ["Text"]
       86 LOADN                            R13 1
       87 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K19 ["Title"]
       92 CALL                             R6 3 1
       93 SETTABLEKS                       R6 R5 K11 ["Background"]
       95 CALL                             R2 3 -1
       96 RETURN                           R2 -1

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
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K3 ["Hooks"]
       17 GETTABLEKS                       R3 R4 K4 ["useTokens"]
       19 CALL                             R3 0 1
       20 NEWTABLE                         R4 0 0
       22 GETTABLEKS                       R8 R1 K5 ["home"]
       24 GETTABLEKS                       R7 R8 K6 ["ast"]
       26 GETTABLEKS                       R6 R7 K7 ["children"]
       28 LENGTH                           R5 R6
       29 LOADN                            R6 1
       30 JUMPIFNOTLT                      R6 R5 ; [+31]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R5 R6 K8 ["createElement"]
       35 GETUPVAL                         R6 3
       36 DUPTABLE                         R7 K13 [{"title", "index", "isSelected", "onSectionClicked"}]
       37 LOADK                            R10 K14 ["Plugin"]
       38 LOADK                            R11 K15 ["Home"]
       39 NAMECALL                         R8 R2 K16 ["getText"]
       41 CALL                             R8 3 1
       42 SETTABLEKS                       R8 R7 K9 ["title"]
       44 LOADN                            R8 0
       45 SETTABLEKS                       R8 R7 K10 ["index"]
       47 GETTABLEKS                       R9 R0 K17 ["currentSectionIndex"]
       49 JUMPIFEQKN                       R9 K18 [0] ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 SETTABLEKS                       R8 R7 K11 ["isSelected"]
       55 GETTABLEKS                       R8 R0 K12 ["onSectionClicked"]
       57 SETTABLEKS                       R8 R7 K12 ["onSectionClicked"]
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R4 K15 ["Home"]
       62 GETTABLEKS                       R5 R1 K19 ["sections"]
       64 LOADNIL                          R6
       65 LOADNIL                          R7
       66 FORGPREP                         R5
       67 LOADK                            R11 K20 ["Section_%*"]
       68 MOVE                             R13 R8
       69 NAMECALL                         R11 R11 K21 ["format"]
       71 CALL                             R11 2 1
       72 MOVE                             R10 R11
       73 GETUPVAL                         R12 2
       74 GETTABLEKS                       R11 R12 K8 ["createElement"]
       76 GETUPVAL                         R12 3
       77 DUPTABLE                         R13 K13 [{"title", "index", "isSelected", "onSectionClicked"}]
       78 GETTABLEKS                       R14 R9 K9 ["title"]
       80 JUMPIF                           R14 ; [+8]
       81 LOADK                            R16 K14 ["Plugin"]
       82 LOADK                            R17 K22 ["SectionInfo"]
       83 DUPTABLE                         R18 K23 [{"index"}]
       84 SETTABLEKS                       R8 R18 K10 ["index"]
       86 NAMECALL                         R14 R2 K16 ["getText"]
       88 CALL                             R14 4 1
       89 SETTABLEKS                       R14 R13 K9 ["title"]
       91 SETTABLEKS                       R8 R13 K10 ["index"]
       93 GETTABLEKS                       R15 R0 K17 ["currentSectionIndex"]
       95 JUMPIFEQ                         R15 R8 ; [+2]
       97 LOADB                            R14 0 +1
       98 LOADB                            R14 1
       99 SETTABLEKS                       R14 R13 K11 ["isSelected"]
      101 GETTABLEKS                       R14 R0 K12 ["onSectionClicked"]
      103 SETTABLEKS                       R14 R13 K12 ["onSectionClicked"]
      105 CALL                             R11 2 1
      106 SETTABLE                         R11 R4 R10
      107 FORGLOOP                         R5 2 ; [-41]
      109 GETUPVAL                         R6 2
      110 GETTABLEKS                       R5 R6 K8 ["createElement"]
      112 GETUPVAL                         R6 4
      113 DUPTABLE                         R7 K25 [{"tag"}]
      114 LOADK                            R8 K26 ["col align-x-center gap-medium size-full bg-surface-100"]
      115 SETTABLEKS                       R8 R7 K24 ["tag"]
      117 DUPTABLE                         R8 K29 [{"Title", "ScrollView"}]
      118 GETUPVAL                         R10 2
      119 GETTABLEKS                       R9 R10 K8 ["createElement"]
      121 GETUPVAL                         R10 5
      122 DUPTABLE                         R11 K32 [{"LayoutOrder", "Text", "tag"}]
      123 LOADN                            R12 0
      124 SETTABLEKS                       R12 R11 K30 ["LayoutOrder"]
      126 LOADK                            R14 K14 ["Plugin"]
      127 LOADK                            R15 K33 ["TableOfContents"]
      128 NAMECALL                         R12 R2 K16 ["getText"]
      130 CALL                             R12 3 1
      131 SETTABLEKS                       R12 R11 K31 ["Text"]
      133 LOADK                            R12 K34 ["text-title-medium text-align-x-left size-full-0 text-wrap auto-y"]
      134 SETTABLEKS                       R12 R11 K24 ["tag"]
      136 CALL                             R9 2 1
      137 SETTABLEKS                       R9 R8 K27 ["Title"]
      139 GETUPVAL                         R10 2
      140 GETTABLEKS                       R9 R10 K8 ["createElement"]
      142 GETUPVAL                         R10 6
      143 DUPTABLE                         R11 K37 [{"LayoutOrder", "tag", "scroll", "layout"}]
      144 LOADN                            R12 1
      145 SETTABLEKS                       R12 R11 K30 ["LayoutOrder"]
      147 LOADK                            R12 K38 ["size-full-0 fill"]
      148 SETTABLEKS                       R12 R11 K24 ["tag"]
      150 DUPTABLE                         R12 K42 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
      151 GETIMPORT                        R13 K46 [Enum.AutomaticSize.Y]
      153 SETTABLEKS                       R13 R12 K39 ["AutomaticCanvasSize"]
      155 GETIMPORT                        R13 K47 [Enum.ScrollingDirection.Y]
      157 SETTABLEKS                       R13 R12 K40 ["ScrollingDirection"]
      159 GETIMPORT                        R13 K50 [UDim2.new]
      161 CALL                             R13 0 1
      162 SETTABLEKS                       R13 R12 K41 ["CanvasSize"]
      164 SETTABLEKS                       R12 R11 K35 ["scroll"]
      166 DUPTABLE                         R12 K56 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      167 GETIMPORT                        R13 K57 [Enum.SortOrder.LayoutOrder]
      169 SETTABLEKS                       R13 R12 K51 ["SortOrder"]
      171 GETIMPORT                        R13 K59 [Enum.FillDirection.Vertical]
      173 SETTABLEKS                       R13 R12 K52 ["FillDirection"]
      175 GETIMPORT                        R13 K61 [Enum.HorizontalAlignment.Center]
      177 SETTABLEKS                       R13 R12 K53 ["HorizontalAlignment"]
      179 GETIMPORT                        R13 K63 [Enum.VerticalAlignment.Top]
      181 SETTABLEKS                       R13 R12 K54 ["VerticalAlignment"]
      183 GETIMPORT                        R13 K65 [UDim.new]
      185 LOADN                            R14 0
      186 GETTABLEKS                       R16 R3 K66 ["Gap"]
      188 GETTABLEKS                       R15 R16 K67 ["Small"]
      190 CALL                             R13 2 1
      191 SETTABLEKS                       R13 R12 K55 ["Padding"]
      193 SETTABLEKS                       R12 R11 K36 ["layout"]
      195 MOVE                             R12 R4
      196 CALL                             R9 3 1
      197 SETTABLEKS                       R9 R8 K28 ["ScrollView"]
      199 CALL                             R5 3 -1
      200 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R6 K11 ["Foundation"]
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
