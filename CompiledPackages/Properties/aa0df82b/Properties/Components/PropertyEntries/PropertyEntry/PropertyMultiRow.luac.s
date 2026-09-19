PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["partNameMap"]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETTABLEKS                       R9 R1 K2 ["parts"]
       15 GETTABLEKS                       R10 R7 K3 ["propertyPartName"]
       17 GETTABLE                         R8 R9 R10
       18 GETTABLEKS                       R9 R8 K4 ["multiple"]
       20 JUMPIFNOT                        R9 ; [+3]
       21 GETUPVAL                         R9 2
       22 SETTABLE                         R9 R2 R6
       23 JUMP                             ; [+6]
       24 DUPTABLE                         R9 K7 [{["multiple"] = False, ["value"]}]
       25 GETTABLEKS                       R10 R8 K6 ["value"]
       27 SETTABLEKS                       R10 R9 K6 ["value"]
       29 SETTABLE                         R9 R2 R6
       30 FORGLOOP                         R3 2 ; [-18]
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R3 R3 K8 ["fromInfoAndParts"]
       35 GETUPVAL                         R4 4
       36 GETTABLEKS                       R4 R4 K9 ["fromType"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K10 ["type"]
       41 GETTABLEKS                       R6 R1 K11 ["readonly"]
       43 CALL                             R4 2 1
       44 MOVE                             R5 R2
       45 CALL                             R3 2 -1
       46 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setPart"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["partNameMap"]
        6 GETTABLE                         R3 R4 R0
        7 GETTABLEKS                       R3 R3 K2 ["propertyPartName"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["createUniqueKey"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 DUPTABLE                         R5 K13 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils", "label", "isUnimplemented", "isReadonly", "labelWidthBinding", "onSecondaryActivated", "LayoutOrder"}]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K2 ["getInfo"]
       16 SETTABLEKS                       R6 R5 K2 ["getInfo"]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K3 ["beginEditingAsync"]
       21 SETTABLEKS                       R6 R5 K3 ["beginEditingAsync"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K4 ["setPart"]
       26 SETTABLEKS                       R6 R5 K4 ["setPart"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K5 ["finishEditing"]
       31 SETTABLEKS                       R6 R5 K5 ["finishEditing"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K6 ["specializedEditingUtils"]
       36 SETTABLEKS                       R6 R5 K6 ["specializedEditingUtils"]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K7 ["label"]
       41 SETTABLEKS                       R6 R5 K7 ["label"]
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R6 R6 K8 ["isUnimplemented"]
       46 SETTABLEKS                       R6 R5 K8 ["isUnimplemented"]
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R6 R6 K9 ["isReadonly"]
       51 SETTABLEKS                       R6 R5 K9 ["isReadonly"]
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R6 R6 K10 ["labelWidthBinding"]
       56 SETTABLEKS                       R6 R5 K10 ["labelWidthBinding"]
       58 DUPCLOSURE                       R6 K14 [PROTO_0]
       59 SETTABLEKS                       R6 R5 K11 ["onSecondaryActivated"]
       61 MOVE                             R6 R1
       62 CALL                             R6 0 1
       63 SETTABLEKS                       R6 R5 K12 ["LayoutOrder"]
       65 CALL                             R3 2 1
       66 SETTABLEKS                       R3 R0 K15 ["Header"]
       68 GETUPVAL                         R3 3
       69 GETTABLEKS                       R3 R3 K16 ["rowConfigs"]
       71 LOADNIL                          R4
       72 LOADNIL                          R5
       73 FORGPREP                         R3
       74 GETUPVAL                         R8 4
       75 GETTABLEKS                       R8 R8 K17 ["createComputed"]
       77 NEWCLOSURE                       R9 P1
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          VAL R7
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          UPVAL U7
       83 CALL                             R8 1 1
       84 NEWCLOSURE                       R9 P2
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          VAL R7
       87 MOVE                             R10 R2
       88 GETTABLEKS                       R11 R7 K7 ["label"]
       90 JUMPIF                           R11 ; [+5]
       91 FASTCALL1                        TOSTRING R6 ; [+3]
       92 MOVE                             R12 R6
       93 GETIMPORT                        R11 K19 [tostring]
       95 CALL                             R11 1 1
       96 CALL                             R10 1 1
       97 GETUPVAL                         R11 1
       98 GETUPVAL                         R12 2
       99 DUPTABLE                         R13 K22 [{["getInfo"], ["beginEditingAsync"], ["setPart"], ["finishEditing"], ["specializedEditingUtils"], ["label"], ["isUnimplemented"], ["isSubRow"] = True, ["isReadonly"], ["labelWidthBinding"], ["onSecondaryActivated"], ["LayoutOrder"]}]
      100 SETTABLEKS                       R8 R13 K2 ["getInfo"]
      102 GETUPVAL                         R14 3
      103 GETTABLEKS                       R14 R14 K3 ["beginEditingAsync"]
      105 SETTABLEKS                       R14 R13 K3 ["beginEditingAsync"]
      107 SETTABLEKS                       R9 R13 K4 ["setPart"]
      109 GETUPVAL                         R14 3
      110 GETTABLEKS                       R14 R14 K5 ["finishEditing"]
      112 SETTABLEKS                       R14 R13 K5 ["finishEditing"]
      114 GETUPVAL                         R14 3
      115 GETTABLEKS                       R14 R14 K6 ["specializedEditingUtils"]
      117 SETTABLEKS                       R14 R13 K6 ["specializedEditingUtils"]
      119 GETTABLEKS                       R14 R7 K7 ["label"]
      121 JUMPIF                           R14 ; [+3]
      122 GETUPVAL                         R14 3
      123 GETTABLEKS                       R14 R14 K7 ["label"]
      125 SETTABLEKS                       R14 R13 K7 ["label"]
      127 GETUPVAL                         R14 3
      128 GETTABLEKS                       R14 R14 K8 ["isUnimplemented"]
      130 SETTABLEKS                       R14 R13 K8 ["isUnimplemented"]
      132 GETUPVAL                         R14 3
      133 GETTABLEKS                       R14 R14 K9 ["isReadonly"]
      135 SETTABLEKS                       R14 R13 K9 ["isReadonly"]
      137 GETUPVAL                         R14 3
      138 GETTABLEKS                       R14 R14 K10 ["labelWidthBinding"]
      140 SETTABLEKS                       R14 R13 K10 ["labelWidthBinding"]
      142 DUPCLOSURE                       R14 K23 [PROTO_3]
      143 SETTABLEKS                       R14 R13 K11 ["onSecondaryActivated"]
      145 MOVE                             R14 R1
      146 CALL                             R14 0 1
      147 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
      149 CALL                             R11 2 1
      150 SETTABLE                         R11 R0 R10
      151 FORGLOOP                         R3 2 ; [-78]
      153 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 NEWTABLE                         R3 0 10
       14 GETTABLEKS                       R4 R0 K1 ["rowConfigs"]
       16 GETTABLEKS                       R5 R0 K2 ["getInfo"]
       18 GETTABLEKS                       R6 R0 K3 ["setPart"]
       20 GETTABLEKS                       R7 R0 K4 ["beginEditingAsync"]
       22 GETTABLEKS                       R8 R0 K5 ["finishEditing"]
       24 GETTABLEKS                       R9 R0 K6 ["specializedEditingUtils"]
       26 GETTABLEKS                       R10 R0 K7 ["label"]
       28 GETTABLEKS                       R11 R0 K8 ["isUnimplemented"]
       30 GETTABLEKS                       R12 R0 K9 ["isReadonly"]
       32 GETTABLEKS                       R13 R0 K10 ["labelWidthBinding"]
       34 SETLIST                          R3 R4 10 [1]
       36 CALL                             R1 2 1
       37 GETUPVAL                         R2 2
       38 GETUPVAL                         R3 8
       39 GETTABLEKS                       R3 R3 K11 ["View"]
       41 DUPTABLE                         R4 K16 [{["tag"] = "col auto-xy", ["LayoutOrder"], ["Visible"]}]
       42 GETTABLEKS                       R5 R0 K14 ["LayoutOrder"]
       44 SETTABLEKS                       R5 R4 K14 ["LayoutOrder"]
       46 GETTABLEKS                       R5 R0 K15 ["Visible"]
       48 SETTABLEKS                       R5 R4 K15 ["Visible"]
       50 MOVE                             R5 R1
       51 CALL                             R2 3 -1
       52 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["PropertyInteraction"]
       13 GETTABLEKS                       R3 R3 K8 ["AggregatePropertyInfo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K7 ["PropertyInteraction"]
       25 GETTABLEKS                       R5 R5 K10 ["PropertyInfo"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["PropertyEntries"]
       34 GETTABLEKS                       R6 R6 K13 ["PropertyEntry"]
       36 GETTABLEKS                       R6 R6 K14 ["PropertyRow"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K15 ["PropertyTypes"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K16 ["React"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K17 ["ReactUtils"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R1 K18 ["Signals"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K7 ["PropertyInteraction"]
       63 GETTABLEKS                       R11 R11 K19 ["genericMultiplePart"]
       65 CALL                             R10 1 1
       66 GETTABLEKS                       R11 R7 K20 ["createElement"]
       68 DUPCLOSURE                       R12 K21 [PROTO_5]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R3
       78 RETURN                           R12 1
