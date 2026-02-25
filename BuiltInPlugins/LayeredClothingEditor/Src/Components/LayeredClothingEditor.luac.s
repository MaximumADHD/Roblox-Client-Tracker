PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["screenInfo"]
        4 GETTABLE                         R3 R4 R0
        5 GETTABLEKS                       R2 R3 K1 ["Id"]
        7 SETTABLEKS                       R2 R1 K2 ["CurrentScreen"]
        9 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["screenToIndexMap"]
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R2 R3 R4
        6 JUMPIFNOTEQ                      R0 R2 ; [+27]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K1 ["props"]
       11 GETTABLEKS                       R2 R3 K2 ["EditingItemContext"]
       13 NAMECALL                         R2 R2 K3 ["getSourceItem"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K4 ["isAvatar"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 1
       21 JUMPIFNOT                        R3 ; [+6]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K0 ["screenToIndexMap"]
       25 GETUPVAL                         R4 3
       26 GETTABLE                         R1 R3 R4
       27 JUMP                             ; [+7]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K0 ["screenToIndexMap"]
       31 GETUPVAL                         R4 4
       32 GETTABLE                         R1 R3 R4
       33 JUMP                             ; [+1]
       34 ADDK                             R1 R0 K5 [1]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K6 ["screens"]
       38 LENGTH                           R2 R3
       39 MOD                              R1 R1 R2
       40 JUMPIFNOTEQKN                    R1 K7 [0] ; [+6]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R3 R4 K6 ["screens"]
       45 LENGTH                           R2 R3
       46 JUMPIF                           R2 ; [+1]
       47 MOVE                             R2 R1
       48 RETURN                           R2 1

PROTO_2:
        0 LOADNIL                          R1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["screenToIndexMap"]
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R2 R3 R4
        6 JUMPIFNOTEQ                      R0 R2 ; [+27]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K1 ["props"]
       11 GETTABLEKS                       R2 R3 K2 ["EditingItemContext"]
       13 NAMECALL                         R2 R2 K3 ["getSourceItem"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K4 ["isAvatar"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 1
       21 JUMPIFNOT                        R3 ; [+6]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K0 ["screenToIndexMap"]
       25 GETUPVAL                         R4 3
       26 GETTABLE                         R1 R3 R4
       27 RETURN                           R1 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K0 ["screenToIndexMap"]
       31 GETUPVAL                         R4 4
       32 GETTABLE                         R1 R3 R4
       33 RETURN                           R1 1
       34 SUBK                             R1 R0 K5 [1]
       35 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [os.time]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K3 ["StartTime"]
        6 NEWTABLE                         R1 0 3
        8 DUPTABLE                         R2 K6 [{"Id", "Component"}]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K7 ["SCREENS"]
       12 GETTABLEKS                       R3 R4 K8 ["Select"]
       14 SETTABLEKS                       R3 R2 K4 ["Id"]
       16 GETUPVAL                         R3 2
       17 SETTABLEKS                       R3 R2 K5 ["Component"]
       19 DUPTABLE                         R3 K6 [{"Id", "Component"}]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K7 ["SCREENS"]
       23 GETTABLEKS                       R4 R5 K9 ["AssetType"]
       25 SETTABLEKS                       R4 R3 K4 ["Id"]
       27 GETUPVAL                         R4 3
       28 SETTABLEKS                       R4 R3 K5 ["Component"]
       30 DUPTABLE                         R4 K6 [{"Id", "Component"}]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R6 R7 K7 ["SCREENS"]
       34 GETTABLEKS                       R5 R6 K10 ["Edit"]
       36 SETTABLEKS                       R5 R4 K4 ["Id"]
       38 GETUPVAL                         R5 4
       39 SETTABLEKS                       R5 R4 K5 ["Component"]
       41 SETLIST                          R1 R2 3 [1]
       43 SETTABLEKS                       R1 R0 K11 ["screenInfo"]
       45 NEWTABLE                         R1 0 0
       47 SETTABLEKS                       R1 R0 K12 ["screens"]
       49 GETIMPORT                        R1 K14 [ipairs]
       51 GETTABLEKS                       R2 R0 K11 ["screenInfo"]
       53 CALL                             R1 1 3
       54 FORGPREP_INEXT                   R1
       55 GETTABLEKS                       R7 R0 K12 ["screens"]
       57 GETTABLEKS                       R8 R5 K5 ["Component"]
       59 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       61 GETIMPORT                        R6 K17 [table.insert]
       63 CALL                             R6 2 0
       64 FORGLOOP                         R1 2 [inext] ; [-10]
       66 NEWTABLE                         R1 0 0
       68 SETTABLEKS                       R1 R0 K18 ["screenToIndexMap"]
       70 GETIMPORT                        R1 K14 [ipairs]
       72 GETTABLEKS                       R2 R0 K12 ["screens"]
       74 CALL                             R1 1 3
       75 FORGPREP_INEXT                   R1
       76 GETTABLEKS                       R6 R0 K18 ["screenToIndexMap"]
       78 SETTABLE                         R4 R6 R5
       79 FORGLOOP                         R1 2 [inext] ; [-4]
       81 NEWCLOSURE                       R1 P0
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R1 R0 K19 ["onScreenChanged"]
       86 NEWCLOSURE                       R1 P1
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          UPVAL U4
       91 CAPTURE                          UPVAL U3
       92 SETTABLEKS                       R1 R0 K20 ["getNextIndex"]
       94 NEWCLOSURE                       R1 P2
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U4
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          UPVAL U3
      100 SETTABLEKS                       R1 R0 K21 ["getPreviousIndex"]
      102 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createFragment"]
        3 DUPTABLE                         R2 K3 [{"SelectedEditingItem", "ScreenFlow"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K4 ["createElement"]
        7 GETUPVAL                         R4 1
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K1 ["SelectedEditingItem"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K4 ["createElement"]
       14 GETUPVAL                         R4 2
       15 DUPTABLE                         R5 K9 [{"Screens", "GetNextIndex", "GetPreviousIndex", "OnScreenChanged"}]
       16 GETTABLEKS                       R6 R0 K10 ["screens"]
       18 SETTABLEKS                       R6 R5 K5 ["Screens"]
       20 GETTABLEKS                       R6 R0 K11 ["getNextIndex"]
       22 SETTABLEKS                       R6 R5 K6 ["GetNextIndex"]
       24 GETTABLEKS                       R6 R0 K12 ["getPreviousIndex"]
       26 SETTABLEKS                       R6 R5 K7 ["GetPreviousIndex"]
       28 GETTABLEKS                       R6 R0 K13 ["onScreenChanged"]
       30 SETTABLEKS                       R6 R5 K8 ["OnScreenChanged"]
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R2 K2 ["ScreenFlow"]
       35 CALL                             R1 1 -1
       36 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["EditingItemContext"]
        4 NAMECALL                         R1 R1 K2 ["clear"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["AvatarToolsShared"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R2 K8 ["Contexts"]
       25 GETTABLEKS                       R3 R4 K9 ["EditingItemContext"]
       27 GETTABLEKS                       R5 R2 K10 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["AccessoryAndBodyToolShared"]
       31 GETTABLEKS                       R5 R4 K12 ["ItemCharacteristics"]
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R8 R0 K5 ["Packages"]
       37 GETTABLEKS                       R7 R8 K13 ["Framework"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R6 K14 ["ContextServices"]
       42 GETTABLEKS                       R8 R7 K15 ["withContext"]
       44 GETTABLEKS                       R9 R6 K16 ["UI"]
       46 GETTABLEKS                       R10 R9 K17 ["ScreenFlow"]
       48 GETIMPORT                        R11 K4 [require]
       50 GETTABLEKS                       R15 R0 K18 ["Src"]
       52 GETTABLEKS                       R14 R15 K19 ["Components"]
       54 GETTABLEKS                       R13 R14 K20 ["Screens"]
       56 GETTABLEKS                       R12 R13 K21 ["AssetTypeScreen"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K4 [require]
       61 GETTABLEKS                       R16 R0 K18 ["Src"]
       63 GETTABLEKS                       R15 R16 K19 ["Components"]
       65 GETTABLEKS                       R14 R15 K20 ["Screens"]
       67 GETTABLEKS                       R13 R14 K22 ["EditorScreen"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K4 [require]
       72 GETTABLEKS                       R17 R0 K18 ["Src"]
       74 GETTABLEKS                       R16 R17 K19 ["Components"]
       76 GETTABLEKS                       R15 R16 K20 ["Screens"]
       78 GETTABLEKS                       R14 R15 K23 ["SelectItemScreen"]
       80 CALL                             R13 1 1
       81 GETIMPORT                        R14 K4 [require]
       83 GETTABLEKS                       R18 R0 K18 ["Src"]
       85 GETTABLEKS                       R17 R18 K19 ["Components"]
       87 GETTABLEKS                       R16 R17 K20 ["Screens"]
       89 GETTABLEKS                       R15 R16 K24 ["GenerateScreen"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K4 [require]
       94 GETTABLEKS                       R19 R0 K18 ["Src"]
       96 GETTABLEKS                       R18 R19 K19 ["Components"]
       98 GETTABLEKS                       R17 R18 K25 ["Preview"]
      100 GETTABLEKS                       R16 R17 K26 ["SelectedEditingItem"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K4 [require]
      105 GETTABLEKS                       R19 R0 K18 ["Src"]
      107 GETTABLEKS                       R18 R19 K10 ["Util"]
      109 GETTABLEKS                       R17 R18 K27 ["AnalyticsGlobals"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K4 [require]
      114 GETTABLEKS                       R20 R0 K18 ["Src"]
      116 GETTABLEKS                       R19 R20 K10 ["Util"]
      118 GETTABLEKS                       R18 R19 K28 ["Constants"]
      120 CALL                             R17 1 1
      121 GETTABLEKS                       R18 R1 K29 ["PureComponent"]
      123 LOADK                            R20 K30 ["LayeredClothingEditor"]
      124 NAMECALL                         R18 R18 K31 ["extend"]
      126 CALL                             R18 2 1
      127 DUPCLOSURE                       R19 K32 [PROTO_3]
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R5
      134 SETTABLEKS                       R19 R18 K33 ["init"]
      136 DUPCLOSURE                       R19 K34 [PROTO_4]
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R10
      140 SETTABLEKS                       R19 R18 K35 ["render"]
      142 DUPCLOSURE                       R19 K36 [PROTO_5]
      143 SETTABLEKS                       R19 R18 K37 ["willUnmount"]
      145 MOVE                             R19 R8
      146 DUPTABLE                         R20 K38 [{"EditingItemContext"}]
      147 SETTABLEKS                       R3 R20 K9 ["EditingItemContext"]
      149 CALL                             R19 1 1
      150 MOVE                             R20 R18
      151 CALL                             R19 1 1
      152 MOVE                             R18 R19
      153 RETURN                           R18 1
