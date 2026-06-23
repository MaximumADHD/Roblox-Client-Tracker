PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["definition"]
        3 GETTABLEKS                       R0 R0 K1 ["registerSetIsEnabled"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["definition"]
        9 GETTABLEKS                       R0 R0 K1 ["registerSetIsEnabled"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"SuggestSegmentation"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["Gen3d"]
        3 LOADK                            R4 K3 ["SuggestSegmentationTitle"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["SuggestSegmentation"]
        9 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 NOT                              R0 R1
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K0 ["onChange"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K0 ["onChange"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K1 ["definition"]
       20 GETTABLEKS                       R1 R1 K2 ["onCheckedChanged"]
       22 JUMPIFNOT                        R1 ; [+7]
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K1 ["definition"]
       26 GETTABLEKS                       R1 R1 K2 ["onCheckedChanged"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["definition"]
        6 GETTABLEKS                       R0 R0 K1 ["onRefreshPressed"]
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K0 ["definition"]
       12 GETTABLEKS                       R0 R0 K1 ["onRefreshPressed"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R3 R0 K1 ["definition"]
        5 GETTABLEKS                       R3 R3 K2 ["initialEnabled"]
        7 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["useState"]
       15 GETTABLEKS                       R4 R0 K1 ["definition"]
       17 GETTABLEKS                       R4 R4 K3 ["initialChecked"]
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R7 0 0
       28 CALL                             R5 2 0
       29 GETTABLEKS                       R5 R0 K5 ["isDisabled"]
       31 JUMPIF                           R5 ; [+1]
       32 NOT                              R5 R1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       36 DUPCLOSURE                       R7 K7 [PROTO_1]
       37 CAPTURE                          UPVAL U1
       38 NEWTABLE                         R8 0 1
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K8 ["locale"]
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K9 ["useCallback"]
       49 NEWCLOSURE                       R8 P2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R0
       54 NEWTABLE                         R9 0 4
       56 MOVE                             R10 R5
       57 MOVE                             R11 R3
       58 GETTABLEKS                       R12 R0 K10 ["onChange"]
       60 GETTABLEKS                       R13 R0 K1 ["definition"]
       62 GETTABLEKS                       R13 R13 K11 ["onCheckedChanged"]
       64 SETLIST                          R9 R10 4 [1]
       66 CALL                             R7 2 1
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K9 ["useCallback"]
       70 NEWCLOSURE                       R9 P3
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R0
       73 NEWTABLE                         R10 0 2
       75 MOVE                             R11 R5
       76 GETTABLEKS                       R12 R0 K1 ["definition"]
       78 GETTABLEKS                       R12 R12 K12 ["onRefreshPressed"]
       80 SETLIST                          R10 R11 2 [1]
       82 CALL                             R8 2 1
       83 GETUPVAL                         R9 2
       84 CALL                             R9 0 1
       85 GETUPVAL                         R10 3
       86 GETUPVAL                         R11 4
       87 DUPTABLE                         R12 K15 [{"tag", "LayoutOrder"}]
       88 LOADK                            R13 K16 ["row size-full-0 auto-y padding-y-xxsmall gap-small align-y-center"]
       89 SETTABLEKS                       R13 R12 K13 ["tag"]
       91 GETTABLEKS                       R13 R0 K14 ["LayoutOrder"]
       93 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       95 DUPTABLE                         R13 K20 [{"Check", "Label", "RefreshButton"}]
       96 GETUPVAL                         R14 3
       97 GETUPVAL                         R15 5
       98 DUPTABLE                         R16 K26 [{"isChecked", "onActivated", "size", "label", "isDisabled", "testId", "LayoutOrder"}]
       99 SETTABLEKS                       R3 R16 K21 ["isChecked"]
      101 SETTABLEKS                       R7 R16 K22 ["onActivated"]
      103 GETUPVAL                         R17 6
      104 GETTABLEKS                       R17 R17 K27 ["XSmall"]
      106 SETTABLEKS                       R17 R16 K23 ["size"]
      108 LOADK                            R17 K28 [""]
      109 SETTABLEKS                       R17 R16 K24 ["label"]
      111 SETTABLEKS                       R5 R16 K5 ["isDisabled"]
      113 GETUPVAL                         R17 7
      114 GETTABLEKS                       R17 R17 K29 ["SegmentationPropertyRow"]
      116 GETTABLEKS                       R17 R17 K30 ["SuggestCheckbox"]
      118 SETTABLEKS                       R17 R16 K25 ["testId"]
      120 MOVE                             R17 R9
      121 CALL                             R17 0 1
      122 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K17 ["Check"]
      127 GETUPVAL                         R14 3
      128 GETUPVAL                         R15 8
      129 DUPTABLE                         R16 K32 [{"tag", "Text", "LayoutOrder"}]
      130 LOADK                            R17 K33 ["size-0-0 auto-xy text-body-small content-default text-align-x-left"]
      131 SETTABLEKS                       R17 R16 K13 ["tag"]
      133 GETTABLEKS                       R17 R6 K34 ["SuggestSegmentation"]
      135 SETTABLEKS                       R17 R16 K31 ["Text"]
      137 MOVE                             R17 R9
      138 CALL                             R17 0 1
      139 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      141 CALL                             R14 2 1
      142 SETTABLEKS                       R14 R13 K18 ["Label"]
      144 GETUPVAL                         R14 3
      145 GETUPVAL                         R15 9
      146 DUPTABLE                         R16 K36 [{"icon", "size", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      147 GETUPVAL                         R17 10
      148 GETTABLEKS                       R17 R17 K37 ["Enums"]
      150 GETTABLEKS                       R17 R17 K38 ["IconName"]
      152 GETTABLEKS                       R17 R17 K39 ["TwoArrowsSpinClockwise"]
      154 SETTABLEKS                       R17 R16 K35 ["icon"]
      156 GETUPVAL                         R17 6
      157 GETTABLEKS                       R17 R17 K27 ["XSmall"]
      159 SETTABLEKS                       R17 R16 K23 ["size"]
      161 SETTABLEKS                       R5 R16 K5 ["isDisabled"]
      163 SETTABLEKS                       R8 R16 K22 ["onActivated"]
      165 GETUPVAL                         R17 7
      166 GETTABLEKS                       R17 R17 K29 ["SegmentationPropertyRow"]
      168 GETTABLEKS                       R17 R17 K19 ["RefreshButton"]
      170 SETTABLEKS                       R17 R16 K25 ["testId"]
      172 MOVE                             R17 R9
      173 CALL                             R17 0 1
      174 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
      176 CALL                             R14 2 1
      177 SETTABLEKS                       R14 R13 K19 ["RefreshButton"]
      179 CALL                             R10 3 -1
      180 RETURN                           R10 -1

PROTO_5:
        0 DUPTABLE                         R1 K11 [{"type", "label", "prop", "initialValue", "initialChecked", "initialEnabled", "initialVisible", "registerSetVisible", "registerSetIsEnabled", "onCheckedChanged", "onRefreshPressed"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K12 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K13 ["SuggestSegmentation"]
        6 SETTABLEKS                       R2 R1 K0 ["type"]
        8 GETTABLEKS                       R2 R0 K1 ["label"]
       10 SETTABLEKS                       R2 R1 K1 ["label"]
       12 GETTABLEKS                       R2 R0 K2 ["prop"]
       14 SETTABLEKS                       R2 R1 K2 ["prop"]
       16 GETTABLEKS                       R2 R0 K4 ["initialChecked"]
       18 SETTABLEKS                       R2 R1 K3 ["initialValue"]
       20 GETTABLEKS                       R2 R0 K4 ["initialChecked"]
       22 SETTABLEKS                       R2 R1 K4 ["initialChecked"]
       24 GETTABLEKS                       R2 R0 K5 ["initialEnabled"]
       26 SETTABLEKS                       R2 R1 K5 ["initialEnabled"]
       28 GETTABLEKS                       R2 R0 K6 ["initialVisible"]
       30 SETTABLEKS                       R2 R1 K6 ["initialVisible"]
       32 GETTABLEKS                       R2 R0 K7 ["registerSetVisible"]
       34 SETTABLEKS                       R2 R1 K7 ["registerSetVisible"]
       36 GETTABLEKS                       R2 R0 K8 ["registerSetIsEnabled"]
       38 SETTABLEKS                       R2 R1 K8 ["registerSetIsEnabled"]
       40 GETTABLEKS                       R2 R0 K9 ["onCheckedChanged"]
       42 SETTABLEKS                       R2 R1 K9 ["onCheckedChanged"]
       44 GETTABLEKS                       R2 R0 K10 ["onRefreshPressed"]
       46 SETTABLEKS                       R2 R1 K10 ["onRefreshPressed"]
       48 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Resources"]
       32 GETTABLEKS                       R5 R5 K11 ["Localization"]
       34 GETTABLEKS                       R5 R5 K12 ["Translator"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Checkbox"]
       39 GETTABLEKS                       R6 R1 K14 ["IconButton"]
       41 GETTABLEKS                       R7 R1 K15 ["Text"]
       43 GETTABLEKS                       R8 R1 K16 ["View"]
       45 GETTABLEKS                       R9 R1 K17 ["Enums"]
       47 GETTABLEKS                       R9 R9 K18 ["InputSize"]
       49 GETTABLEKS                       R10 R3 K19 ["createNextOrder"]
       51 GETIMPORT                        R11 K5 [require]
       53 GETIMPORT                        R12 K1 [script]
       55 GETTABLEKS                       R12 R12 K6 ["Parent"]
       57 GETTABLEKS                       R12 R12 K20 ["PropertyRowTypes"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R0 K21 ["Util"]
       64 GETTABLEKS                       R13 R13 K22 ["TestIds"]
       66 CALL                             R12 1 1
       67 GETTABLEKS                       R13 R2 K23 ["createElement"]
       69 DUPCLOSURE                       R14 K24 [PROTO_4]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R1
       81 DUPCLOSURE                       R15 K25 [PROTO_5]
       82 CAPTURE                          VAL R11
       83 DUPTABLE                         R16 K28 [{"SuggestSegmentationPropertyRow", "createRowDefinition"}]
       84 SETTABLEKS                       R14 R16 K26 ["SuggestSegmentationPropertyRow"]
       86 SETTABLEKS                       R15 R16 K27 ["createRowDefinition"]
       88 RETURN                           R16 1
