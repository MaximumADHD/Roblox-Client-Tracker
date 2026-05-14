PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Type"]
        2 GETTABLEKS                       R2 R2 K1 ["Value"]
        4 LOADK                            R3 K2 ["_"]
        5 GETTABLEKS                       R4 R0 K3 ["Id"]
        7 CONCAT                           R1 R2 R4
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["OnDeleteCreatorPill"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnSelectCreator"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["userGroupSearchRequest"]
        5 GETTABLEKS                       R4 R2 K2 ["Network"]
        7 GETTABLEKS                       R4 R4 K3 ["networkInterface"]
        9 MOVE                             R5 R0
       10 GETTABLEKS                       R6 R2 K4 ["manageableGroups"]
       12 CALL                             R3 3 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["OnSearchUpdate"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["debouncedUserGroupSearchRequest"]
       11 MOVE                             R4 R0
       12 GETTABLEKS                       R5 R2 K3 ["manageableGroups"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_5:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 SETTABLEKS                       R1 R0 K1 ["getKey"]
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K2 ["onClickCreatorPill"]
        7 NEWCLOSURE                       R1 P2
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["onSelectCreator"]
       11 GETUPVAL                         R1 0
       12 NEWCLOSURE                       R2 P3
       13 CAPTURE                          VAL R0
       14 GETUPVAL                         R3 1
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K4 ["debouncedUserGroupSearchRequest"]
       18 NEWCLOSURE                       R1 P4
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K5 ["updateUserSearch"]
       22 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["getManageableGroups"]
        4 GETTABLEKS                       R3 R1 K2 ["Network"]
        6 GETTABLEKS                       R3 R3 K3 ["networkInterface"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClickCreatorPill"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClickCreatorPill"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 NEWTABLE                         R3 0 0
        6 LOADN                            R4 0
        7 NEWTABLE                         R5 0 2
        9 GETTABLEKS                       R8 R1 K2 ["SelectedUsers"]
       11 GETTABLEKS                       R9 R1 K3 ["SelectedGroups"]
       13 SETLIST                          R5 R8 2 [1]
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 FORGPREP                         R5
       18 MOVE                             R10 R9
       19 LOADNIL                          R11
       20 LOADNIL                          R12
       21 FORGPREP                         R10
       22 GETTABLEKS                       R15 R0 K4 ["getKey"]
       24 MOVE                             R16 R14
       25 CALL                             R15 1 1
       26 GETTABLEKS                       R17 R14 K5 ["Index"]
       28 JUMPIFNOT                        R17 ; [+3]
       29 GETTABLEKS                       R16 R14 K5 ["Index"]
       31 JUMP                             ; [+1]
       32 MOVE                             R16 R4
       33 GETUPVAL                         R18 0
       34 CALL                             R18 0 1
       35 JUMPIFNOT                        R18 ; [+32]
       36 GETUPVAL                         R17 1
       37 GETTABLEKS                       R17 R17 K6 ["createElement"]
       39 GETUPVAL                         R18 2
       40 DUPTABLE                         R19 K12 [{"LayoutOrder", "CreatorId", "CreatorName", "CreatorType", "OnActivated"}]
       41 SETTABLEKS                       R16 R19 K7 ["LayoutOrder"]
       43 GETTABLEKS                       R20 R14 K13 ["Id"]
       45 SETTABLEKS                       R20 R19 K8 ["CreatorId"]
       47 GETTABLEKS                       R21 R14 K14 ["Name"]
       49 JUMPIFNOT                        R21 ; [+3]
       50 GETTABLEKS                       R20 R14 K14 ["Name"]
       52 JUMP                             ; [+1]
       53 LOADK                            R20 K15 [""]
       54 SETTABLEKS                       R20 R19 K9 ["CreatorName"]
       56 GETTABLEKS                       R20 R14 K16 ["Type"]
       58 SETTABLEKS                       R20 R19 K10 ["CreatorType"]
       60 NEWCLOSURE                       R20 P0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R16
       63 CAPTURE                          VAL R14
       64 SETTABLEKS                       R20 R19 K11 ["OnActivated"]
       66 CALL                             R17 2 1
       67 JUMP                             ; [+30]
       68 GETUPVAL                         R17 1
       69 GETTABLEKS                       R17 R17 K6 ["createElement"]
       71 LOADK                            R18 K17 ["TextButton"]
       72 NEWTABLE                         R19 4 0
       74 SETTABLEKS                       R16 R19 K7 ["LayoutOrder"]
       76 GETIMPORT                        R20 K20 [UDim2.fromOffset]
       78 LOADN                            R21 70
       79 LOADN                            R22 20
       80 CALL                             R20 2 1
       81 SETTABLEKS                       R20 R19 K21 ["Size"]
       83 GETTABLEKS                       R20 R14 K14 ["Name"]
       85 SETTABLEKS                       R20 R19 K22 ["Text"]
       87 GETUPVAL                         R20 1
       88 GETTABLEKS                       R20 R20 K23 ["Event"]
       90 GETTABLEKS                       R20 R20 K24 ["Activated"]
       92 NEWCLOSURE                       R21 P1
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R16
       95 CAPTURE                          VAL R14
       96 SETTABLE                         R21 R19 R20
       97 CALL                             R17 2 1
       98 SETTABLE                         R17 R3 R15
       99 ADDK                             R4 R4 K25 [1]
      100 FORGLOOP                         R10 2 ; [-79]
      102 FORGLOOP                         R5 2 ; [-85]
      104 GETUPVAL                         R5 3
      105 GETTABLEKS                       R5 R5 K26 ["new"]
      107 CALL                             R5 0 1
      108 GETUPVAL                         R6 1
      109 GETTABLEKS                       R6 R6 K6 ["createElement"]
      111 GETUPVAL                         R7 4
      112 DUPTABLE                         R8 K31 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      113 GETIMPORT                        R9 K34 [Enum.AutomaticSize.XY]
      115 SETTABLEKS                       R9 R8 K27 ["AutomaticSize"]
      117 GETIMPORT                        R9 K36 [Enum.HorizontalAlignment.Left]
      119 SETTABLEKS                       R9 R8 K28 ["HorizontalAlignment"]
      121 GETIMPORT                        R9 K39 [Enum.FillDirection.Vertical]
      123 SETTABLEKS                       R9 R8 K29 ["Layout"]
      125 GETTABLEKS                       R9 R1 K7 ["LayoutOrder"]
      127 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
      129 LOADN                            R9 6
      130 SETTABLEKS                       R9 R8 K30 ["Spacing"]
      132 DUPTABLE                         R9 K42 [{"LiveSearchBar", "SelectedPills"}]
      133 GETUPVAL                         R10 1
      134 GETTABLEKS                       R10 R10 K6 ["createElement"]
      136 GETUPVAL                         R11 5
      137 DUPTABLE                         R12 K50 [{"defaultTextKey", "GetKey", "LayoutOrder", "OnSelectItem", "results", "searchTerm", "updateSearch", "width"}]
      138 LOADK                            R13 K51 ["SearchBarCreatorAndGroupText"]
      139 SETTABLEKS                       R13 R12 K43 ["defaultTextKey"]
      141 GETTABLEKS                       R13 R0 K4 ["getKey"]
      143 SETTABLEKS                       R13 R12 K44 ["GetKey"]
      145 NAMECALL                         R13 R5 K52 ["getNextOrder"]
      147 CALL                             R13 1 1
      148 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      150 GETTABLEKS                       R13 R0 K53 ["onSelectCreator"]
      152 SETTABLEKS                       R13 R12 K45 ["OnSelectItem"]
      154 GETTABLEKS                       R13 R1 K54 ["CreatorResults"]
      156 SETTABLEKS                       R13 R12 K46 ["results"]
      158 GETTABLEKS                       R13 R1 K55 ["SearchTerm"]
      160 SETTABLEKS                       R13 R12 K47 ["searchTerm"]
      162 GETTABLEKS                       R13 R0 K56 ["updateUserSearch"]
      164 SETTABLEKS                       R13 R12 K48 ["updateSearch"]
      166 GETUPVAL                         R13 6
      167 GETTABLEKS                       R13 R13 K57 ["SEARCH_BAR_WIDTH"]
      169 SETTABLEKS                       R13 R12 K49 ["width"]
      171 CALL                             R10 2 1
      172 SETTABLEKS                       R10 R9 K40 ["LiveSearchBar"]
      174 GETUPVAL                         R10 1
      175 GETTABLEKS                       R10 R10 K6 ["createElement"]
      177 GETUPVAL                         R11 4
      178 DUPTABLE                         R12 K31 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
      179 GETIMPORT                        R13 K34 [Enum.AutomaticSize.XY]
      181 SETTABLEKS                       R13 R12 K27 ["AutomaticSize"]
      183 GETIMPORT                        R13 K36 [Enum.HorizontalAlignment.Left]
      185 SETTABLEKS                       R13 R12 K28 ["HorizontalAlignment"]
      187 GETIMPORT                        R13 K39 [Enum.FillDirection.Vertical]
      189 SETTABLEKS                       R13 R12 K29 ["Layout"]
      191 NAMECALL                         R13 R5 K52 ["getNextOrder"]
      193 CALL                             R13 1 1
      194 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      196 LOADN                            R13 6
      197 SETTABLEKS                       R13 R12 K30 ["Spacing"]
      199 MOVE                             R13 R3
      200 CALL                             R10 3 1
      201 SETTABLEKS                       R10 R9 K41 ["SelectedPills"]
      203 CALL                             R6 3 -1
      204 RETURN                           R6 -1

PROTO_10:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["groups"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K2 [{"manageableGroups"}]
       11 GETTABLEKS                       R4 R2 K1 ["manageableGroups"]
       13 JUMPIF                           R4 ; [+2]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K1 ["manageableGroups"]
       18 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"getManageableGroups", "userGroupSearchRequest"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getManageableGroups"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["userGroupSearchRequest"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["RoactRodux"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["UI"]
       26 GETTABLEKS                       R5 R5 K11 ["Pane"]
       28 GETTABLEKS                       R6 R0 K12 ["Src"]
       30 GETTABLEKS                       R6 R6 K13 ["Util"]
       32 GETIMPORT                        R7 K6 [require]
       34 GETTABLEKS                       R8 R6 K14 ["Constants"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K6 [require]
       39 GETTABLEKS                       R9 R6 K15 ["debounce"]
       41 CALL                             R8 1 1
       42 GETTABLEKS                       R9 R4 K16 ["ContextServices"]
       44 GETTABLEKS                       R10 R9 K17 ["withContext"]
       46 GETIMPORT                        R11 K6 [require]
       48 GETTABLEKS                       R12 R0 K12 ["Src"]
       50 GETTABLEKS                       R12 R12 K16 ["ContextServices"]
       52 GETTABLEKS                       R12 R12 K18 ["NetworkContext"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K6 [require]
       57 GETTABLEKS                       R13 R0 K12 ["Src"]
       59 GETTABLEKS                       R13 R13 K19 ["Components"]
       61 GETTABLEKS                       R13 R13 K20 ["SearchOptions"]
       63 GETTABLEKS                       R13 R13 K21 ["LiveSearchBar"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K6 [require]
       68 GETTABLEKS                       R14 R0 K12 ["Src"]
       70 GETTABLEKS                       R14 R14 K19 ["Components"]
       72 GETTABLEKS                       R14 R14 K22 ["CreatorPill"]
       74 CALL                             R13 1 1
       75 GETTABLEKS                       R14 R0 K12 ["Src"]
       77 GETTABLEKS                       R14 R14 K23 ["Networking"]
       79 GETTABLEKS                       R14 R14 K24 ["Requests"]
       81 GETIMPORT                        R15 K6 [require]
       83 GETTABLEKS                       R16 R14 K25 ["GetManageableGroupsRequest"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K6 [require]
       88 GETTABLEKS                       R17 R14 K26 ["UserAndGroupLiveSearchRequest"]
       90 CALL                             R16 1 1
       91 GETIMPORT                        R17 K6 [require]
       93 GETTABLEKS                       R18 R0 K12 ["Src"]
       95 GETTABLEKS                       R18 R18 K27 ["Types"]
       97 GETTABLEKS                       R18 R18 K28 ["CreatorTypes"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K6 [require]
      102 GETTABLEKS                       R19 R0 K12 ["Src"]
      104 GETTABLEKS                       R19 R19 K27 ["Types"]
      106 GETTABLEKS                       R19 R19 K29 ["GroupTypes"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K6 [require]
      111 GETTABLEKS                       R20 R0 K12 ["Src"]
      113 GETTABLEKS                       R20 R20 K27 ["Types"]
      115 GETTABLEKS                       R20 R20 K30 ["SearchOptionsTypes"]
      117 CALL                             R19 1 1
      118 GETIMPORT                        R20 K6 [require]
      120 GETTABLEKS                       R21 R0 K12 ["Src"]
      122 GETTABLEKS                       R21 R21 K13 ["Util"]
      124 GETTABLEKS                       R21 R21 K31 ["SharedFlags"]
      126 GETTABLEKS                       R21 R21 K32 ["getFFlagToolboxPillsForCreators"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K34 [game]
      131 LOADK                            R23 K35 ["ToolboxLiveSearchDebounceWait"]
      132 NAMECALL                         R21 R21 K36 ["GetFastInt"]
      134 CALL                             R21 2 1
      135 GETTABLEKS                       R22 R4 K13 ["Util"]
      137 GETTABLEKS                       R22 R22 K37 ["LayoutOrderIterator"]
      139 GETTABLEKS                       R23 R2 K38 ["PureComponent"]
      141 LOADK                            R25 K39 ["UserAndGroupFilter"]
      142 NAMECALL                         R23 R23 K40 ["extend"]
      144 CALL                             R23 2 1
      145 DUPCLOSURE                       R24 K41 [PROTO_5]
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R21
      148 SETTABLEKS                       R24 R23 K42 ["init"]
      150 DUPCLOSURE                       R24 K43 [PROTO_6]
      151 SETTABLEKS                       R24 R23 K44 ["didMount"]
      153 DUPCLOSURE                       R24 K45 [PROTO_9]
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R7
      161 SETTABLEKS                       R24 R23 K46 ["render"]
      163 MOVE                             R24 R10
      164 DUPTABLE                         R25 K48 [{"Network"}]
      165 SETTABLEKS                       R11 R25 K47 ["Network"]
      167 CALL                             R24 1 1
      168 MOVE                             R25 R23
      169 CALL                             R24 1 1
      170 MOVE                             R23 R24
      171 DUPCLOSURE                       R24 K49 [PROTO_10]
      172 DUPCLOSURE                       R25 K50 [PROTO_13]
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R16
      175 GETTABLEKS                       R26 R3 K51 ["connect"]
      177 MOVE                             R27 R24
      178 MOVE                             R28 R25
      179 CALL                             R26 2 1
      180 MOVE                             R27 R23
      181 CALL                             R26 1 -1
      182 RETURN                           R26 -1
