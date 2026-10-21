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
        0 GETIMPORT                        R1 K2 [NumberSequence.new]
        2 MOVE                             R2 R0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["value"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R2 R0 K0 ["value"]
        6 FASTCALL1                        TYPEOF R2 ; [+2]
        7 GETIMPORT                        R1 K2 [typeof]
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKS                    R1 K3 ["number"] ; [+7]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R0
       15 DUPCLOSURE                       R4 K4 [PROTO_2]
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETIMPORT                        R0 K2 [NumberSequence.new]
        4 LOADN                            R1 0
        5 LOADN                            R2 0
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K3 ["Keypoints"]
        9 RETURN                           R0 1

PROTO_7:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 NOT                              R2 R0
        3 RETURN                           R2 1

PROTO_8:
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
       17 JUMPIFEQKNIL                     R1 ; [+11]
       19 GETUPVAL                         R2 3
       20 DUPTABLE                         R3 K5 [{["type"] = "Edit", ["value"]}]
       21 GETIMPORT                        R4 K8 [NumberSequence.new]
       23 MOVE                             R5 R1
       24 MOVE                             R6 R1
       25 CALL                             R4 2 1
       26 SETTABLEKS                       R4 R3 K2 ["value"]
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K9 ["close"]
       32 CALL                             R2 0 0
       33 RETURN                           R0 0

PROTO_9:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_10:
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
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["Bindings"]
       15 GETTABLEKS                       R3 R3 K2 ["map"]
       17 MOVE                             R4 R1
       18 DUPCLOSURE                       R5 K4 [PROTO_1]
       19 CAPTURE                          UPVAL U2
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R5 R0 K5 ["editProperty"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K6 ["useEventCallback"]
       28 NEWCLOSURE                       R6 P2
       29 CAPTURE                          VAL R4
       30 CAPTURE                          UPVAL U4
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R8 R0 K7 ["specializedEditingUtils"]
       34 GETTABLEKS                       R8 R8 K8 ["usePropertyBoundWindow"]
       36 JUMPIFNOTEQKNIL                  R8 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       42 LOADK                            R8 K9 ["specializedEditingUtils.usePropertyBoundWindow must be provided"]
       43 GETIMPORT                        R6 K11 [assert]
       45 CALL                             R6 2 0
       46 GETTABLEKS                       R6 R0 K7 ["specializedEditingUtils"]
       48 GETTABLEKS                       R6 R6 K8 ["usePropertyBoundWindow"]
       50 CALL                             R6 0 1
       51 GETUPVAL                         R7 5
       52 GETTABLEKS                       R7 R7 K12 ["useSignalBinding"]
       54 GETTABLEKS                       R8 R6 K13 ["isOpenSignal"]
       56 JUMPIF                           R8 ; [+5]
       57 GETUPVAL                         R8 6
       58 GETTABLEKS                       R8 R8 K14 ["createSignal"]
       60 LOADB                            R9 0
       61 CALL                             R8 1 1
       62 CALL                             R7 1 1
       63 GETUPVAL                         R8 7
       64 GETTABLEKS                       R8 R8 K15 ["useMemo"]
       66 NEWCLOSURE                       R9 P3
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R10 0 1
       71 GETTABLEKS                       R11 R0 K0 ["getInfo"]
       73 SETLIST                          R10 R11 1 [1]
       75 CALL                             R8 2 1
       76 GETTABLEKS                       R9 R6 K16 ["localPropertySignal"]
       78 GETUPVAL                         R10 8
       79 OR                               R11 R9 R8
       80 CALL                             R10 1 1
       81 GETUPVAL                         R11 7
       82 GETTABLEKS                       R11 R11 K15 ["useMemo"]
       84 NEWCLOSURE                       R12 P4
       85 CAPTURE                          VAL R10
       86 NEWTABLE                         R13 0 1
       88 MOVE                             R14 R10
       89 SETLIST                          R13 R14 1 [1]
       91 CALL                             R11 2 1
       92 GETUPVAL                         R12 1
       93 GETTABLEKS                       R12 R12 K1 ["Bindings"]
       95 GETTABLEKS                       R12 R12 K17 ["mapBindings2"]
       97 MOVE                             R13 R2
       98 MOVE                             R14 R7
       99 DUPCLOSURE                       R15 K18 [PROTO_7]
      100 CALL                             R12 3 1
      101 GETUPVAL                         R13 7
      102 GETTABLEKS                       R13 R13 K19 ["useCallback"]
      104 NEWCLOSURE                       R14 P6
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R4
      109 NEWTABLE                         R15 0 2
      111 MOVE                             R16 R6
      112 MOVE                             R17 R4
      113 SETLIST                          R15 R16 2 [1]
      115 CALL                             R13 2 1
      116 GETUPVAL                         R14 9
      117 CALL                             R14 0 1
      118 GETUPVAL                         R15 10
      119 CALL                             R15 0 1
      120 GETUPVAL                         R16 11
      121 GETUPVAL                         R17 12
      122 DUPTABLE                         R18 K22 [{["tag"] = "row flex-x-fill align-y-center items-center gap-xsmall size-full-0 auto-y"}]
      123 DUPTABLE                         R19 K26 [{"ConstantNumberInput", "GraphPreview", "ToggleButton"}]
      124 GETUPVAL                         R20 11
      125 GETUPVAL                         R21 13
      126 DUPTABLE                         R22 K32 [{"LayoutOrder", "propertyPart", "readonly", "onEdit", "Visible"}]
      127 MOVE                             R23 R15
      128 CALL                             R23 0 1
      129 SETTABLEKS                       R23 R22 K27 ["LayoutOrder"]
      131 SETTABLEKS                       R3 R22 K28 ["propertyPart"]
      133 GETTABLEKS                       R23 R0 K0 ["getInfo"]
      135 CALL                             R23 0 1
      136 GETTABLEKS                       R23 R23 K29 ["readonly"]
      138 SETTABLEKS                       R23 R22 K29 ["readonly"]
      140 SETTABLEKS                       R5 R22 K30 ["onEdit"]
      142 GETUPVAL                         R23 1
      143 GETTABLEKS                       R23 R23 K1 ["Bindings"]
      145 GETTABLEKS                       R23 R23 K2 ["map"]
      147 MOVE                             R24 R12
      148 DUPCLOSURE                       R25 K33 [PROTO_9]
      149 CALL                             R23 2 1
      150 SETTABLEKS                       R23 R22 K31 ["Visible"]
      152 CALL                             R20 2 1
      153 SETTABLEKS                       R20 R19 K23 ["ConstantNumberInput"]
      155 GETUPVAL                         R20 11
      156 GETUPVAL                         R21 12
      157 DUPTABLE                         R22 K36 [{["tag"] = "size-full-600 radius-small bg-surface-300", ["LayoutOrder"], ["Visible"], ["onActivated"]}]
      158 MOVE                             R23 R15
      159 CALL                             R23 0 1
      160 SETTABLEKS                       R23 R22 K27 ["LayoutOrder"]
      162 SETTABLEKS                       R12 R22 K31 ["Visible"]
      164 GETTABLEKS                       R23 R6 K37 ["openAsync"]
      166 SETTABLEKS                       R23 R22 K35 ["onActivated"]
      168 DUPTABLE                         R23 K39 [{"Graph"}]
      169 GETUPVAL                         R24 11
      170 GETUPVAL                         R25 14
      171 DUPTABLE                         R26 K41 [{"keypoints"}]
      172 SETTABLEKS                       R11 R26 K40 ["keypoints"]
      174 CALL                             R24 2 1
      175 SETTABLEKS                       R24 R23 K38 ["Graph"]
      177 CALL                             R20 3 1
      178 SETTABLEKS                       R20 R19 K24 ["GraphPreview"]
      180 GETUPVAL                         R20 11
      181 GETUPVAL                         R21 12
      182 DUPTABLE                         R22 K44 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center no-flex size-600-600 radius-small", ["backgroundStyle"], ["onActivated"]}]
      183 MOVE                             R23 R15
      184 CALL                             R23 0 1
      185 SETTABLEKS                       R23 R22 K27 ["LayoutOrder"]
      187 GETUPVAL                         R23 1
      188 GETTABLEKS                       R23 R23 K1 ["Bindings"]
      190 GETTABLEKS                       R23 R23 K2 ["map"]
      192 MOVE                             R24 R12
      193 NEWCLOSURE                       R25 P8
      194 CAPTURE                          VAL R14
      195 CALL                             R23 2 1
      196 SETTABLEKS                       R23 R22 K43 ["backgroundStyle"]
      198 SETTABLEKS                       R13 R22 K35 ["onActivated"]
      200 DUPTABLE                         R23 K46 [{"Icon"}]
      201 GETUPVAL                         R24 11
      202 GETUPVAL                         R25 15
      203 DUPTABLE                         R26 K49 [{"name", "size"}]
      204 GETUPVAL                         R27 16
      205 GETTABLEKS                       R27 R27 K50 ["IconName"]
      207 GETTABLEKS                       R27 R27 K51 ["ChartLine"]
      209 SETTABLEKS                       R27 R26 K47 ["name"]
      211 GETUPVAL                         R27 16
      212 GETTABLEKS                       R27 R27 K52 ["IconSize"]
      214 GETTABLEKS                       R27 R27 K53 ["Small"]
      216 SETTABLEKS                       R27 R26 K48 ["size"]
      218 CALL                             R24 2 1
      219 SETTABLEKS                       R24 R23 K45 ["Icon"]
      221 CALL                             R20 3 1
      222 SETTABLEKS                       R20 R19 K25 ["ToggleButton"]
      224 CALL                             R16 3 -1
      225 RETURN                           R16 -1

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
       56 GETTABLEKS                       R10 R0 K19 ["RpcTypes"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R1 K20 ["Signals"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R1 K21 ["SignalsReact"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K6 [require]
       71 GETTABLEKS                       R13 R0 K10 ["Components"]
       73 GETTABLEKS                       R13 R13 K7 ["Util"]
       75 GETTABLEKS                       R13 R13 K22 ["Number"]
       77 GETTABLEKS                       R13 R13 K23 ["SingleNumberInput"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K24 ["PropertyInteraction"]
       84 GETTABLEKS                       R14 R14 K25 ["genericMultiplePart"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R15 R0 K10 ["Components"]
       91 GETTABLEKS                       R15 R15 K7 ["Util"]
       93 GETTABLEKS                       R15 R15 K26 ["EditingOperation"]
       95 GETTABLEKS                       R15 R15 K27 ["mapValueEditingOperationValue"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K28 ["Hooks"]
      102 GETTABLEKS                       R16 R16 K29 ["useEditValue"]
      104 CALL                             R15 1 1
      105 GETTABLEKS                       R16 R11 K30 ["useSignalBinding"]
      107 GETTABLEKS                       R17 R11 K31 ["useSignalState"]
      109 GETTABLEKS                       R18 R8 K32 ["createNextOrder"]
      111 GETTABLEKS                       R19 R7 K33 ["createElement"]
      113 GETTABLEKS                       R20 R3 K28 ["Hooks"]
      115 GETTABLEKS                       R20 R20 K34 ["useTokens"]
      117 GETTABLEKS                       R21 R3 K35 ["View"]
      119 GETTABLEKS                       R22 R3 K36 ["Icon"]
      121 GETTABLEKS                       R23 R3 K37 ["Enums"]
      123 DUPCLOSURE                       R24 K38 [PROTO_11]
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R19
      136 CAPTURE                          VAL R21
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R22
      140 CAPTURE                          VAL R23
      141 RETURN                           R24 1
