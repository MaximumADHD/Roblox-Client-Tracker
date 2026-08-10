PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["parts"]
        2 GETTABLEKS                       R1 R1 K1 ["value"]
        4 GETTABLEKS                       R2 R1 K2 ["multiple"]
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K1 ["value"]
       11 GETTABLEKS                       R2 R2 K3 ["Keypoints"]
       13 LOADB                            R3 0
       14 LENGTH                           R4 R2
       15 JUMPIFNOTEQKN                    R4 K4 [2] ; [+11]
       17 GETTABLEN                        R4 R2 1
       18 GETTABLEKS                       R4 R4 K5 ["Value"]
       20 GETTABLEN                        R5 R2 2
       21 GETTABLEKS                       R5 R5 K5 ["Value"]
       23 JUMPIFEQ                         R4 R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 RETURN                           R3 1

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 NOT                              R2 R0
        3 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["parts"]
        2 GETTABLEKS                       R1 R1 K1 ["value"]
        4 GETTABLEKS                       R2 R1 K2 ["multiple"]
        6 JUMPIFNOT                        R2 ; [+2]
        7 GETUPVAL                         R2 0
        8 RETURN                           R2 1
        9 DUPTABLE                         R2 K4 [{["value"], ["multiple"] = False}]
       10 GETTABLEKS                       R4 R1 K1 ["value"]
       12 GETTABLEKS                       R4 R4 K5 ["Keypoints"]
       14 GETTABLEN                        R3 R4 1
       15 GETTABLEKS                       R3 R3 K6 ["Value"]
       17 SETTABLEKS                       R3 R2 K1 ["value"]
       19 RETURN                           R2 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["number"] ; [+2]
        7 RETURN                           R0 0
        8 GETIMPORT                        R1 K5 [NumberSequence.new]
       10 MOVE                             R2 R0
       11 MOVE                             R3 R0
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K6 ["setPart"]
       16 LOADK                            R3 K7 ["value"]
       17 MOVE                             R4 R1
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["parts"]
        7 GETTABLEKS                       R1 R1 K2 ["value"]
        9 GETTABLEKS                       R2 R1 K3 ["multiple"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETIMPORT                        R2 K6 [NumberSequence.new]
       14 LOADN                            R3 0
       15 LOADN                            R4 0
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1
       18 GETTABLEKS                       R2 R1 K2 ["value"]
       20 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPart"]
        3 LOADK                            R2 K1 ["value"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["finishEditing"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 NOT                              R0 R1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["open"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 NAMECALL                         R1 R1 K0 ["getValue"]
       14 CALL                             R1 1 1
       15 GETTABLEKS                       R1 R1 K2 ["value"]
       17 JUMPIFEQKNIL                     R1 ; [+14]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K3 ["beginEditingAsync"]
       22 CALL                             R2 0 0
       23 GETUPVAL                         R2 4
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K4 ["finishEditing"]
       29 GETIMPORT                        R3 K8 [Enum.FinishRecordingOperation.Commit]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K9 ["close"]
       35 CALL                             R2 0 0
       36 RETURN                           R0 0

PROTO_10:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["getInfo"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Bindings"]
        7 GETTABLEKS                       R2 R2 K2 ["map"]
        9 MOVE                             R3 R1
       10 DUPCLOSURE                       R4 K3 [PROTO_0]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["useBinding"]
       15 LOADB                            R4 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K1 ["Bindings"]
       20 GETTABLEKS                       R5 R5 K5 ["mapBindings2"]
       22 MOVE                             R6 R2
       23 MOVE                             R7 R3
       24 DUPCLOSURE                       R8 K6 [PROTO_1]
       25 CALL                             R5 3 1
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K1 ["Bindings"]
       29 GETTABLEKS                       R6 R6 K2 ["map"]
       31 MOVE                             R7 R1
       32 DUPCLOSURE                       R8 K7 [PROTO_2]
       33 CAPTURE                          UPVAL U3
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       38 NEWCLOSURE                       R8 P3
       39 CAPTURE                          VAL R0
       40 NEWTABLE                         R9 0 1
       42 GETTABLEKS                       R10 R0 K9 ["setPart"]
       44 SETLIST                          R9 R10 1 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       50 NEWCLOSURE                       R9 P4
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R10 0 1
       55 GETTABLEKS                       R11 R0 K0 ["getInfo"]
       57 SETLIST                          R10 R11 1 [1]
       59 CALL                             R8 2 1
       60 GETTABLEKS                       R11 R0 K11 ["specializedEditingUtils"]
       62 GETTABLEKS                       R11 R11 K12 ["usePropertyBoundWindow"]
       64 JUMPIFNOTEQKNIL                  R11 ; [+2]
       66 LOADB                            R10 0 +1
       67 LOADB                            R10 1
       68 FASTCALL2K                       ASSERT R10 K13 ; [+4]
       70 LOADK                            R11 K13 ["specializedEditingUtils.usePropertyBoundWindow must be provided"]
       71 GETIMPORT                        R9 K15 [assert]
       73 CALL                             R9 2 0
       74 GETTABLEKS                       R9 R0 K11 ["specializedEditingUtils"]
       76 GETTABLEKS                       R9 R9 K12 ["usePropertyBoundWindow"]
       78 DUPTABLE                         R10 K19 [{"Contents", "Size", "onStateChanged"}]
       79 GETUPVAL                         R11 2
       80 GETTABLEKS                       R11 R11 K20 ["createElement"]
       82 GETUPVAL                         R12 5
       83 DUPTABLE                         R13 K23 [{["tag"] = "size-full bg-surface-100"}]
       84 DUPTABLE                         R14 K25 [{"NumberSequence"}]
       85 GETUPVAL                         R15 6
       86 GETUPVAL                         R16 7
       87 DUPTABLE                         R17 K28 [{"NumberSequence", "beginEditingAsync", "setPart", "finishEditing"}]
       88 SETTABLEKS                       R8 R17 K24 ["NumberSequence"]
       90 GETTABLEKS                       R18 R0 K26 ["beginEditingAsync"]
       92 SETTABLEKS                       R18 R17 K26 ["beginEditingAsync"]
       94 NEWCLOSURE                       R18 P5
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R18 R17 K9 ["setPart"]
       98 NEWCLOSURE                       R18 P6
       99 CAPTURE                          VAL R0
      100 SETTABLEKS                       R18 R17 K27 ["finishEditing"]
      102 CALL                             R15 2 1
      103 SETTABLEKS                       R15 R14 K24 ["NumberSequence"]
      105 CALL                             R11 3 1
      106 SETTABLEKS                       R11 R10 K16 ["Contents"]
      108 GETIMPORT                        R11 K31 [Vector2.new]
      110 LOADN                            R12 700
      111 LOADN                            R13 250
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K17 ["Size"]
      115 NEWCLOSURE                       R11 P7
      116 CAPTURE                          VAL R4
      117 SETTABLEKS                       R11 R10 K18 ["onStateChanged"]
      119 CALL                             R9 1 1
      120 GETUPVAL                         R10 2
      121 GETTABLEKS                       R10 R10 K8 ["useCallback"]
      123 NEWCLOSURE                       R11 P8
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R7
      129 NEWTABLE                         R12 0 4
      131 MOVE                             R13 R9
      132 GETTABLEKS                       R14 R0 K26 ["beginEditingAsync"]
      134 GETTABLEKS                       R15 R0 K27 ["finishEditing"]
      136 MOVE                             R16 R7
      137 SETLIST                          R12 R13 4 [1]
      139 CALL                             R10 2 1
      140 GETUPVAL                         R11 8
      141 CALL                             R11 0 1
      142 GETUPVAL                         R12 9
      143 CALL                             R12 0 1
      144 GETUPVAL                         R13 6
      145 GETUPVAL                         R14 5
      146 DUPTABLE                         R15 K33 [{["tag"] = "auto-y size-full-0 row flex-x-fill align-y-center items-center gap-xsmall"}]
      147 DUPTABLE                         R16 K38 [{"ConstantNumberInput", "GraphPreview", "ToggleButton", "WidgetPortal"}]
      148 GETUPVAL                         R17 6
      149 GETUPVAL                         R18 10
      150 DUPTABLE                         R19 K46 [{"LayoutOrder", "propertyPart", "readonly", "onEditStart", "onChange", "onEditFinish", "Visible"}]
      151 MOVE                             R20 R12
      152 CALL                             R20 0 1
      153 SETTABLEKS                       R20 R19 K39 ["LayoutOrder"]
      155 SETTABLEKS                       R6 R19 K40 ["propertyPart"]
      157 GETTABLEKS                       R20 R0 K0 ["getInfo"]
      159 CALL                             R20 0 1
      160 GETTABLEKS                       R20 R20 K41 ["readonly"]
      162 SETTABLEKS                       R20 R19 K41 ["readonly"]
      164 GETTABLEKS                       R20 R0 K26 ["beginEditingAsync"]
      166 SETTABLEKS                       R20 R19 K42 ["onEditStart"]
      168 SETTABLEKS                       R7 R19 K43 ["onChange"]
      170 GETTABLEKS                       R20 R0 K27 ["finishEditing"]
      172 SETTABLEKS                       R20 R19 K44 ["onEditFinish"]
      174 GETUPVAL                         R20 1
      175 GETTABLEKS                       R20 R20 K1 ["Bindings"]
      177 GETTABLEKS                       R20 R20 K2 ["map"]
      179 MOVE                             R21 R5
      180 DUPCLOSURE                       R22 K47 [PROTO_10]
      181 CALL                             R20 2 1
      182 SETTABLEKS                       R20 R19 K45 ["Visible"]
      184 CALL                             R17 2 1
      185 SETTABLEKS                       R17 R16 K34 ["ConstantNumberInput"]
      187 GETUPVAL                         R17 6
      188 GETUPVAL                         R18 5
      189 DUPTABLE                         R19 K50 [{["tag"] = "size-full-600 bg-surface-200 radius-small", ["LayoutOrder"], ["Visible"], ["onActivated"]}]
      190 MOVE                             R20 R12
      191 CALL                             R20 0 1
      192 SETTABLEKS                       R20 R19 K39 ["LayoutOrder"]
      194 SETTABLEKS                       R5 R19 K45 ["Visible"]
      196 GETTABLEKS                       R20 R9 K51 ["open"]
      198 SETTABLEKS                       R20 R19 K49 ["onActivated"]
      200 CALL                             R17 2 1
      201 SETTABLEKS                       R17 R16 K35 ["GraphPreview"]
      203 GETUPVAL                         R17 6
      204 GETUPVAL                         R18 11
      205 DUPTABLE                         R19 K56 [{"LayoutOrder", "size", "width", "icon", "variant", "onActivated"}]
      206 MOVE                             R20 R12
      207 CALL                             R20 0 1
      208 SETTABLEKS                       R20 R19 K39 ["LayoutOrder"]
      210 GETUPVAL                         R20 12
      211 GETTABLEKS                       R20 R20 K57 ["XSmall"]
      213 SETTABLEKS                       R20 R19 K52 ["size"]
      215 GETIMPORT                        R20 K59 [UDim.new]
      217 LOADN                            R21 0
      218 GETTABLEKS                       R22 R11 K17 ["Size"]
      220 GETTABLEKS                       R22 R22 K60 ["Size_800"]
      222 CALL                             R20 2 1
      223 SETTABLEKS                       R20 R19 K53 ["width"]
      225 GETUPVAL                         R20 13
      226 GETTABLEKS                       R20 R20 K61 ["ChartLine"]
      228 SETTABLEKS                       R20 R19 K54 ["icon"]
      230 GETUPVAL                         R20 14
      231 GETTABLEKS                       R20 R20 K62 ["Standard"]
      233 SETTABLEKS                       R20 R19 K55 ["variant"]
      235 SETTABLEKS                       R10 R19 K49 ["onActivated"]
      237 CALL                             R17 2 1
      238 SETTABLEKS                       R17 R16 K36 ["ToggleButton"]
      240 GETTABLEKS                       R17 R9 K63 ["portal"]
      242 SETTABLEKS                       R17 R16 K37 ["WidgetPortal"]
      244 CALL                             R13 3 -1
      245 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["Expressions"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["PropertyEntries"]
       27 GETTABLEKS                       R5 R5 K12 ["PropertyView"]
       29 GETTABLEKS                       R5 R5 K13 ["NumberSequencePropertyView"]
       31 GETTABLEKS                       R5 R5 K14 ["NumberSequenceEditor"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K15 ["PropertyEditorTypes"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K16 ["PropertyTypes"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K17 ["React"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K18 ["ReactUtils"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R1 K19 ["Signals"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R1 K20 ["SignalsReact"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R0 K10 ["Components"]
       68 GETTABLEKS                       R12 R12 K7 ["Util"]
       70 GETTABLEKS                       R12 R12 K21 ["Number"]
       72 GETTABLEKS                       R12 R12 K22 ["SingleNumberInput"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K23 ["PropertyInteraction"]
       79 GETTABLEKS                       R13 R13 K24 ["genericMultiplePart"]
       81 CALL                             R12 1 1
       82 GETTABLEKS                       R13 R3 K25 ["Enums"]
       84 GETTABLEKS                       R13 R13 K26 ["InputSize"]
       86 GETTABLEKS                       R14 R3 K25 ["Enums"]
       88 GETTABLEKS                       R14 R14 K27 ["IconName"]
       90 GETTABLEKS                       R15 R3 K25 ["Enums"]
       92 GETTABLEKS                       R15 R15 K28 ["ButtonVariant"]
       94 GETTABLEKS                       R16 R10 K29 ["useSignalBinding"]
       96 GETTABLEKS                       R17 R8 K30 ["createNextOrder"]
       98 GETTABLEKS                       R18 R7 K31 ["createElement"]
      100 GETTABLEKS                       R19 R3 K32 ["Hooks"]
      102 GETTABLEKS                       R19 R19 K33 ["useTokens"]
      104 GETTABLEKS                       R20 R3 K34 ["View"]
      106 GETTABLEKS                       R21 R3 K35 ["IconButton"]
      108 DUPCLOSURE                       R22 K36 [PROTO_11]
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R20
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R19
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R21
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R15
      124 RETURN                           R22 1
