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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETIMPORT                        R0 K2 [NumberSequence.new]
        4 LOADN                            R1 0
        5 LOADN                            R2 0
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K3 ["Keypoints"]
        9 RETURN                           R0 1

PROTO_6:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 NOT                              R2 R0
        3 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 NOT                              R0 R1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["openAsync"]
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

PROTO_8:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Color"]
        4 GETTABLEKS                       R2 R2 K4 ["Surface"]
        6 GETTABLEKS                       R2 R2 K5 ["Surface_300"]
        8 GETTABLEKS                       R2 R2 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 JUMPIFNOT                        R0 ; [+2]
       13 LOADN                            R2 0
       14 JUMP                             ; [+1]
       15 LOADN                            R2 1
       16 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       18 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["getInfo"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Bindings"]
        7 GETTABLEKS                       R2 R2 K2 ["map"]
        9 MOVE                             R3 R1
       10 DUPCLOSURE                       R4 K3 [PROTO_0]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["Bindings"]
       15 GETTABLEKS                       R3 R3 K2 ["map"]
       17 MOVE                             R4 R1
       18 DUPCLOSURE                       R5 K4 [PROTO_1]
       19 CAPTURE                          UPVAL U2
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       24 NEWCLOSURE                       R5 P2
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 1
       28 GETTABLEKS                       R7 R0 K6 ["setPart"]
       30 SETLIST                          R6 R7 1 [1]
       32 CALL                             R4 2 1
       33 GETTABLEKS                       R7 R0 K7 ["specializedEditingUtils"]
       35 GETTABLEKS                       R7 R7 K8 ["usePropertyBoundWindow"]
       37 JUMPIFNOTEQKNIL                  R7 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       43 LOADK                            R7 K9 ["specializedEditingUtils.usePropertyBoundWindow must be provided"]
       44 GETIMPORT                        R5 K11 [assert]
       46 CALL                             R5 2 0
       47 GETTABLEKS                       R5 R0 K7 ["specializedEditingUtils"]
       49 GETTABLEKS                       R5 R5 K8 ["usePropertyBoundWindow"]
       51 CALL                             R5 0 1
       52 GETUPVAL                         R6 4
       53 GETTABLEKS                       R6 R6 K12 ["useSignalBinding"]
       55 GETTABLEKS                       R7 R5 K13 ["isOpenSignal"]
       57 JUMPIF                           R7 ; [+5]
       58 GETUPVAL                         R7 5
       59 GETTABLEKS                       R7 R7 K14 ["createSignal"]
       61 LOADB                            R8 0
       62 CALL                             R7 1 1
       63 CALL                             R6 1 1
       64 GETUPVAL                         R7 3
       65 GETTABLEKS                       R7 R7 K15 ["useMemo"]
       67 NEWCLOSURE                       R8 P3
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R9 0 1
       72 GETTABLEKS                       R10 R0 K0 ["getInfo"]
       74 SETLIST                          R9 R10 1 [1]
       76 CALL                             R7 2 1
       77 GETTABLEKS                       R8 R5 K16 ["localPropertySignal"]
       79 GETUPVAL                         R9 6
       80 OR                               R10 R8 R7
       81 CALL                             R9 1 1
       82 GETUPVAL                         R10 3
       83 GETTABLEKS                       R10 R10 K15 ["useMemo"]
       85 NEWCLOSURE                       R11 P4
       86 CAPTURE                          VAL R9
       87 NEWTABLE                         R12 0 1
       89 MOVE                             R13 R9
       90 SETLIST                          R12 R13 1 [1]
       92 CALL                             R10 2 1
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R11 R11 K1 ["Bindings"]
       96 GETTABLEKS                       R11 R11 K17 ["mapBindings2"]
       98 MOVE                             R12 R2
       99 MOVE                             R13 R6
      100 DUPCLOSURE                       R14 K18 [PROTO_6]
      101 CALL                             R11 3 1
      102 GETUPVAL                         R12 3
      103 GETTABLEKS                       R12 R12 K5 ["useCallback"]
      105 NEWCLOSURE                       R13 P6
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R4
      111 NEWTABLE                         R14 0 4
      113 MOVE                             R15 R5
      114 GETTABLEKS                       R16 R0 K19 ["beginEditingAsync"]
      116 GETTABLEKS                       R17 R0 K20 ["finishEditing"]
      118 MOVE                             R18 R4
      119 SETLIST                          R14 R15 4 [1]
      121 CALL                             R12 2 1
      122 GETUPVAL                         R13 7
      123 CALL                             R13 0 1
      124 GETUPVAL                         R14 8
      125 CALL                             R14 0 1
      126 GETUPVAL                         R15 9
      127 GETUPVAL                         R16 10
      128 DUPTABLE                         R17 K23 [{["tag"] = "row flex-x-fill align-y-center items-center gap-xsmall size-full-0 auto-y"}]
      129 DUPTABLE                         R18 K27 [{"ConstantNumberInput", "GraphPreview", "ToggleButton"}]
      130 GETUPVAL                         R19 9
      131 GETUPVAL                         R20 11
      132 DUPTABLE                         R21 K35 [{"LayoutOrder", "propertyPart", "readonly", "onEditStart", "onChange", "onEditFinish", "Visible"}]
      133 MOVE                             R22 R14
      134 CALL                             R22 0 1
      135 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      137 SETTABLEKS                       R3 R21 K29 ["propertyPart"]
      139 GETTABLEKS                       R22 R0 K0 ["getInfo"]
      141 CALL                             R22 0 1
      142 GETTABLEKS                       R22 R22 K30 ["readonly"]
      144 SETTABLEKS                       R22 R21 K30 ["readonly"]
      146 GETTABLEKS                       R22 R0 K19 ["beginEditingAsync"]
      148 SETTABLEKS                       R22 R21 K31 ["onEditStart"]
      150 SETTABLEKS                       R4 R21 K32 ["onChange"]
      152 GETTABLEKS                       R22 R0 K20 ["finishEditing"]
      154 SETTABLEKS                       R22 R21 K33 ["onEditFinish"]
      156 GETUPVAL                         R22 1
      157 GETTABLEKS                       R22 R22 K1 ["Bindings"]
      159 GETTABLEKS                       R22 R22 K2 ["map"]
      161 MOVE                             R23 R11
      162 DUPCLOSURE                       R24 K36 [PROTO_8]
      163 CALL                             R22 2 1
      164 SETTABLEKS                       R22 R21 K34 ["Visible"]
      166 CALL                             R19 2 1
      167 SETTABLEKS                       R19 R18 K24 ["ConstantNumberInput"]
      169 GETUPVAL                         R19 9
      170 GETUPVAL                         R20 10
      171 DUPTABLE                         R21 K39 [{["tag"] = "size-full-600 radius-small bg-surface-300", ["LayoutOrder"], ["Visible"], ["onActivated"]}]
      172 MOVE                             R22 R14
      173 CALL                             R22 0 1
      174 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      176 SETTABLEKS                       R11 R21 K34 ["Visible"]
      178 GETTABLEKS                       R22 R5 K40 ["openAsync"]
      180 SETTABLEKS                       R22 R21 K38 ["onActivated"]
      182 DUPTABLE                         R22 K42 [{"Graph"}]
      183 GETUPVAL                         R23 9
      184 GETUPVAL                         R24 12
      185 DUPTABLE                         R25 K44 [{"keypoints"}]
      186 SETTABLEKS                       R10 R25 K43 ["keypoints"]
      188 CALL                             R23 2 1
      189 SETTABLEKS                       R23 R22 K41 ["Graph"]
      191 CALL                             R19 3 1
      192 SETTABLEKS                       R19 R18 K25 ["GraphPreview"]
      194 GETUPVAL                         R19 9
      195 GETUPVAL                         R20 10
      196 DUPTABLE                         R21 K47 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center no-flex size-600-600 radius-small", ["backgroundStyle"], ["onActivated"]}]
      197 MOVE                             R22 R14
      198 CALL                             R22 0 1
      199 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      201 GETUPVAL                         R22 1
      202 GETTABLEKS                       R22 R22 K1 ["Bindings"]
      204 GETTABLEKS                       R22 R22 K2 ["map"]
      206 MOVE                             R23 R11
      207 NEWCLOSURE                       R24 P8
      208 CAPTURE                          VAL R13
      209 CALL                             R22 2 1
      210 SETTABLEKS                       R22 R21 K46 ["backgroundStyle"]
      212 SETTABLEKS                       R12 R21 K38 ["onActivated"]
      214 DUPTABLE                         R22 K49 [{"Icon"}]
      215 GETUPVAL                         R23 9
      216 GETUPVAL                         R24 13
      217 DUPTABLE                         R25 K52 [{"name", "size"}]
      218 GETUPVAL                         R26 14
      219 GETTABLEKS                       R26 R26 K53 ["IconName"]
      221 GETTABLEKS                       R26 R26 K54 ["ChartLine"]
      223 SETTABLEKS                       R26 R25 K50 ["name"]
      225 GETUPVAL                         R26 14
      226 GETTABLEKS                       R26 R26 K55 ["IconSize"]
      228 GETTABLEKS                       R26 R26 K56 ["Small"]
      230 SETTABLEKS                       R26 R25 K51 ["size"]
      232 CALL                             R23 2 1
      233 SETTABLEKS                       R23 R22 K48 ["Icon"]
      235 CALL                             R19 3 1
      236 SETTABLEKS                       R19 R18 K26 ["ToggleButton"]
      238 CALL                             R15 3 -1
      239 RETURN                           R15 -1

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
       31 GETTABLEKS                       R5 R5 K14 ["NumberSequenceInlineGraph"]
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
       82 GETTABLEKS                       R13 R10 K25 ["useSignalBinding"]
       84 GETTABLEKS                       R14 R10 K26 ["useSignalState"]
       86 GETTABLEKS                       R15 R8 K27 ["createNextOrder"]
       88 GETTABLEKS                       R16 R7 K28 ["createElement"]
       90 GETTABLEKS                       R17 R3 K29 ["Hooks"]
       92 GETTABLEKS                       R17 R17 K30 ["useTokens"]
       94 GETTABLEKS                       R18 R3 K31 ["View"]
       96 GETTABLEKS                       R19 R3 K32 ["Icon"]
       98 GETTABLEKS                       R20 R3 K33 ["Enums"]
      100 DUPCLOSURE                       R21 K34 [PROTO_10]
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R18
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R19
      115 CAPTURE                          VAL R20
      116 RETURN                           R21 1
