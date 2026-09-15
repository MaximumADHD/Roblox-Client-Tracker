PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 SUBK                             R2 R1 K0 [1]
        7 JUMP                             ; [+1]
        8 LOADN                            R2 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["Select"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K2 ["Uri"]
       15 MOVE                             R5 R2
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["WidgetUri"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Select"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Uri"]
        6 SUBK                             R4 R0 K2 [1]
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R2 R1 K1 ["Setting"]
        4 JUMPIF                           R2 ; [+11]
        5 GETTABLEKS                       R2 R0 K2 ["Warn"]
        7 LOADK                            R3 K3 ["Missing Setting field for SegmentedButton with id %*"]
        8 GETTABLEKS                       R5 R1 K4 ["Id"]
       10 NAMECALL                         R3 R3 K5 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["toString"]
       19 GETTABLEKS                       R3 R1 K1 ["Setting"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R4 R0 K7 ["Items"]
       24 GETTABLEKS                       R4 R4 K8 ["Settings"]
       26 GETTABLE                         R3 R4 R2
       27 JUMPIF                           R3 ; [+12]
       28 GETTABLEKS                       R4 R0 K2 ["Warn"]
       30 LOADK                            R5 K9 ["Missing Setting %* for SegmentedButton with id %*"]
       31 MOVE                             R7 R2
       32 GETTABLEKS                       R8 R1 K4 ["Id"]
       34 NAMECALL                         R5 R5 K5 ["format"]
       36 CALL                             R5 3 1
       37 CALL                             R4 1 0
       38 LOADNIL                          R4
       39 RETURN                           R4 1
       40 GETTABLEKS                       R4 R3 K10 ["Values"]
       42 JUMPIF                           R4 ; [+12]
       43 GETTABLEKS                       R4 R0 K2 ["Warn"]
       45 LOADK                            R5 K11 ["Setting %* has no Values field to display for SegmentedButton with id %*"]
       46 MOVE                             R7 R2
       47 GETTABLEKS                       R8 R1 K4 ["Id"]
       49 NAMECALL                         R5 R5 K5 ["format"]
       51 CALL                             R5 3 1
       52 CALL                             R4 1 0
       53 LOADNIL                          R4
       54 RETURN                           R4 1
       55 GETTABLEKS                       R5 R3 K12 ["Value"]
       57 FASTCALL1                        TYPEOF R5 ; [+2]
       58 GETIMPORT                        R4 K14 [typeof]
       60 CALL                             R4 1 1
       61 JUMPIFEQKS                       R4 K15 ["number"] ; [+15]
       63 GETTABLEKS                       R4 R0 K2 ["Warn"]
       65 LOADK                            R5 K16 ["Setting %* has an invalid value %* for SegmentedButton with id %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R8 R3 K12 ["Value"]
       69 GETTABLEKS                       R9 R1 K4 ["Id"]
       71 NAMECALL                         R5 R5 K5 ["format"]
       73 CALL                             R5 4 1
       74 CALL                             R4 1 0
       75 LOADNIL                          R4
       76 RETURN                           R4 1
       77 GETUPVAL                         R4 1
       78 CALL                             R4 0 1
       79 JUMPIFNOT                        R4 ; [+73]
       80 NEWTABLE                         R4 0 0
       82 GETTABLEKS                       R5 R3 K10 ["Values"]
       84 LOADNIL                          R6
       85 LOADNIL                          R7
       86 FORGPREP                         R5
       87 DUPTABLE                         R12 K19 [{"id", "text"}]
       88 GETTABLEKS                       R13 R9 K4 ["Id"]
       90 SETTABLEKS                       R13 R12 K17 ["id"]
       92 GETTABLEKS                       R14 R9 K21 ["Text"]
       94 ORK                              R13 R14 K20 [""]
       95 SETTABLEKS                       R13 R12 K18 ["text"]
       97 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       99 MOVE                             R11 R4
      100 GETIMPORT                        R10 K24 [table.insert]
      102 CALL                             R10 2 0
      103 FORGLOOP                         R5 2 ; [-17]
      105 GETTABLEKS                       R8 R3 K12 ["Value"]
      107 ADDK                             R7 R8 K25 [1]
      108 GETTABLE                         R6 R4 R7
      109 JUMPIFNOT                        R6 ; [+7]
      110 GETTABLEKS                       R7 R3 K12 ["Value"]
      112 ADDK                             R6 R7 K25 [1]
      113 GETTABLE                         R5 R4 R6
      114 GETTABLEKS                       R5 R5 K17 ["id"]
      116 JUMP                             ; [+3]
      117 GETTABLEN                        R5 R4 1
      118 GETTABLEKS                       R5 R5 K17 ["id"]
      120 GETUPVAL                         R6 2
      121 NEWCLOSURE                       R7 P0
      122 CAPTURE                          UPVAL U3
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R3
      126 NEWTABLE                         R8 0 1
      128 GETTABLEKS                       R9 R0 K26 ["Select"]
      130 SETLIST                          R8 R9 1 [1]
      132 CALL                             R6 2 1
      133 GETUPVAL                         R7 4
      134 GETUPVAL                         R8 5
      135 DUPTABLE                         R9 K34 [{["size"], ["value"], ["LayoutOrder"], ["segments"], ["onActivated"], ["testId"] = "--segmented-control"}]
      136 GETUPVAL                         R10 6
      137 GETTABLEKS                       R10 R10 K35 ["XSmall"]
      139 SETTABLEKS                       R10 R9 K27 ["size"]
      141 SETTABLEKS                       R5 R9 K28 ["value"]
      143 GETTABLEKS                       R10 R0 K29 ["LayoutOrder"]
      145 SETTABLEKS                       R10 R9 K29 ["LayoutOrder"]
      147 SETTABLEKS                       R4 R9 K30 ["segments"]
      149 SETTABLEKS                       R6 R9 K31 ["onActivated"]
      151 CALL                             R7 2 -1
      152 RETURN                           R7 -1
      153 GETUPVAL                         R4 4
      154 GETUPVAL                         R5 7
      155 DUPTABLE                         R6 K39 [{"Uri", "LayoutOrder", "SelectedIndex", "Items", "OnItemActivated"}]
      156 GETUPVAL                         R7 0
      157 GETTABLEKS                       R7 R7 K40 ["child"]
      159 GETTABLEKS                       R8 R0 K41 ["WidgetUri"]
      161 GETTABLEKS                       R9 R1 K4 ["Id"]
      163 CALL                             R7 2 1
      164 SETTABLEKS                       R7 R6 K36 ["Uri"]
      166 GETTABLEKS                       R7 R0 K29 ["LayoutOrder"]
      168 SETTABLEKS                       R7 R6 K29 ["LayoutOrder"]
      170 GETTABLEKS                       R8 R3 K12 ["Value"]
      172 ADDK                             R7 R8 K25 [1]
      173 SETTABLEKS                       R7 R6 K37 ["SelectedIndex"]
      175 GETTABLEKS                       R7 R3 K10 ["Values"]
      177 SETTABLEKS                       R7 R6 K7 ["Items"]
      179 NEWCLOSURE                       R7 P1
      180 CAPTURE                          VAL R0
      181 CAPTURE                          VAL R3
      182 SETTABLEKS                       R7 R6 K38 ["OnItemActivated"]
      184 CALL                             R4 2 -1
      185 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["findIndex"]
       23 GETTABLEKS                       R4 R1 K10 ["createElement"]
       25 GETTABLEKS                       R5 R1 K11 ["useCallback"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R7 K12 ["Foundation"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R6 K13 ["SegmentedControl"]
       36 GETTABLEKS                       R8 R6 K14 ["Enums"]
       38 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R10 R0 K6 ["Packages"]
       44 GETTABLEKS                       R10 R10 K16 ["StudioFoundation"]
       46 CALL                             R9 1 1
       47 GETTABLEKS                       R10 R9 K17 ["Util"]
       49 GETTABLEKS                       R10 R10 K18 ["StudioUri"]
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R12 R0 K19 ["Src"]
       55 GETTABLEKS                       R12 R12 K20 ["Components"]
       57 GETTABLEKS                       R12 R12 K21 ["RibbonSegmentedButton"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R0 K19 ["Src"]
       64 GETTABLEKS                       R13 R13 K22 ["SharedFlags"]
       66 GETTABLEKS                       R13 R13 K23 ["getFFlagSegmentedButtonMigration"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R14 R0 K19 ["Src"]
       73 GETTABLEKS                       R14 R14 K20 ["Components"]
       75 GETTABLEKS                       R14 R14 K24 ["ControlsView"]
       77 GETTABLEKS                       R14 R14 K25 ["ControlProps"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K5 [require]
       82 GETTABLEKS                       R15 R0 K19 ["Src"]
       84 GETTABLEKS                       R15 R15 K26 ["Types"]
       86 CALL                             R14 1 1
       87 DUPCLOSURE                       R15 K27 [PROTO_3]
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R11
       96 RETURN                           R15 1
