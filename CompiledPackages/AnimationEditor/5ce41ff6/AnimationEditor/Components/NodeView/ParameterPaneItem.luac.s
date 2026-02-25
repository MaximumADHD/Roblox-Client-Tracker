PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["label"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K1 ["enable"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R0 R1 K2 ["current"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R1 R2 K2 ["current"]
       16 GETTABLEKS                       R0 R1 K3 ["focus"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["label"]
        4 JUMPIFEQ                         R0 R1 ; [+6]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["onLabelRename"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K2 ["disable"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Type"]
        3 JUMPIFEQKS                       R0 K1 ["Enum"] ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["Type"]
        8 RETURN                           R0 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["value"]
       12 FASTCALL1                        TYPEOF R3 ; [+2]
       13 GETIMPORT                        R2 K4 [typeof]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K5 ["EnumItem"] ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 FASTCALL1                        ASSERT R1 ; [+2]
       21 GETIMPORT                        R0 K7 [assert]
       23 CALL                             R0 1 0
       24 LOADK                            R1 K8 ["Enum."]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K2 ["value"]
       28 GETTABLEKS                       R3 R4 K9 ["EnumType"]
       30 FASTCALL1                        TOSTRING R3 ; [+2]
       31 GETIMPORT                        R2 K11 [tostring]
       33 CALL                             R2 1 1
       34 CONCAT                           R0 R1 R2
       35 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onValueChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useToggleState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K2 ["useState"]
       13 GETTABLEKS                       R4 R0 K3 ["label"]
       15 CALL                             R3 1 2
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R7 0 4
       26 MOVE                             R8 R4
       27 GETTABLEKS                       R9 R0 K3 ["label"]
       29 MOVE                             R10 R1
       30 MOVE                             R11 R2
       31 SETLIST                          R7 R8 4 [1]
       33 CALL                             R5 2 1
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 NEWTABLE                         R8 0 3
       43 MOVE                             R9 R3
       44 MOVE                             R10 R1
       45 GETTABLEKS                       R11 R0 K5 ["onLabelRename"]
       47 SETLIST                          R8 R9 3 [1]
       49 CALL                             R6 2 1
       50 GETIMPORT                        R7 K8 [UDim.new]
       52 LOADN                            R8 0
       53 GETUPVAL                         R11 2
       54 GETTABLEKS                       R10 R11 K9 ["Hooks"]
       56 GETTABLEKS                       R9 R10 K10 ["useScaledValue"]
       58 LOADN                            R10 200
       59 CALL                             R9 1 -1
       60 CALL                             R7 -1 1
       61 GETIMPORT                        R8 K8 [UDim.new]
       63 LOADN                            R9 0
       64 LOADN                            R10 82
       65 CALL                             R8 2 1
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R9 R10 K11 ["useMemo"]
       69 NEWCLOSURE                       R10 P2
       70 CAPTURE                          VAL R0
       71 NEWTABLE                         R11 0 1
       73 GETTABLEKS                       R12 R0 K12 ["Type"]
       75 SETLIST                          R11 R12 1 [1]
       77 CALL                             R9 2 1
       78 GETUPVAL                         R11 1
       79 GETTABLEKS                       R10 R11 K13 ["createElement"]
       81 GETUPVAL                         R11 3
       82 DUPTABLE                         R12 K20 [{"LayoutOrder", "Value", "Type", "tags", "Name", "Label", "OnChanged"}]
       83 LOADN                            R13 2
       84 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       86 GETTABLEKS                       R13 R0 K21 ["value"]
       88 SETTABLEKS                       R13 R12 K15 ["Value"]
       90 SETTABLEKS                       R9 R12 K12 ["Type"]
       92 LOADK                            R13 K22 ["size-2100-500"]
       93 SETTABLEKS                       R13 R12 K16 ["tags"]
       95 LOADK                            R13 K23 [""]
       96 SETTABLEKS                       R13 R12 K17 ["Name"]
       98 LOADNIL                          R13
       99 SETTABLEKS                       R13 R12 K18 ["Label"]
      101 NEWCLOSURE                       R13 P3
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R13 R12 K19 ["OnChanged"]
      105 CALL                             R10 2 1
      106 GETUPVAL                         R12 1
      107 GETTABLEKS                       R11 R12 K13 ["createElement"]
      109 GETUPVAL                         R13 2
      110 GETTABLEKS                       R12 R13 K24 ["View"]
      112 DUPTABLE                         R13 K27 [{"tag", "Size"}]
      113 LOADK                            R14 K28 ["flex-x-around gap-small row align-x-center align-y-center padding-y-xxsmall auto-y"]
      114 SETTABLEKS                       R14 R13 K25 ["tag"]
      116 GETIMPORT                        R14 K30 [UDim2.new]
      118 LOADN                            R15 0
      119 GETUPVAL                         R18 2
      120 GETTABLEKS                       R17 R18 K9 ["Hooks"]
      122 GETTABLEKS                       R16 R17 K10 ["useScaledValue"]
      124 LOADN                            R17 200
      125 CALL                             R16 1 1
      126 LOADN                            R17 0
      127 LOADN                            R18 0
      128 CALL                             R14 4 1
      129 SETTABLEKS                       R14 R13 K26 ["Size"]
      131 DUPTABLE                         R14 K33 [{"LabelContainer", "Input"}]
      132 GETUPVAL                         R16 1
      133 GETTABLEKS                       R15 R16 K13 ["createElement"]
      135 GETUPVAL                         R17 2
      136 GETTABLEKS                       R16 R17 K24 ["View"]
      138 DUPTABLE                         R17 K34 [{"LayoutOrder", "tag"}]
      139 LOADN                            R18 1
      140 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      142 LOADK                            R18 K35 ["row align-x-center align-y-center size-2100-500 auto-none"]
      143 SETTABLEKS                       R18 R17 K25 ["tag"]
      145 DUPTABLE                         R18 K38 [{"LabelText", "LabelTextInput"}]
      146 GETUPVAL                         R20 1
      147 GETTABLEKS                       R19 R20 K13 ["createElement"]
      149 GETUPVAL                         R21 2
      150 GETTABLEKS                       R20 R21 K39 ["InputLabel"]
      152 DUPTABLE                         R21 K45 [{"LayoutOrder", "tag", "Text", "size", "Visible", "onActivated", "width"}]
      153 LOADN                            R22 1
      154 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      156 LOADK                            R22 K46 ["size-full-full"]
      157 SETTABLEKS                       R22 R21 K25 ["tag"]
      159 GETTABLEKS                       R22 R0 K3 ["label"]
      161 SETTABLEKS                       R22 R21 K40 ["Text"]
      163 GETUPVAL                         R25 2
      164 GETTABLEKS                       R24 R25 K47 ["Enums"]
      166 GETTABLEKS                       R23 R24 K48 ["InputSize"]
      168 GETTABLEKS                       R22 R23 K49 ["Small"]
      170 SETTABLEKS                       R22 R21 K41 ["size"]
      172 GETTABLEKS                       R23 R1 K50 ["enabled"]
      174 NOT                              R22 R23
      175 SETTABLEKS                       R22 R21 K42 ["Visible"]
      177 SETTABLEKS                       R5 R21 K43 ["onActivated"]
      179 SETTABLEKS                       R8 R21 K44 ["width"]
      181 CALL                             R19 2 1
      182 SETTABLEKS                       R19 R18 K36 ["LabelText"]
      184 GETUPVAL                         R20 1
      185 GETTABLEKS                       R19 R20 K13 ["createElement"]
      187 GETUPVAL                         R21 2
      188 GETTABLEKS                       R20 R21 K51 ["TextInput"]
      190 DUPTABLE                         R21 K57 [{"LayoutOrder", "tag", "text", "label", "textInputType", "onChanged", "size", "width", "Visible", "textBoxRef", "onFocusLost"}]
      191 LOADN                            R22 1
      192 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      194 LOADK                            R22 K46 ["size-full-full"]
      195 SETTABLEKS                       R22 R21 K25 ["tag"]
      197 SETTABLEKS                       R3 R21 K52 ["text"]
      199 LOADK                            R22 K23 [""]
      200 SETTABLEKS                       R22 R21 K3 ["label"]
      202 GETIMPORT                        R22 K61 [Enum.TextInputType.Default]
      204 SETTABLEKS                       R22 R21 K53 ["textInputType"]
      206 SETTABLEKS                       R4 R21 K54 ["onChanged"]
      208 GETUPVAL                         R25 2
      209 GETTABLEKS                       R24 R25 K47 ["Enums"]
      211 GETTABLEKS                       R23 R24 K48 ["InputSize"]
      213 GETTABLEKS                       R22 R23 K49 ["Small"]
      215 SETTABLEKS                       R22 R21 K41 ["size"]
      217 SETTABLEKS                       R8 R21 K44 ["width"]
      219 GETTABLEKS                       R22 R1 K50 ["enabled"]
      221 SETTABLEKS                       R22 R21 K42 ["Visible"]
      223 SETTABLEKS                       R2 R21 K55 ["textBoxRef"]
      225 SETTABLEKS                       R6 R21 K56 ["onFocusLost"]
      227 CALL                             R19 2 1
      228 SETTABLEKS                       R19 R18 K37 ["LabelTextInput"]
      230 CALL                             R15 3 1
      231 SETTABLEKS                       R15 R14 K31 ["LabelContainer"]
      233 SETTABLEKS                       R10 R14 K32 ["Input"]
      235 CALL                             R11 3 -1
      236 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeProperty"]
       22 GETTABLEKS                       R3 R4 K11 ["PropertyComponent"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Parent"]
       29 GETTABLEKS                       R4 R5 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R6 K13 ["ReactUtils"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_4]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 RETURN                           R5 1
