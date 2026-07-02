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
       16 LOADK                            R6 K8 ["--knowledge-tutorials-SectionButton_%*"]
       17 GETTABLEKS                       R8 R0 K9 ["index"]
       19 NAMECALL                         R6 R6 K10 ["format"]
       21 CALL                             R6 2 1
       22 MOVE                             R5 R6
       23 SETTABLEKS                       R5 R4 K4 ["testId"]
       25 GETTABLEKS                       R5 R0 K9 ["index"]
       27 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       29 SETTABLEKS                       R1 R4 K6 ["onActivated"]
       31 DUPTABLE                         R5 K12 [{"Background"}]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K1 ["createElement"]
       35 GETUPVAL                         R7 1
       36 DUPTABLE                         R8 K13 [{"tag"}]
       37 LOADK                            R10 K14 ["row gap-medium padding-small align-x-left align-y-center size-full radius-small bg-surface-100"]
       38 GETTABLEKS                       R12 R0 K15 ["isSelected"]
       40 JUMPIFNOT                        R12 ; [+2]
       41 LOADK                            R11 K16 [" stroke-thick stroke-default"]
       42 JUMP                             ; [+1]
       43 LOADK                            R11 K17 [""]
       44 CONCAT                           R9 R10 R11
       45 SETTABLEKS                       R9 R8 K2 ["tag"]
       47 DUPTABLE                         R9 K20 [{"Number", "Title"}]
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R10 R10 K1 ["createElement"]
       51 GETUPVAL                         R11 2
       52 DUPTABLE                         R12 K24 [{["tag"] = "size-800-800 text-body-medium text-align-x-center radius-circle bg-action-standard content-action-standard", ["Text"], ["LayoutOrder"] = 0}]
       53 GETTABLEKS                       R15 R0 K9 ["index"]
       55 ADDK                             R14 R15 K25 [1]
       56 FASTCALL1                        TOSTRING R14 ; [+2]
       57 GETIMPORT                        R13 K27 [tostring]
       59 CALL                             R13 1 1
       60 SETTABLEKS                       R13 R12 K22 ["Text"]
       62 CALL                             R10 2 1
       63 SETTABLEKS                       R10 R9 K18 ["Number"]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K1 ["createElement"]
       68 GETUPVAL                         R11 2
       69 DUPTABLE                         R12 K29 [{["tag"] = "auto-xy text-body-medium text-wrap text-align-x-left content-action-standard", ["Text"], ["LayoutOrder"] = 1}]
       70 GETTABLEKS                       R13 R0 K30 ["title"]
       72 SETTABLEKS                       R13 R12 K22 ["Text"]
       74 CALL                             R10 2 1
       75 SETTABLEKS                       R10 R9 K19 ["Title"]
       77 CALL                             R6 3 1
       78 SETTABLEKS                       R6 R5 K11 ["Background"]
       80 CALL                             R2 3 -1
       81 RETURN                           R2 -1

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
       64 LOADK                            R11 K20 ["Section_%*"]
       65 MOVE                             R13 R8
       66 NAMECALL                         R11 R11 K21 ["format"]
       68 CALL                             R11 2 1
       69 MOVE                             R10 R11
       70 GETUPVAL                         R11 2
       71 GETTABLEKS                       R11 R11 K8 ["createElement"]
       73 GETUPVAL                         R12 3
       74 DUPTABLE                         R13 K22 [{"title", "index", "isSelected", "onSectionClicked"}]
       75 GETTABLEKS                       R14 R9 K9 ["title"]
       77 JUMPIF                           R14 ; [+8]
       78 LOADK                            R16 K15 ["Plugin"]
       79 LOADK                            R17 K23 ["SectionInfo"]
       80 DUPTABLE                         R18 K24 [{"index"}]
       81 SETTABLEKS                       R8 R18 K10 ["index"]
       83 NAMECALL                         R14 R2 K17 ["getText"]
       85 CALL                             R14 4 1
       86 SETTABLEKS                       R14 R13 K9 ["title"]
       88 SETTABLEKS                       R8 R13 K10 ["index"]
       90 GETTABLEKS                       R15 R0 K18 ["currentSectionIndex"]
       92 JUMPIFEQ                         R15 R8 ; [+2]
       94 LOADB                            R14 0 +1
       95 LOADB                            R14 1
       96 SETTABLEKS                       R14 R13 K12 ["isSelected"]
       98 GETTABLEKS                       R14 R0 K13 ["onSectionClicked"]
      100 SETTABLEKS                       R14 R13 K13 ["onSectionClicked"]
      102 CALL                             R11 2 1
      103 SETTABLE                         R11 R4 R10
      104 FORGLOOP                         R5 2 ; [-41]
      106 GETUPVAL                         R5 2
      107 GETTABLEKS                       R5 R5 K8 ["createElement"]
      109 GETUPVAL                         R6 4
      110 DUPTABLE                         R7 K27 [{["tag"] = "col align-x-center gap-medium size-full bg-surface-100"}]
      111 DUPTABLE                         R8 K30 [{"Title", "ScrollView"}]
      112 GETUPVAL                         R9 2
      113 GETTABLEKS                       R9 R9 K8 ["createElement"]
      115 GETUPVAL                         R10 5
      116 DUPTABLE                         R11 K34 [{["LayoutOrder"] = 0, ["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left"}]
      117 LOADK                            R14 K15 ["Plugin"]
      118 LOADK                            R15 K35 ["TableOfContents"]
      119 NAMECALL                         R12 R2 K17 ["getText"]
      121 CALL                             R12 3 1
      122 SETTABLEKS                       R12 R11 K32 ["Text"]
      124 CALL                             R9 2 1
      125 SETTABLEKS                       R9 R8 K28 ["Title"]
      127 GETUPVAL                         R9 2
      128 GETTABLEKS                       R9 R9 K8 ["createElement"]
      130 GETUPVAL                         R10 6
      131 DUPTABLE                         R11 K40 [{["LayoutOrder"] = 1, ["tag"] = "fill size-full-0", ["scroll"], ["layout"]}]
      132 DUPTABLE                         R12 K44 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
      133 GETIMPORT                        R13 K48 [Enum.AutomaticSize.Y]
      135 SETTABLEKS                       R13 R12 K41 ["AutomaticCanvasSize"]
      137 GETIMPORT                        R13 K49 [Enum.ScrollingDirection.Y]
      139 SETTABLEKS                       R13 R12 K42 ["ScrollingDirection"]
      141 GETIMPORT                        R13 K52 [UDim2.new]
      143 CALL                             R13 0 1
      144 SETTABLEKS                       R13 R12 K43 ["CanvasSize"]
      146 SETTABLEKS                       R12 R11 K38 ["scroll"]
      148 DUPTABLE                         R12 K58 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      149 GETIMPORT                        R13 K59 [Enum.SortOrder.LayoutOrder]
      151 SETTABLEKS                       R13 R12 K53 ["SortOrder"]
      153 GETIMPORT                        R13 K61 [Enum.FillDirection.Vertical]
      155 SETTABLEKS                       R13 R12 K54 ["FillDirection"]
      157 GETIMPORT                        R13 K63 [Enum.HorizontalAlignment.Center]
      159 SETTABLEKS                       R13 R12 K55 ["HorizontalAlignment"]
      161 GETIMPORT                        R13 K65 [Enum.VerticalAlignment.Top]
      163 SETTABLEKS                       R13 R12 K56 ["VerticalAlignment"]
      165 GETIMPORT                        R13 K67 [UDim.new]
      167 LOADN                            R14 0
      168 GETTABLEKS                       R15 R3 K68 ["Gap"]
      170 GETTABLEKS                       R15 R15 K69 ["Small"]
      172 CALL                             R13 2 1
      173 SETTABLEKS                       R13 R12 K57 ["Padding"]
      175 SETTABLEKS                       R12 R11 K39 ["layout"]
      177 MOVE                             R12 R4
      178 CALL                             R9 3 1
      179 SETTABLEKS                       R9 R8 K29 ["ScrollView"]
      181 CALL                             R5 3 -1
      182 RETURN                           R5 -1

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
