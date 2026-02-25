PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"IsDirty"}]
        3 GETTABLEKS                       R6 R1 K2 ["isDirty"]
        5 JUMPIFNOT                        R6 ; [+4]
        6 GETTABLEKS                       R6 R0 K0 ["IsDirty"]
        8 ADDK                             R5 R6 K3 [1]
        9 JUMP                             ; [+1]
       10 LOADN                            R5 0
       11 SETTABLEKS                       R5 R4 K0 ["IsDirty"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Source"}]
        3 GETTABLEKS                       R6 R1 K2 ["source"]
        5 JUMPIFNOT                        R6 ; [+3]
        6 GETTABLEKS                       R5 R1 K2 ["source"]
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R5 1
       10 SETTABLEKS                       R5 R4 K0 ["Source"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SearchTerm"}]
        3 GETTABLEKS                       R5 R1 K2 ["searchTerm"]
        5 SETTABLEKS                       R5 R4 K0 ["SearchTerm"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"RootRoute"}]
        3 GETTABLEKS                       R5 R1 K2 ["route"]
        5 SETTABLEKS                       R5 R4 K0 ["RootRoute"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["itemId"]
        2 JUMPIF                           R2 ; [+10]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K2 [{"SelectedItemId"}]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K3 ["None"]
        9 SETTABLEKS                       R5 R4 K1 ["SelectedItemId"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1
       13 GETTABLEKS                       R3 R0 K1 ["SelectedItemId"]
       15 GETTABLEKS                       R4 R1 K0 ["itemId"]
       17 JUMPIFEQ                         R3 R4 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 GETTABLEKS                       R5 R0 K5 ["ExpandedItems"]
       23 GETTABLEKS                       R6 R1 K0 ["itemId"]
       25 GETTABLE                         R4 R5 R6
       26 ORK                              R3 R4 K4 [False]
       27 GETUPVAL                         R4 0
       28 MOVE                             R5 R0
       29 DUPTABLE                         R6 K6 [{"SelectedItemId", "ExpandedItems"}]
       30 GETTABLEKS                       R7 R1 K0 ["itemId"]
       32 SETTABLEKS                       R7 R6 K1 ["SelectedItemId"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R8 R0 K5 ["ExpandedItems"]
       37 NEWTABLE                         R9 1 0
       39 GETTABLEKS                       R10 R1 K0 ["itemId"]
       41 JUMPIFNOT                        R2 ; [+2]
       42 NOT                              R11 R3
       43 JUMP                             ; [+1]
       44 LOADB                            R11 1
       45 SETTABLE                         R11 R9 R10
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K5 ["ExpandedItems"]
       49 CALL                             R4 2 -1
       50 RETURN                           R4 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["SelectedItemId"]
        2 GETTABLEKS                       R3 R1 K1 ["itemId"]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 1
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 DUPTABLE                         R4 K2 [{"SelectedItemId"}]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K3 ["None"]
       13 SETTABLEKS                       R5 R4 K0 ["SelectedItemId"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ExpandedItems"}]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R6 R0 K0 ["ExpandedItems"]
        6 GETTABLEKS                       R7 R1 K2 ["expandedItems"]
        8 CALL                             R5 2 1
        9 SETTABLEKS                       R5 R4 K0 ["ExpandedItems"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Rodux"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["Dash"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["join"]
       31 GETIMPORT                        R5 K8 [require]
       33 GETTABLEKS                       R8 R1 K13 ["Src"]
       35 GETTABLEKS                       R7 R8 K14 ["Flags"]
       37 GETTABLEKS                       R6 R7 K15 ["getFFlagStyleEditorPluginStyleSheets"]
       39 CALL                             R5 1 1
       40 CALL                             R5 0 1
       41 GETTABLEKS                       R7 R1 K13 ["Src"]
       43 GETTABLEKS                       R6 R7 K16 ["Actions"]
       45 GETIMPORT                        R7 K8 [require]
       47 GETTABLEKS                       R9 R6 K17 ["Window"]
       49 GETTABLEKS                       R8 R9 K18 ["DeselectItem"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K8 [require]
       54 GETTABLEKS                       R10 R6 K17 ["Window"]
       56 GETTABLEKS                       R9 R10 K19 ["SelectItem"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K8 [require]
       61 GETTABLEKS                       R11 R6 K17 ["Window"]
       63 GETTABLEKS                       R10 R11 K20 ["SetIsDirty"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K8 [require]
       68 GETTABLEKS                       R12 R6 K17 ["Window"]
       70 GETTABLEKS                       R11 R12 K21 ["SetItemsExpanded"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K8 [require]
       75 GETTABLEKS                       R13 R6 K17 ["Window"]
       77 GETTABLEKS                       R12 R13 K22 ["SetSource"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K8 [require]
       82 GETTABLEKS                       R14 R6 K17 ["Window"]
       84 GETTABLEKS                       R13 R14 K23 ["SetRootRoute"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K8 [require]
       89 GETTABLEKS                       R15 R6 K17 ["Window"]
       91 GETTABLEKS                       R14 R15 K24 ["SetSearch"]
       93 CALL                             R13 1 1
       94 DUPTABLE                         R14 K31 [{"IsDirty", "Source", "SearchTerm", "RootRoute", "SelectedItemId", "ExpandedItems"}]
       95 LOADN                            R15 0
       96 SETTABLEKS                       R15 R14 K25 ["IsDirty"]
       98 JUMPIFNOT                        R5 ; [+2]
       99 MOVE                             R15 R0
      100 JUMP                             ; [+1]
      101 LOADNIL                          R15
      102 SETTABLEKS                       R15 R14 K26 ["Source"]
      104 LOADK                            R15 K32 [""]
      105 SETTABLEKS                       R15 R14 K27 ["SearchTerm"]
      107 LOADK                            R15 K33 ["Onboarding"]
      108 SETTABLEKS                       R15 R14 K28 ["RootRoute"]
      110 LOADNIL                          R15
      111 SETTABLEKS                       R15 R14 K29 ["SelectedItemId"]
      113 NEWTABLE                         R15 0 0
      115 SETTABLEKS                       R15 R14 K30 ["ExpandedItems"]
      117 GETTABLEKS                       R15 R2 K34 ["createReducer"]
      119 MOVE                             R16 R14
      120 NEWTABLE                         R17 8 0
      122 GETTABLEKS                       R18 R9 K35 ["name"]
      124 DUPCLOSURE                       R19 K36 [PROTO_0]
      125 CAPTURE                          VAL R4
      126 SETTABLE                         R19 R17 R18
      127 GETTABLEKS                       R18 R11 K35 ["name"]
      129 JUMPIFNOT                        R5 ; [+4]
      130 DUPCLOSURE                       R19 K37 [PROTO_1]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R0
      133 JUMP                             ; [+1]
      134 LOADNIL                          R19
      135 SETTABLE                         R19 R17 R18
      136 GETTABLEKS                       R18 R13 K35 ["name"]
      138 DUPCLOSURE                       R19 K38 [PROTO_2]
      139 CAPTURE                          VAL R4
      140 SETTABLE                         R19 R17 R18
      141 GETTABLEKS                       R18 R12 K35 ["name"]
      143 DUPCLOSURE                       R19 K39 [PROTO_3]
      144 CAPTURE                          VAL R4
      145 SETTABLE                         R19 R17 R18
      146 GETTABLEKS                       R18 R8 K35 ["name"]
      148 DUPCLOSURE                       R19 K40 [PROTO_4]
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R3
      151 SETTABLE                         R19 R17 R18
      152 GETTABLEKS                       R18 R7 K35 ["name"]
      154 DUPCLOSURE                       R19 K41 [PROTO_5]
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R3
      157 SETTABLE                         R19 R17 R18
      158 GETTABLEKS                       R18 R10 K35 ["name"]
      160 DUPCLOSURE                       R19 K42 [PROTO_6]
      161 CAPTURE                          VAL R4
      162 SETTABLE                         R19 R17 R18
      163 CALL                             R15 2 -1
      164 RETURN                           R15 -1
