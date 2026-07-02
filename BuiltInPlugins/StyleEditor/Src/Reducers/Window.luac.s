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
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["None"]
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
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["None"]
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
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Rodux"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Dash"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["join"]
       31 GETTABLEKS                       R5 R1 K13 ["Src"]
       33 GETTABLEKS                       R5 R5 K14 ["Actions"]
       35 GETIMPORT                        R6 K8 [require]
       37 GETTABLEKS                       R7 R5 K15 ["Window"]
       39 GETTABLEKS                       R7 R7 K16 ["DeselectItem"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K8 [require]
       44 GETTABLEKS                       R8 R5 K15 ["Window"]
       46 GETTABLEKS                       R8 R8 K17 ["SelectItem"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K8 [require]
       51 GETTABLEKS                       R9 R5 K15 ["Window"]
       53 GETTABLEKS                       R9 R9 K18 ["SetIsDirty"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K8 [require]
       58 GETTABLEKS                       R10 R5 K15 ["Window"]
       60 GETTABLEKS                       R10 R10 K19 ["SetItemsExpanded"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K8 [require]
       65 GETTABLEKS                       R11 R5 K15 ["Window"]
       67 GETTABLEKS                       R11 R11 K20 ["SetSource"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K8 [require]
       72 GETTABLEKS                       R12 R5 K15 ["Window"]
       74 GETTABLEKS                       R12 R12 K21 ["SetRootRoute"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K8 [require]
       79 GETTABLEKS                       R13 R5 K15 ["Window"]
       81 GETTABLEKS                       R13 R13 K22 ["SetSearch"]
       83 CALL                             R12 1 1
       84 DUPTABLE                         R13 K33 [{["IsDirty"] = 0, ["Source"], ["SearchTerm"] = "", ["RootRoute"] = "Onboarding", ["SelectedItemId"] = , ["ExpandedItems"]}]
       85 SETTABLEKS                       R0 R13 K25 ["Source"]
       87 NEWTABLE                         R14 0 0
       89 SETTABLEKS                       R14 R13 K32 ["ExpandedItems"]
       91 GETTABLEKS                       R14 R2 K34 ["createReducer"]
       93 MOVE                             R15 R13
       94 NEWTABLE                         R16 8 0
       96 GETTABLEKS                       R17 R8 K35 ["name"]
       98 DUPCLOSURE                       R18 K36 [PROTO_0]
       99 CAPTURE                          VAL R4
      100 SETTABLE                         R18 R16 R17
      101 GETTABLEKS                       R17 R10 K35 ["name"]
      103 DUPCLOSURE                       R18 K37 [PROTO_1]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R0
      106 SETTABLE                         R18 R16 R17
      107 GETTABLEKS                       R17 R12 K35 ["name"]
      109 DUPCLOSURE                       R18 K38 [PROTO_2]
      110 CAPTURE                          VAL R4
      111 SETTABLE                         R18 R16 R17
      112 GETTABLEKS                       R17 R11 K35 ["name"]
      114 DUPCLOSURE                       R18 K39 [PROTO_3]
      115 CAPTURE                          VAL R4
      116 SETTABLE                         R18 R16 R17
      117 GETTABLEKS                       R17 R7 K35 ["name"]
      119 DUPCLOSURE                       R18 K40 [PROTO_4]
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R3
      122 SETTABLE                         R18 R16 R17
      123 GETTABLEKS                       R17 R6 K35 ["name"]
      125 DUPCLOSURE                       R18 K41 [PROTO_5]
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R3
      128 SETTABLE                         R18 R16 R17
      129 GETTABLEKS                       R17 R9 K35 ["name"]
      131 DUPCLOSURE                       R18 K42 [PROTO_6]
      132 CAPTURE                          VAL R4
      133 SETTABLE                         R18 R16 R17
      134 CALL                             R14 2 -1
      135 RETURN                           R14 -1
