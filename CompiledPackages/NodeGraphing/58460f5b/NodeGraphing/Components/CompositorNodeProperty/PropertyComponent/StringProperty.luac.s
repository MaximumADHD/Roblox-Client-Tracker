PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Value"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADK                            R0 K1 [""]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["Value"]
        9 FASTCALL1                        TOSTRING R1 ; [+2]
       10 GETIMPORT                        R0 K3 [tostring]
       12 CALL                             R0 1 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["getValue"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["Value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["useBinding"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 2
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R6 0 2
       25 GETTABLEKS                       R7 R0 K4 ["OnChanged"]
       27 MOVE                             R8 R2
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K5 ["createElement"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K6 ["View"]
       37 DUPTABLE                         R7 K10 [{"tag", "LayoutOrder", "testId"}]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K11 ["Hooks"]
       41 GETTABLEKS                       R8 R8 K12 ["useDefaultTags"]
       43 GETTABLEKS                       R9 R0 K13 ["tags"]
       45 LOADK                            R10 K14 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       46 CALL                             R8 2 1
       47 SETTABLEKS                       R8 R7 K7 ["tag"]
       49 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       51 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       53 GETTABLEKS                       R8 R0 K9 ["testId"]
       55 SETTABLEKS                       R8 R7 K9 ["testId"]
       57 DUPTABLE                         R8 K18 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K5 ["createElement"]
       61 GETUPVAL                         R10 2
       62 DUPTABLE                         R11 K21 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       63 NEWTABLE                         R12 1 0
       65 LOADB                            R13 1
       66 SETTABLEKS                       R13 R12 K22 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       68 SETTABLEKS                       R12 R11 K7 ["tag"]
       70 GETTABLEKS                       R12 R0 K23 ["Label"]
       72 SETTABLEKS                       R12 R11 K19 ["Text"]
       74 LOADN                            R12 1
       75 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       77 GETTABLEKS                       R13 R0 K25 ["IsDisabled"]
       79 ORK                              R12 R13 K24 [False]
       80 SETTABLEKS                       R12 R11 K20 ["isDisabled"]
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R8 K15 ["CompositorNodeInputLabel"]
       85 GETUPVAL                         R9 0
       86 GETTABLEKS                       R9 R9 K5 ["createElement"]
       88 GETUPVAL                         R10 1
       89 GETTABLEKS                       R10 R10 K26 ["TextInput"]
       91 DUPTABLE                         R11 K33 [{"tag", "size", "width", "label", "text", "isDisabled", "LayoutOrder", "onChanged", "onFocusLost"}]
       92 LOADK                            R12 K34 ["shrink"]
       93 SETTABLEKS                       R12 R11 K7 ["tag"]
       95 GETUPVAL                         R12 1
       96 GETTABLEKS                       R12 R12 K35 ["Enums"]
       98 GETTABLEKS                       R12 R12 K36 ["InputSize"]
      100 GETTABLEKS                       R12 R12 K37 ["XSmall"]
      102 SETTABLEKS                       R12 R11 K27 ["size"]
      104 GETIMPORT                        R12 K40 [UDim.new]
      106 LOADN                            R13 0
      107 LOADN                            R14 90
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K28 ["width"]
      111 LOADK                            R12 K41 [""]
      112 SETTABLEKS                       R12 R11 K29 ["label"]
      114 GETTABLEKS                       R13 R0 K25 ["IsDisabled"]
      116 JUMPIFNOT                        R13 ; [+3]
      117 GETTABLEKS                       R12 R0 K1 ["Value"]
      119 JUMP                             ; [+8]
      120 GETUPVAL                         R13 3
      121 CALL                             R13 0 1
      122 JUMPIFNOT                        R13 ; [+4]
      123 NAMECALL                         R12 R2 K42 ["getValue"]
      125 CALL                             R12 1 1
      126 JUMP                             ; [+1]
      127 MOVE                             R12 R2
      128 SETTABLEKS                       R12 R11 K30 ["text"]
      130 GETTABLEKS                       R12 R0 K43 ["IsParameterized"]
      132 JUMPIF                           R12 ; [+2]
      133 GETTABLEKS                       R12 R0 K25 ["IsDisabled"]
      135 SETTABLEKS                       R12 R11 K20 ["isDisabled"]
      137 LOADN                            R12 2
      138 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      140 SETTABLEKS                       R3 R11 K31 ["onChanged"]
      142 SETTABLEKS                       R4 R11 K32 ["onFocusLost"]
      144 CALL                             R9 2 1
      145 SETTABLEKS                       R9 R8 K16 ["Input"]
      147 GETUPVAL                         R9 0
      148 GETTABLEKS                       R9 R9 K5 ["createElement"]
      150 LOADK                            R10 K44 ["Folder"]
      151 NEWTABLE                         R11 0 0
      153 GETTABLEKS                       R12 R0 K45 ["children"]
      155 CALL                             R9 3 1
      156 SETTABLEKS                       R9 R8 K17 ["PinChildren"]
      158 CALL                             R5 3 -1
      159 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["CompositorNodeProperty"]
       27 GETTABLEKS                       R4 R4 K11 ["PropertyLabel"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Flags"]
       34 GETTABLEKS                       R5 R5 K13 ["getFFlagAnimGraphUIGraphComboBox"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K14 [PROTO_2]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 RETURN                           R5 1
