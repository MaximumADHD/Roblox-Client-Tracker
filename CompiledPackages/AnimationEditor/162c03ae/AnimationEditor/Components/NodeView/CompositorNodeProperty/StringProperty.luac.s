PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Value"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADK                            R0 K1 [""]
        5 RETURN                           R0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["Value"]
        9 FASTCALL1                        TOSTRING R1 ; [+2]
       10 GETIMPORT                        R0 K3 [tostring]
       12 CALL                             R0 1 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K1 ["Value"]
        4 ORK                              R2 R3 K0 [""]
        5 FASTCALL1                        TOSTRING R2 ; [+2]
        6 GETIMPORT                        R1 K3 [tostring]
        8 CALL                             R1 1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnChanged"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["getValue"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["Value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["useBinding"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 2
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+13]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K3 ["useEffect"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 1
       28 GETTABLEKS                       R7 R0 K1 ["Value"]
       30 SETLIST                          R6 R7 1 [1]
       32 CALL                             R4 2 0
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       36 NEWCLOSURE                       R5 P2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R6 0 2
       41 GETTABLEKS                       R7 R0 K5 ["OnChanged"]
       43 MOVE                             R8 R2
       44 SETLIST                          R6 R7 2 [1]
       46 CALL                             R4 2 1
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R5 R6 K6 ["createElement"]
       50 GETUPVAL                         R7 2
       51 GETTABLEKS                       R6 R7 K7 ["View"]
       53 DUPTABLE                         R7 K11 [{"tag", "LayoutOrder", "testId"}]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R9 R10 K12 ["Hooks"]
       57 GETTABLEKS                       R8 R9 K13 ["useDefaultTags"]
       59 GETTABLEKS                       R9 R0 K14 ["tags"]
       61 LOADK                            R10 K15 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K8 ["tag"]
       65 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       67 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       69 GETTABLEKS                       R8 R0 K10 ["testId"]
       71 SETTABLEKS                       R8 R7 K10 ["testId"]
       73 DUPTABLE                         R8 K19 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R9 R10 K6 ["createElement"]
       77 GETUPVAL                         R10 3
       78 DUPTABLE                         R11 K22 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       79 NEWTABLE                         R12 1 0
       81 LOADB                            R13 1
       82 SETTABLEKS                       R13 R12 K23 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       84 SETTABLEKS                       R12 R11 K8 ["tag"]
       86 GETTABLEKS                       R12 R0 K24 ["Label"]
       88 SETTABLEKS                       R12 R11 K20 ["Text"]
       90 LOADN                            R12 1
       91 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       93 GETTABLEKS                       R13 R0 K26 ["IsDisabled"]
       95 ORK                              R12 R13 K25 [False]
       96 SETTABLEKS                       R12 R11 K21 ["isDisabled"]
       98 CALL                             R9 2 1
       99 SETTABLEKS                       R9 R8 K16 ["CompositorNodeInputLabel"]
      101 GETUPVAL                         R10 1
      102 CALL                             R10 0 1
      103 JUMPIFNOT                        R10 ; [+56]
      104 GETUPVAL                         R10 0
      105 GETTABLEKS                       R9 R10 K6 ["createElement"]
      107 GETUPVAL                         R10 4
      108 DUPTABLE                         R11 K32 [{"size", "width", "Value", "isDisabled", "LayoutOrder", "onChanged", "onOptionSelected", "Options"}]
      109 GETUPVAL                         R15 2
      110 GETTABLEKS                       R14 R15 K33 ["Enums"]
      112 GETTABLEKS                       R13 R14 K34 ["InputSize"]
      114 GETTABLEKS                       R12 R13 K35 ["XSmall"]
      116 SETTABLEKS                       R12 R11 K27 ["size"]
      118 GETIMPORT                        R12 K38 [UDim.new]
      120 LOADN                            R13 0
      121 LOADN                            R14 90
      122 CALL                             R12 2 1
      123 SETTABLEKS                       R12 R11 K28 ["width"]
      125 GETTABLEKS                       R13 R0 K26 ["IsDisabled"]
      127 JUMPIFNOT                        R13 ; [+3]
      128 GETTABLEKS                       R12 R0 K1 ["Value"]
      130 JUMP                             ; [+1]
      131 MOVE                             R12 R2
      132 SETTABLEKS                       R12 R11 K1 ["Value"]
      134 GETTABLEKS                       R12 R0 K39 ["IsParameterized"]
      136 JUMPIF                           R12 ; [+4]
      137 GETTABLEKS                       R12 R0 K26 ["IsDisabled"]
      139 JUMPIF                           R12 ; [+1]
      140 LOADB                            R12 0
      141 SETTABLEKS                       R12 R11 K21 ["isDisabled"]
      143 LOADN                            R12 2
      144 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      146 GETTABLEKS                       R12 R0 K5 ["OnChanged"]
      148 SETTABLEKS                       R12 R11 K29 ["onChanged"]
      150 GETTABLEKS                       R12 R0 K5 ["OnChanged"]
      152 SETTABLEKS                       R12 R11 K30 ["onOptionSelected"]
      154 GETTABLEKS                       R12 R0 K31 ["Options"]
      156 SETTABLEKS                       R12 R11 K31 ["Options"]
      158 CALL                             R9 2 1
      159 JUMP                             ; [+53]
      160 GETUPVAL                         R10 0
      161 GETTABLEKS                       R9 R10 K6 ["createElement"]
      163 GETUPVAL                         R11 2
      164 GETTABLEKS                       R10 R11 K40 ["TextInput"]
      166 DUPTABLE                         R11 K44 [{"tag", "size", "width", "label", "text", "isDisabled", "LayoutOrder", "onChanged", "onFocusLost"}]
      167 LOADK                            R12 K45 ["shrink"]
      168 SETTABLEKS                       R12 R11 K8 ["tag"]
      170 GETUPVAL                         R15 2
      171 GETTABLEKS                       R14 R15 K33 ["Enums"]
      173 GETTABLEKS                       R13 R14 K34 ["InputSize"]
      175 GETTABLEKS                       R12 R13 K35 ["XSmall"]
      177 SETTABLEKS                       R12 R11 K27 ["size"]
      179 GETIMPORT                        R12 K38 [UDim.new]
      181 LOADN                            R13 0
      182 LOADN                            R14 90
      183 CALL                             R12 2 1
      184 SETTABLEKS                       R12 R11 K28 ["width"]
      186 LOADK                            R12 K46 [""]
      187 SETTABLEKS                       R12 R11 K41 ["label"]
      189 GETTABLEKS                       R13 R0 K26 ["IsDisabled"]
      191 JUMPIFNOT                        R13 ; [+3]
      192 GETTABLEKS                       R12 R0 K1 ["Value"]
      194 JUMP                             ; [+1]
      195 MOVE                             R12 R2
      196 SETTABLEKS                       R12 R11 K42 ["text"]
      198 GETTABLEKS                       R12 R0 K39 ["IsParameterized"]
      200 JUMPIF                           R12 ; [+2]
      201 GETTABLEKS                       R12 R0 K26 ["IsDisabled"]
      203 SETTABLEKS                       R12 R11 K21 ["isDisabled"]
      205 LOADN                            R12 2
      206 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      208 SETTABLEKS                       R3 R11 K29 ["onChanged"]
      210 SETTABLEKS                       R4 R11 K43 ["onFocusLost"]
      212 CALL                             R9 2 1
      213 SETTABLEKS                       R9 R8 K17 ["Input"]
      215 GETUPVAL                         R10 0
      216 GETTABLEKS                       R9 R10 K6 ["createElement"]
      218 LOADK                            R10 K47 ["Folder"]
      219 NEWTABLE                         R11 0 0
      221 GETTABLEKS                       R12 R0 K48 ["children"]
      223 CALL                             R9 3 1
      224 SETTABLEKS                       R9 R8 K18 ["PinChildren"]
      226 CALL                             R5 3 -1
      227 RETURN                           R5 -1

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
       23 GETTABLEKS                       R5 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R5 K10 ["ComboBox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R7 K1 [script]
       32 GETTABLEKS                       R6 R7 K6 ["Parent"]
       34 GETTABLEKS                       R5 R6 K11 ["PropertyLabel"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K12 ["Flags"]
       41 GETTABLEKS                       R6 R7 K13 ["getFFlagAnimGraphUISelectCombo"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K14 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 RETURN                           R6 1
