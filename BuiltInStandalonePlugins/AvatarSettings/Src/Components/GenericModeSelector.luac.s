PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onItemActivated"]
        3 GETTABLEKS                       R2 R0 K1 ["originalId"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["items"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 DUPTABLE                         R10 K5 [{"Id", "Label", "Description", "originalId"}]
       10 GETTABLEKS                       R12 R7 K1 ["Id"]
       12 FASTCALL1                        TOSTRING R12 ; [+2]
       13 GETIMPORT                        R11 K7 [tostring]
       15 CALL                             R11 1 1
       16 SETTABLEKS                       R11 R10 K1 ["Id"]
       18 GETTABLEKS                       R11 R7 K2 ["Label"]
       20 SETTABLEKS                       R11 R10 K2 ["Label"]
       22 GETTABLEKS                       R11 R7 K3 ["Description"]
       24 SETTABLEKS                       R11 R10 K3 ["Description"]
       26 GETTABLEKS                       R11 R7 K1 ["Id"]
       28 SETTABLEKS                       R11 R10 K4 ["originalId"]
       30 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       32 MOVE                             R9 R2
       33 GETIMPORT                        R8 K10 [table.insert]
       35 CALL                             R8 2 0
       36 FORGLOOP                         R3 2 ; [-28]
       38 GETUPVAL                         R3 1
       39 GETUPVAL                         R4 2
       40 NEWTABLE                         R5 4 0
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K11 ["Tag"]
       45 LOADK                            R7 K12 ["X-ColumnS X-Left"]
       46 SETTABLE                         R7 R5 R6
       47 GETIMPORT                        R6 K15 [UDim2.fromScale]
       49 LOADN                            R7 1
       50 LOADN                            R8 0
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K16 ["Size"]
       54 GETIMPORT                        R6 K20 [Enum.AutomaticSize.Y]
       56 SETTABLEKS                       R6 R5 K18 ["AutomaticSize"]
       58 GETTABLEKS                       R6 R0 K21 ["layoutOrder"]
       60 SETTABLEKS                       R6 R5 K22 ["LayoutOrder"]
       62 DUPTABLE                         R6 K25 [{"SegmentedButton", "SubText"}]
       63 GETUPVAL                         R7 1
       64 GETUPVAL                         R8 4
       65 DUPTABLE                         R9 K29 [{"Size", "Items", "SelectedId", "OnItemActivated", "LayoutOrder"}]
       66 GETIMPORT                        R10 K31 [UDim2.new]
       68 LOADN                            R11 1
       69 GETUPVAL                         R13 5
       70 GETTABLEKS                       R13 R13 K32 ["MODESELECTOR_SIDE_MARGIN"]
       72 MINUS                            R12 R13
       73 LOADN                            R13 0
       74 GETUPVAL                         R14 5
       75 GETTABLEKS                       R14 R14 K33 ["STANDARD_HEIGHT"]
       77 CALL                             R10 4 1
       78 SETTABLEKS                       R10 R9 K16 ["Size"]
       80 SETTABLEKS                       R2 R9 K26 ["Items"]
       82 GETTABLEKS                       R11 R0 K34 ["selected"]
       84 JUMPIFNOT                        R11 ; [+7]
       85 GETTABLEKS                       R11 R0 K34 ["selected"]
       87 FASTCALL1                        TOSTRING R11 ; [+2]
       88 GETIMPORT                        R10 K7 [tostring]
       90 CALL                             R10 1 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R10
       93 SETTABLEKS                       R10 R9 K27 ["SelectedId"]
       95 NEWCLOSURE                       R10 P0
       96 CAPTURE                          VAL R0
       97 SETTABLEKS                       R10 R9 K28 ["OnItemActivated"]
       99 MOVE                             R10 R1
      100 CALL                             R10 0 1
      101 SETTABLEKS                       R10 R9 K22 ["LayoutOrder"]
      103 CALL                             R7 2 1
      104 SETTABLEKS                       R7 R6 K23 ["SegmentedButton"]
      106 GETTABLEKS                       R7 R0 K35 ["subText"]
      108 JUMPIFNOT                        R7 ; [+45]
      109 GETUPVAL                         R7 1
      110 LOADK                            R8 K36 ["TextLabel"]
      111 NEWTABLE                         R9 4 0
      113 GETUPVAL                         R10 3
      114 GETTABLEKS                       R10 R10 K11 ["Tag"]
      116 LOADK                            R11 K37 ["Component-TextLabel GenericModeSelector-Subtext"]
      117 SETTABLE                         R11 R9 R10
      118 GETIMPORT                        R10 K31 [UDim2.new]
      120 LOADN                            R11 1
      121 GETUPVAL                         R13 5
      122 GETTABLEKS                       R13 R13 K32 ["MODESELECTOR_SIDE_MARGIN"]
      124 MINUS                            R12 R13
      125 LOADN                            R13 0
      126 LOADN                            R14 0
      127 CALL                             R10 4 1
      128 SETTABLEKS                       R10 R9 K16 ["Size"]
      130 GETTABLEKS                       R10 R0 K35 ["subText"]
      132 SETTABLEKS                       R10 R9 K38 ["Text"]
      134 MOVE                             R10 R1
      135 CALL                             R10 0 1
      136 SETTABLEKS                       R10 R9 K22 ["LayoutOrder"]
      138 DUPTABLE                         R10 K40 [{"Tooltip"}]
      139 GETUPVAL                         R11 1
      140 GETUPVAL                         R12 6
      141 DUPTABLE                         R13 K42 [{"ShowDelay", "Text"}]
      142 GETUPVAL                         R14 7
      143 CALL                             R14 0 1
      144 SETTABLEKS                       R14 R13 K41 ["ShowDelay"]
      146 GETTABLEKS                       R14 R0 K35 ["subText"]
      148 SETTABLEKS                       R14 R13 K38 ["Text"]
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R10 K39 ["Tooltip"]
      153 CALL                             R7 3 1
      154 SETTABLEKS                       R7 R6 K24 ["SubText"]
      156 CALL                             R3 3 -1
      157 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K7 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["getHoverTooltipDelay"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K14 ["UI"]
       48 GETTABLEKS                       R7 R6 K15 ["Pane"]
       50 GETTABLEKS                       R8 R6 K16 ["SegmentedButton"]
       52 GETTABLEKS                       R9 R6 K17 ["Tooltip"]
       54 GETTABLEKS                       R10 R4 K18 ["createNextOrder"]
       56 GETTABLEKS                       R11 R3 K19 ["createElement"]
       58 DUPCLOSURE                       R12 K20 [PROTO_1]
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R5
       67 RETURN                           R12 1
