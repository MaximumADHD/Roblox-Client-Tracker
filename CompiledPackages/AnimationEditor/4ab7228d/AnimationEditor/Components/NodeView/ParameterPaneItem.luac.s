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
       53 GETUPVAL                         R9 2
       54 LOADN                            R10 200
       55 CALL                             R9 1 -1
       56 CALL                             R7 -1 1
       57 GETIMPORT                        R8 K8 [UDim.new]
       59 LOADN                            R9 0
       60 LOADN                            R10 82
       61 CALL                             R8 2 1
       62 GETUPVAL                         R10 1
       63 GETTABLEKS                       R9 R10 K9 ["createElement"]
       65 GETUPVAL                         R11 3
       66 GETTABLEKS                       R10 R11 K10 ["View"]
       68 DUPTABLE                         R11 K13 [{"tag", "Size"}]
       69 LOADK                            R12 K14 ["flex-x-around gap-small row align-x-center align-y-center padding-y-xxsmall auto-y"]
       70 SETTABLEKS                       R12 R11 K11 ["tag"]
       72 GETIMPORT                        R12 K16 [UDim2.new]
       74 LOADN                            R13 0
       75 GETUPVAL                         R14 2
       76 LOADN                            R15 200
       77 CALL                             R14 1 1
       78 LOADN                            R15 0
       79 LOADN                            R16 0
       80 CALL                             R12 4 1
       81 SETTABLEKS                       R12 R11 K12 ["Size"]
       83 DUPTABLE                         R12 K19 [{"LabelContainer", "NumberInput"}]
       84 GETUPVAL                         R14 1
       85 GETTABLEKS                       R13 R14 K9 ["createElement"]
       87 GETUPVAL                         R15 3
       88 GETTABLEKS                       R14 R15 K10 ["View"]
       90 DUPTABLE                         R15 K21 [{"LayoutOrder", "tag"}]
       91 LOADN                            R16 1
       92 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
       94 LOADK                            R16 K22 ["row align-x-center align-y-center size-2100-500 auto-none"]
       95 SETTABLEKS                       R16 R15 K11 ["tag"]
       97 DUPTABLE                         R16 K25 [{"LabelText", "LabelTextInput"}]
       98 GETUPVAL                         R18 1
       99 GETTABLEKS                       R17 R18 K9 ["createElement"]
      101 GETUPVAL                         R19 3
      102 GETTABLEKS                       R18 R19 K26 ["InputLabel"]
      104 DUPTABLE                         R19 K32 [{"LayoutOrder", "tag", "Text", "size", "Visible", "onActivated", "width"}]
      105 LOADN                            R20 1
      106 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      108 LOADK                            R20 K33 ["size-full-full"]
      109 SETTABLEKS                       R20 R19 K11 ["tag"]
      111 GETTABLEKS                       R20 R0 K3 ["label"]
      113 SETTABLEKS                       R20 R19 K27 ["Text"]
      115 GETUPVAL                         R21 4
      116 GETTABLEKS                       R20 R21 K34 ["Small"]
      118 SETTABLEKS                       R20 R19 K28 ["size"]
      120 GETTABLEKS                       R21 R1 K35 ["enabled"]
      122 NOT                              R20 R21
      123 SETTABLEKS                       R20 R19 K29 ["Visible"]
      125 SETTABLEKS                       R5 R19 K30 ["onActivated"]
      127 SETTABLEKS                       R8 R19 K31 ["width"]
      129 CALL                             R17 2 1
      130 SETTABLEKS                       R17 R16 K23 ["LabelText"]
      132 GETUPVAL                         R18 1
      133 GETTABLEKS                       R17 R18 K9 ["createElement"]
      135 GETUPVAL                         R19 3
      136 GETTABLEKS                       R18 R19 K36 ["TextInput"]
      138 DUPTABLE                         R19 K42 [{"LayoutOrder", "tag", "text", "label", "textInputType", "onChanged", "size", "width", "Visible", "textBoxRef", "onFocusLost"}]
      139 LOADN                            R20 1
      140 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      142 LOADK                            R20 K33 ["size-full-full"]
      143 SETTABLEKS                       R20 R19 K11 ["tag"]
      145 SETTABLEKS                       R3 R19 K37 ["text"]
      147 LOADK                            R20 K43 [""]
      148 SETTABLEKS                       R20 R19 K3 ["label"]
      150 GETIMPORT                        R20 K47 [Enum.TextInputType.Default]
      152 SETTABLEKS                       R20 R19 K38 ["textInputType"]
      154 SETTABLEKS                       R4 R19 K39 ["onChanged"]
      156 GETUPVAL                         R21 4
      157 GETTABLEKS                       R20 R21 K34 ["Small"]
      159 SETTABLEKS                       R20 R19 K28 ["size"]
      161 SETTABLEKS                       R8 R19 K31 ["width"]
      163 GETTABLEKS                       R20 R1 K35 ["enabled"]
      165 SETTABLEKS                       R20 R19 K29 ["Visible"]
      167 SETTABLEKS                       R2 R19 K40 ["textBoxRef"]
      169 SETTABLEKS                       R6 R19 K41 ["onFocusLost"]
      171 CALL                             R17 2 1
      172 SETTABLEKS                       R17 R16 K24 ["LabelTextInput"]
      174 CALL                             R13 3 1
      175 SETTABLEKS                       R13 R12 K17 ["LabelContainer"]
      177 GETUPVAL                         R14 1
      178 GETTABLEKS                       R13 R14 K9 ["createElement"]
      180 GETUPVAL                         R15 3
      181 GETTABLEKS                       R14 R15 K36 ["TextInput"]
      183 DUPTABLE                         R15 K48 [{"LayoutOrder", "tag", "text", "label", "textInputType", "onChanged", "size", "width"}]
      184 LOADN                            R16 2
      185 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      187 LOADK                            R16 K49 ["size-2100-500"]
      188 SETTABLEKS                       R16 R15 K11 ["tag"]
      190 GETTABLEKS                       R16 R0 K37 ["text"]
      192 SETTABLEKS                       R16 R15 K37 ["text"]
      194 LOADK                            R16 K43 [""]
      195 SETTABLEKS                       R16 R15 K3 ["label"]
      197 GETIMPORT                        R16 K51 [Enum.TextInputType.Number]
      199 SETTABLEKS                       R16 R15 K38 ["textInputType"]
      201 GETTABLEKS                       R16 R0 K52 ["onTextInputChanged"]
      203 SETTABLEKS                       R16 R15 K39 ["onChanged"]
      205 GETUPVAL                         R17 4
      206 GETTABLEKS                       R16 R17 K34 ["Small"]
      208 SETTABLEKS                       R16 R15 K28 ["size"]
      210 SETTABLEKS                       R8 R15 K31 ["width"]
      212 CALL                             R13 2 1
      213 SETTABLEKS                       R13 R12 K18 ["NumberInput"]
      215 CALL                             R9 3 -1
      216 RETURN                           R9 -1

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
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R1 K10 ["Enums"]
       30 GETTABLEKS                       R4 R5 K11 ["InputSize"]
       32 GETTABLEKS                       R6 R1 K12 ["Hooks"]
       34 GETTABLEKS                       R5 R6 K13 ["useScaledValue"]
       36 DUPCLOSURE                       R6 K14 [PROTO_2]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 RETURN                           R6 1
