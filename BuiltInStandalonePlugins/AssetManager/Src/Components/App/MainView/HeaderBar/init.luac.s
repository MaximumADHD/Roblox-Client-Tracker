PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 2 0
        6 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        8 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["Tag"]
       13 LOADK                            R5 K3 ["X-Row X-Pad X-Left X-Middle grow am-size-headertitle-full"]
       14 SETTABLE                         R5 R3 R4
       15 NEWTABLE                         R4 0 2
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K0 ["createElement"]
       20 GETUPVAL                         R6 2
       21 NEWTABLE                         R7 2 0
       23 GETTABLEKS                       R8 R0 K4 ["Image"]
       25 SETTABLEKS                       R8 R7 K4 ["Image"]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R8 R9 K2 ["Tag"]
       30 LOADK                            R9 K5 ["am-size-icon-xlarge radius-circle X-Pad"]
       31 SETTABLE                         R9 R7 R8
       32 CALL                             R5 2 1
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K0 ["createElement"]
       36 GETUPVAL                         R7 3
       37 NEWTABLE                         R8 4 0
       39 GETTABLEKS                       R9 R0 K6 ["Text"]
       41 SETTABLEKS                       R9 R8 K6 ["Text"]
       43 GETIMPORT                        R9 K10 [Enum.TextTruncate.AtEnd]
       45 SETTABLEKS                       R9 R8 K8 ["TextTruncate"]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R9 R10 K2 ["Tag"]
       50 LOADK                            R10 K11 ["Title X-Fit X-Pad"]
       51 SETTABLE                         R10 R8 R9
       52 CALL                             R6 2 -1
       53 SETLIST                          R4 R5 -1 [1]
       55 CALL                             R1 3 -1
       56 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R1 R0 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 LOADK                            R5 K2 [""]
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 4
       16 CALL                             R6 0 1
       17 GETUPVAL                         R7 5
       18 CALL                             R7 0 1
       19 GETUPVAL                         R8 6
       20 CALL                             R8 0 1
       21 NEWCLOSURE                       R9 P0
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R5
       24 JUMPIFEQKS                       R4 K2 [""] ; [+7]
       26 MOVE                             R12 R6
       27 NAMECALL                         R10 R3 K3 ["getThumbnailUriForScope"]
       29 CALL                             R10 2 1
       30 JUMPIFEQ                         R4 R10 ; [+6]
       32 MOVE                             R12 R6
       33 MOVE                             R13 R9
       34 NAMECALL                         R10 R3 K4 ["getThumbnailForScopeAsync"]
       36 CALL                             R10 3 0
       37 GETTABLEKS                       R11 R7 K5 ["ShowSearchOptions"]
       39 JUMPIFNOT                        R11 ; [+6]
       40 LOADK                            R12 K6 ["SearchOptions"]
       41 LOADK                            R13 K7 ["SearchResults"]
       42 NAMECALL                         R10 R1 K8 ["getText"]
       44 CALL                             R10 3 1
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R10 R6 K9 ["Name"]
       48 GETTABLEKS                       R12 R7 K5 ["ShowSearchOptions"]
       50 JUMPIFNOT                        R12 ; [+10]
       51 GETUPVAL                         R12 7
       52 GETTABLEKS                       R11 R12 K10 ["get"]
       54 GETUPVAL                         R14 7
       55 GETTABLEKS                       R13 R14 K11 ["AvailableImages"]
       57 GETTABLEKS                       R12 R13 K12 ["Search"]
       59 CALL                             R11 1 1
       60 JUMP                             ; [+51]
       61 JUMPIFEQKS                       R4 K2 [""] ; [+3]
       63 MOVE                             R11 R4
       64 JUMP                             ; [+47]
       65 GETTABLEKS                       R12 R6 K13 ["Type"]
       67 GETUPVAL                         R15 8
       68 GETTABLEKS                       R14 R15 K14 ["ScopeType"]
       70 GETTABLEKS                       R13 R14 K15 ["User"]
       72 JUMPIFNOTEQ                      R12 R13 ; [+11]
       74 GETUPVAL                         R12 7
       75 GETTABLEKS                       R11 R12 K10 ["get"]
       77 GETUPVAL                         R14 7
       78 GETTABLEKS                       R13 R14 K11 ["AvailableImages"]
       80 GETTABLEKS                       R12 R13 K16 ["UserLarge"]
       82 CALL                             R11 1 1
       83 JUMP                             ; [+28]
       84 GETTABLEKS                       R12 R6 K13 ["Type"]
       86 GETUPVAL                         R15 8
       87 GETTABLEKS                       R14 R15 K14 ["ScopeType"]
       89 GETTABLEKS                       R13 R14 K17 ["Group"]
       91 JUMPIFNOTEQ                      R12 R13 ; [+11]
       93 GETUPVAL                         R12 7
       94 GETTABLEKS                       R11 R12 K10 ["get"]
       96 GETUPVAL                         R14 7
       97 GETTABLEKS                       R13 R14 K11 ["AvailableImages"]
       99 GETTABLEKS                       R12 R13 K18 ["GroupLarge"]
      101 CALL                             R11 1 1
      102 JUMP                             ; [+9]
      103 GETUPVAL                         R12 7
      104 GETTABLEKS                       R11 R12 K10 ["get"]
      106 GETUPVAL                         R14 7
      107 GETTABLEKS                       R13 R14 K11 ["AvailableImages"]
      109 GETTABLEKS                       R12 R13 K19 ["Universe"]
      111 CALL                             R11 1 1
      112 GETUPVAL                         R13 9
      113 GETTABLEKS                       R12 R13 K20 ["createElement"]
      115 GETUPVAL                         R14 10
      116 GETTABLEKS                       R13 R14 K21 ["View"]
      118 DUPTABLE                         R14 K24 [{"LayoutOrder", "tag"}]
      119 GETTABLEKS                       R15 R0 K22 ["LayoutOrder"]
      121 SETTABLEKS                       R15 R14 K22 ["LayoutOrder"]
      123 LOADK                            R15 K25 ["padding-left-xxsmall size-full-1000 align-x-left align-y-center row data-testid=header-bar"]
      124 SETTABLEKS                       R15 R14 K23 ["tag"]
      126 DUPTABLE                         R15 K30 [{"SidebarButtonPadding", "NavButtons", "ScopeTitleContainer", "Options"}]
      127 JUMPIF                           R8 ; [+12]
      128 GETUPVAL                         R17 9
      129 GETTABLEKS                       R16 R17 K20 ["createElement"]
      131 GETUPVAL                         R18 10
      132 GETTABLEKS                       R17 R18 K21 ["View"]
      134 DUPTABLE                         R18 K31 [{"tag"}]
      135 LOADK                            R19 K32 ["TopSidebarButtonPadding"]
      136 SETTABLEKS                       R19 R18 K23 ["tag"]
      138 CALL                             R16 2 1
      139 JUMP                             ; [+1]
      140 LOADNIL                          R16
      141 SETTABLEKS                       R16 R15 K26 ["SidebarButtonPadding"]
      143 GETTABLEKS                       R17 R7 K5 ["ShowSearchOptions"]
      145 JUMPIF                           R17 ; [+12]
      146 GETUPVAL                         R17 9
      147 GETTABLEKS                       R16 R17 K20 ["createElement"]
      149 GETUPVAL                         R17 11
      150 DUPTABLE                         R18 K33 [{"LayoutOrder"}]
      151 NAMECALL                         R19 R2 K34 ["getNextOrder"]
      153 CALL                             R19 1 1
      154 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      156 CALL                             R16 2 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R16
      159 SETTABLEKS                       R16 R15 K27 ["NavButtons"]
      161 GETUPVAL                         R17 9
      162 GETTABLEKS                       R16 R17 K20 ["createElement"]
      164 GETUPVAL                         R17 12
      165 DUPTABLE                         R18 K37 [{"LayoutOrder", "Text", "Image"}]
      166 NAMECALL                         R19 R2 K34 ["getNextOrder"]
      168 CALL                             R19 1 1
      169 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      171 SETTABLEKS                       R10 R18 K35 ["Text"]
      173 SETTABLEKS                       R11 R18 K36 ["Image"]
      175 CALL                             R16 2 1
      176 SETTABLEKS                       R16 R15 K28 ["ScopeTitleContainer"]
      178 GETUPVAL                         R17 9
      179 GETTABLEKS                       R16 R17 K20 ["createElement"]
      181 GETUPVAL                         R17 13
      182 DUPTABLE                         R18 K33 [{"LayoutOrder"}]
      183 NAMECALL                         R19 R2 K34 ["getNextOrder"]
      185 CALL                             R19 1 1
      186 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      188 CALL                             R16 2 1
      189 SETTABLEKS                       R16 R15 K29 ["Options"]
      191 CALL                             R12 3 -1
      192 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R6 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K10 ["Src"]
       39 GETTABLEKS                       R7 R8 K12 ["Util"]
       41 GETTABLEKS                       R6 R7 K13 ["Images"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K14 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K15 ["Localization"]
       48 GETTABLEKS                       R9 R3 K12 ["Util"]
       50 GETTABLEKS                       R8 R9 K16 ["LayoutOrderIterator"]
       52 GETTABLEKS                       R9 R3 K17 ["UI"]
       54 GETTABLEKS                       R10 R9 K18 ["Image"]
       56 GETTABLEKS                       R11 R9 K19 ["Pane"]
       58 GETTABLEKS                       R12 R9 K20 ["TextLabel"]
       60 GETIMPORT                        R13 K5 [require]
       62 GETIMPORT                        R15 K1 [script]
       64 GETTABLEKS                       R14 R15 K21 ["HeaderOptions"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K5 [require]
       69 GETIMPORT                        R16 K1 [script]
       71 GETTABLEKS                       R15 R16 K22 ["NavigationButtons"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K5 [require]
       76 GETTABLEKS                       R17 R0 K10 ["Src"]
       78 GETTABLEKS                       R16 R17 K23 ["Networking"]
       80 CALL                             R15 1 1
       81 GETTABLEKS                       R16 R1 K24 ["useState"]
       83 GETIMPORT                        R17 K5 [require]
       85 GETTABLEKS                       R20 R0 K10 ["Src"]
       87 GETTABLEKS                       R19 R20 K25 ["Hooks"]
       89 GETTABLEKS                       R18 R19 K26 ["useSearchInfo"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K5 [require]
       94 GETTABLEKS                       R21 R0 K10 ["Src"]
       96 GETTABLEKS                       R20 R21 K25 ["Hooks"]
       98 GETTABLEKS                       R19 R20 K27 ["useCurrentScope"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K5 [require]
      103 GETTABLEKS                       R22 R0 K10 ["Src"]
      105 GETTABLEKS                       R21 R22 K25 ["Hooks"]
      107 GETTABLEKS                       R20 R21 K28 ["useShowSidebar"]
      109 CALL                             R19 1 1
      110 DUPCLOSURE                       R20 K29 [PROTO_0]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R12
      115 DUPCLOSURE                       R21 K30 [PROTO_2]
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R13
      130 RETURN                           R21 1
