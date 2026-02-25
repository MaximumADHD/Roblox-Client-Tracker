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
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K1 ["Select"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K2 ["Uri"]
       15 MOVE                             R5 R2
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K3 ["WidgetUri"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Select"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Uri"]
        6 SUBK                             R4 R0 K2 [1]
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R2 R1 K1 ["Setting"]
        4 JUMPIF                           R2 ; [+12]
        5 GETTABLEKS                       R2 R0 K2 ["Warn"]
        7 LOADK                            R4 K3 ["Missing Setting field for SegmentedButton with id %*"]
        8 GETTABLEKS                       R6 R1 K4 ["Id"]
       10 NAMECALL                         R4 R4 K5 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K6 ["toString"]
       20 GETTABLEKS                       R3 R1 K1 ["Setting"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R5 R0 K7 ["Items"]
       25 GETTABLEKS                       R4 R5 K8 ["Settings"]
       27 GETTABLE                         R3 R4 R2
       28 JUMPIF                           R3 ; [+13]
       29 GETTABLEKS                       R4 R0 K2 ["Warn"]
       31 LOADK                            R6 K9 ["Missing Setting %* for SegmentedButton with id %*"]
       32 MOVE                             R8 R2
       33 GETTABLEKS                       R9 R1 K4 ["Id"]
       35 NAMECALL                         R6 R6 K5 ["format"]
       37 CALL                             R6 3 1
       38 MOVE                             R5 R6
       39 CALL                             R4 1 0
       40 LOADNIL                          R4
       41 RETURN                           R4 1
       42 GETTABLEKS                       R4 R3 K10 ["Values"]
       44 JUMPIF                           R4 ; [+13]
       45 GETTABLEKS                       R4 R0 K2 ["Warn"]
       47 LOADK                            R6 K11 ["Setting %* has no Values field to display for SegmentedButton with id %*"]
       48 MOVE                             R8 R2
       49 GETTABLEKS                       R9 R1 K4 ["Id"]
       51 NAMECALL                         R6 R6 K5 ["format"]
       53 CALL                             R6 3 1
       54 MOVE                             R5 R6
       55 CALL                             R4 1 0
       56 LOADNIL                          R4
       57 RETURN                           R4 1
       58 GETTABLEKS                       R5 R3 K12 ["Value"]
       60 FASTCALL1                        TYPEOF R5 ; [+2]
       61 GETIMPORT                        R4 K14 [typeof]
       63 CALL                             R4 1 1
       64 JUMPIFEQKS                       R4 K15 ["number"] ; [+16]
       66 GETTABLEKS                       R4 R0 K2 ["Warn"]
       68 LOADK                            R6 K16 ["Setting %* has an invalid value %* for SegmentedButton with id %*"]
       69 MOVE                             R8 R2
       70 GETTABLEKS                       R9 R3 K12 ["Value"]
       72 GETTABLEKS                       R10 R1 K4 ["Id"]
       74 NAMECALL                         R6 R6 K5 ["format"]
       76 CALL                             R6 4 1
       77 MOVE                             R5 R6
       78 CALL                             R4 1 0
       79 LOADNIL                          R4
       80 RETURN                           R4 1
       81 GETUPVAL                         R4 1
       82 CALL                             R4 0 1
       83 JUMPIFNOT                        R4 ; [+76]
       84 NEWTABLE                         R4 0 0
       86 GETTABLEKS                       R5 R3 K10 ["Values"]
       88 LOADNIL                          R6
       89 LOADNIL                          R7
       90 FORGPREP                         R5
       91 DUPTABLE                         R12 K19 [{"id", "text"}]
       92 GETTABLEKS                       R13 R9 K4 ["Id"]
       94 SETTABLEKS                       R13 R12 K17 ["id"]
       96 GETTABLEKS                       R14 R9 K21 ["Text"]
       98 ORK                              R13 R14 K20 [""]
       99 SETTABLEKS                       R13 R12 K18 ["text"]
      101 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      103 MOVE                             R11 R4
      104 GETIMPORT                        R10 K24 [table.insert]
      106 CALL                             R10 2 0
      107 FORGLOOP                         R5 2 ; [-17]
      109 GETTABLEKS                       R8 R3 K12 ["Value"]
      111 ADDK                             R7 R8 K25 [1]
      112 GETTABLE                         R6 R4 R7
      113 JUMPIFNOT                        R6 ; [+7]
      114 GETTABLEKS                       R8 R3 K12 ["Value"]
      116 ADDK                             R7 R8 K25 [1]
      117 GETTABLE                         R6 R4 R7
      118 GETTABLEKS                       R5 R6 K17 ["id"]
      120 JUMP                             ; [+3]
      121 GETTABLEN                        R6 R4 1
      122 GETTABLEKS                       R5 R6 K17 ["id"]
      124 GETUPVAL                         R6 2
      125 NEWCLOSURE                       R7 P0
      126 CAPTURE                          UPVAL U3
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R0
      129 CAPTURE                          VAL R3
      130 NEWTABLE                         R8 0 1
      132 GETTABLEKS                       R9 R0 K26 ["Select"]
      134 SETLIST                          R8 R9 1 [1]
      136 CALL                             R6 2 1
      137 GETUPVAL                         R7 4
      138 GETUPVAL                         R8 5
      139 DUPTABLE                         R9 K33 [{"size", "value", "LayoutOrder", "segments", "onActivated", "testId"}]
      140 GETUPVAL                         R11 6
      141 GETTABLEKS                       R10 R11 K34 ["XSmall"]
      143 SETTABLEKS                       R10 R9 K27 ["size"]
      145 SETTABLEKS                       R5 R9 K28 ["value"]
      147 GETTABLEKS                       R10 R0 K29 ["LayoutOrder"]
      149 SETTABLEKS                       R10 R9 K29 ["LayoutOrder"]
      151 SETTABLEKS                       R4 R9 K30 ["segments"]
      153 SETTABLEKS                       R6 R9 K31 ["onActivated"]
      155 LOADK                            R10 K35 ["--segmented-control"]
      156 SETTABLEKS                       R10 R9 K32 ["testId"]
      158 CALL                             R7 2 -1
      159 RETURN                           R7 -1
      160 GETUPVAL                         R4 4
      161 GETUPVAL                         R5 7
      162 DUPTABLE                         R6 K39 [{"Uri", "LayoutOrder", "SelectedIndex", "Items", "OnItemActivated"}]
      163 GETUPVAL                         R8 0
      164 GETTABLEKS                       R7 R8 K40 ["child"]
      166 GETTABLEKS                       R8 R0 K41 ["WidgetUri"]
      168 GETTABLEKS                       R9 R1 K4 ["Id"]
      170 CALL                             R7 2 1
      171 SETTABLEKS                       R7 R6 K36 ["Uri"]
      173 GETTABLEKS                       R7 R0 K29 ["LayoutOrder"]
      175 SETTABLEKS                       R7 R6 K29 ["LayoutOrder"]
      177 GETTABLEKS                       R8 R3 K12 ["Value"]
      179 ADDK                             R7 R8 K25 [1]
      180 SETTABLEKS                       R7 R6 K37 ["SelectedIndex"]
      182 GETTABLEKS                       R7 R3 K10 ["Values"]
      184 SETTABLEKS                       R7 R6 K7 ["Items"]
      186 NEWCLOSURE                       R7 P1
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R3
      189 SETTABLEKS                       R7 R6 K38 ["OnItemActivated"]
      191 CALL                             R4 2 -1
      192 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["findIndex"]
       23 GETTABLEKS                       R4 R1 K10 ["createElement"]
       25 GETTABLEKS                       R5 R1 K11 ["useCallback"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R8 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R8 K12 ["Foundation"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R6 K13 ["SegmentedControl"]
       36 GETTABLEKS                       R9 R6 K14 ["Enums"]
       38 GETTABLEKS                       R8 R9 K15 ["InputSize"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R11 R0 K6 ["Packages"]
       44 GETTABLEKS                       R10 R11 K16 ["StudioFoundation"]
       46 CALL                             R9 1 1
       47 GETTABLEKS                       R11 R9 K17 ["Util"]
       49 GETTABLEKS                       R10 R11 K18 ["StudioUri"]
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R14 R0 K19 ["Src"]
       55 GETTABLEKS                       R13 R14 K20 ["Components"]
       57 GETTABLEKS                       R12 R13 K21 ["RibbonSegmentedButton"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R15 R0 K19 ["Src"]
       64 GETTABLEKS                       R14 R15 K22 ["SharedFlags"]
       66 GETTABLEKS                       R13 R14 K23 ["getFFlagSegmentedButtonMigration"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R17 R0 K19 ["Src"]
       73 GETTABLEKS                       R16 R17 K20 ["Components"]
       75 GETTABLEKS                       R15 R16 K24 ["ControlsView"]
       77 GETTABLEKS                       R14 R15 K25 ["ControlProps"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K5 [require]
       82 GETTABLEKS                       R16 R0 K19 ["Src"]
       84 GETTABLEKS                       R15 R16 K26 ["Types"]
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
