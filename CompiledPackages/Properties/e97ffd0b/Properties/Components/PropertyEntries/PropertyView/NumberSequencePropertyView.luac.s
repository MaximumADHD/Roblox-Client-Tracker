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
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_7:
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
       47 GETTABLEKS                       R10 R0 K10 ["specializedEditingUtils"]
       49 GETTABLEKS                       R10 R10 K11 ["usePropertyBoundWindow"]
       51 JUMPIFNOTEQKNIL                  R10 ; [+2]
       53 LOADB                            R9 0 +1
       54 LOADB                            R9 1
       55 FASTCALL2K                       ASSERT R9 K12 ; [+4]
       57 LOADK                            R10 K12 ["specializedEditingUtils.usePropertyBoundWindow must be provided"]
       58 GETIMPORT                        R8 K14 [assert]
       60 CALL                             R8 2 0
       61 GETTABLEKS                       R8 R0 K10 ["specializedEditingUtils"]
       63 GETTABLEKS                       R8 R8 K11 ["usePropertyBoundWindow"]
       65 DUPTABLE                         R9 K18 [{"Contents", "Size", "onStateChanged"}]
       66 GETUPVAL                         R10 2
       67 GETTABLEKS                       R10 R10 K19 ["createElement"]
       69 GETUPVAL                         R11 4
       70 DUPTABLE                         R12 K22 [{["tag"] = "size-full bg-surface-100"}]
       71 NEWTABLE                         R13 0 0
       73 CALL                             R10 3 1
       74 SETTABLEKS                       R10 R9 K15 ["Contents"]
       76 GETIMPORT                        R10 K25 [Vector2.new]
       78 LOADN                            R11 700
       79 LOADN                            R12 400
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K16 ["Size"]
       83 NEWCLOSURE                       R10 P4
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R10 R9 K17 ["onStateChanged"]
       87 CALL                             R8 1 1
       88 GETUPVAL                         R9 2
       89 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       91 NEWCLOSURE                       R10 P5
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R7
       97 NEWTABLE                         R11 0 4
       99 MOVE                             R12 R8
      100 GETTABLEKS                       R13 R0 K26 ["beginEditingAsync"]
      102 GETTABLEKS                       R14 R0 K27 ["finishEditing"]
      104 MOVE                             R15 R7
      105 SETLIST                          R11 R12 4 [1]
      107 CALL                             R9 2 1
      108 GETUPVAL                         R10 5
      109 CALL                             R10 0 1
      110 GETUPVAL                         R11 6
      111 CALL                             R11 0 1
      112 GETUPVAL                         R12 7
      113 GETUPVAL                         R13 4
      114 DUPTABLE                         R14 K29 [{["tag"] = "auto-y size-full-0 row flex-x-fill align-y-center items-center gap-xsmall"}]
      115 DUPTABLE                         R15 K34 [{"ConstantNumberInput", "GraphPreview", "ToggleButton", "WidgetPortal"}]
      116 GETUPVAL                         R16 7
      117 GETUPVAL                         R17 8
      118 DUPTABLE                         R18 K42 [{"LayoutOrder", "propertyPart", "readonly", "onEditStart", "onChange", "onEditFinish", "Visible"}]
      119 MOVE                             R19 R11
      120 CALL                             R19 0 1
      121 SETTABLEKS                       R19 R18 K35 ["LayoutOrder"]
      123 SETTABLEKS                       R6 R18 K36 ["propertyPart"]
      125 GETTABLEKS                       R19 R0 K0 ["getInfo"]
      127 CALL                             R19 0 1
      128 GETTABLEKS                       R19 R19 K37 ["readonly"]
      130 SETTABLEKS                       R19 R18 K37 ["readonly"]
      132 GETTABLEKS                       R19 R0 K26 ["beginEditingAsync"]
      134 SETTABLEKS                       R19 R18 K38 ["onEditStart"]
      136 SETTABLEKS                       R7 R18 K39 ["onChange"]
      138 GETTABLEKS                       R19 R0 K27 ["finishEditing"]
      140 SETTABLEKS                       R19 R18 K40 ["onEditFinish"]
      142 GETUPVAL                         R19 1
      143 GETTABLEKS                       R19 R19 K1 ["Bindings"]
      145 GETTABLEKS                       R19 R19 K2 ["map"]
      147 MOVE                             R20 R5
      148 DUPCLOSURE                       R21 K43 [PROTO_6]
      149 CALL                             R19 2 1
      150 SETTABLEKS                       R19 R18 K41 ["Visible"]
      152 CALL                             R16 2 1
      153 SETTABLEKS                       R16 R15 K30 ["ConstantNumberInput"]
      155 GETUPVAL                         R16 7
      156 GETUPVAL                         R17 4
      157 DUPTABLE                         R18 K46 [{["tag"] = "size-full-600 bg-surface-200 radius-small", ["LayoutOrder"], ["Visible"], ["onActivated"]}]
      158 MOVE                             R19 R11
      159 CALL                             R19 0 1
      160 SETTABLEKS                       R19 R18 K35 ["LayoutOrder"]
      162 SETTABLEKS                       R5 R18 K41 ["Visible"]
      164 GETTABLEKS                       R19 R8 K47 ["open"]
      166 SETTABLEKS                       R19 R18 K45 ["onActivated"]
      168 CALL                             R16 2 1
      169 SETTABLEKS                       R16 R15 K31 ["GraphPreview"]
      171 GETUPVAL                         R16 7
      172 GETUPVAL                         R17 9
      173 DUPTABLE                         R18 K52 [{"LayoutOrder", "size", "width", "icon", "variant", "onActivated"}]
      174 MOVE                             R19 R11
      175 CALL                             R19 0 1
      176 SETTABLEKS                       R19 R18 K35 ["LayoutOrder"]
      178 GETUPVAL                         R19 10
      179 GETTABLEKS                       R19 R19 K53 ["XSmall"]
      181 SETTABLEKS                       R19 R18 K48 ["size"]
      183 GETIMPORT                        R19 K55 [UDim.new]
      185 LOADN                            R20 0
      186 GETTABLEKS                       R21 R10 K16 ["Size"]
      188 GETTABLEKS                       R21 R21 K56 ["Size_800"]
      190 CALL                             R19 2 1
      191 SETTABLEKS                       R19 R18 K49 ["width"]
      193 GETUPVAL                         R19 11
      194 GETTABLEKS                       R19 R19 K57 ["ChartLine"]
      196 SETTABLEKS                       R19 R18 K50 ["icon"]
      198 GETUPVAL                         R19 12
      199 GETTABLEKS                       R19 R19 K58 ["Standard"]
      201 SETTABLEKS                       R19 R18 K51 ["variant"]
      203 SETTABLEKS                       R9 R18 K45 ["onActivated"]
      205 CALL                             R16 2 1
      206 SETTABLEKS                       R16 R15 K32 ["ToggleButton"]
      208 GETTABLEKS                       R16 R8 K59 ["portal"]
      210 SETTABLEKS                       R16 R15 K33 ["WidgetPortal"]
      212 CALL                             R12 3 -1
      213 RETURN                           R12 -1

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
       23 GETTABLEKS                       R5 R0 K10 ["PropertyEditorTypes"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["PropertyTypes"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R1 K12 ["React"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R1 K13 ["ReactUtils"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R1 K14 ["SignalsReact"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K6 [require]
       48 GETTABLEKS                       R10 R0 K15 ["Components"]
       50 GETTABLEKS                       R10 R10 K7 ["Util"]
       52 GETTABLEKS                       R10 R10 K16 ["Number"]
       54 GETTABLEKS                       R10 R10 K17 ["SingleNumberInput"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K18 ["PropertyInteraction"]
       61 GETTABLEKS                       R11 R11 K19 ["genericMultiplePart"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R3 K20 ["Enums"]
       66 GETTABLEKS                       R11 R11 K21 ["InputSize"]
       68 GETTABLEKS                       R12 R3 K20 ["Enums"]
       70 GETTABLEKS                       R12 R12 K22 ["IconName"]
       72 GETTABLEKS                       R13 R3 K20 ["Enums"]
       74 GETTABLEKS                       R13 R13 K23 ["ButtonVariant"]
       76 GETTABLEKS                       R14 R8 K24 ["useSignalBinding"]
       78 GETTABLEKS                       R15 R7 K25 ["createNextOrder"]
       80 GETTABLEKS                       R16 R6 K26 ["createElement"]
       82 GETTABLEKS                       R17 R3 K27 ["Hooks"]
       84 GETTABLEKS                       R17 R17 K28 ["useTokens"]
       86 GETTABLEKS                       R18 R3 K29 ["View"]
       88 GETTABLEKS                       R19 R3 K30 ["IconButton"]
       90 DUPCLOSURE                       R20 K31 [PROTO_7]
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R18
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R19
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R13
      104 RETURN                           R20 1
