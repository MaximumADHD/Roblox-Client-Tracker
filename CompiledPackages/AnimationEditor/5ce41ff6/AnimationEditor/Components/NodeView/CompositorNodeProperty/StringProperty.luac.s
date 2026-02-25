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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnChanged"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["getValue"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_2:
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
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R6 0 2
       25 GETTABLEKS                       R7 R0 K4 ["OnChanged"]
       27 MOVE                             R8 R2
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K5 ["createElement"]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R6 R7 K6 ["View"]
       37 DUPTABLE                         R7 K9 [{"tag", "LayoutOrder"}]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R9 R10 K10 ["Hooks"]
       41 GETTABLEKS                       R8 R9 K11 ["useDefaultTags"]
       43 GETTABLEKS                       R9 R0 K12 ["tags"]
       45 LOADK                            R10 K13 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       46 CALL                             R8 2 1
       47 SETTABLEKS                       R8 R7 K7 ["tag"]
       49 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       51 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       53 DUPTABLE                         R8 K17 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R9 R10 K5 ["createElement"]
       57 GETUPVAL                         R10 2
       58 DUPTABLE                         R11 K20 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       59 NEWTABLE                         R12 1 0
       61 LOADB                            R13 1
       62 SETTABLEKS                       R13 R12 K21 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       64 SETTABLEKS                       R12 R11 K7 ["tag"]
       66 GETTABLEKS                       R12 R0 K22 ["Label"]
       68 SETTABLEKS                       R12 R11 K18 ["Text"]
       70 LOADN                            R12 1
       71 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       73 GETTABLEKS                       R12 R0 K23 ["IsReadOnly"]
       75 JUMPIF                           R12 ; [+4]
       76 GETTABLEKS                       R12 R0 K24 ["IsDisabled"]
       78 JUMPIF                           R12 ; [+1]
       79 LOADB                            R12 0
       80 SETTABLEKS                       R12 R11 K19 ["isDisabled"]
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R8 K14 ["CompositorNodeInputLabel"]
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R9 R10 K5 ["createElement"]
       88 GETUPVAL                         R11 1
       89 GETTABLEKS                       R10 R11 K25 ["TextInput"]
       91 DUPTABLE                         R11 K33 [{"tag", "size", "width", "label", "text", "isDisabled", "LayoutOrder", "precision", "onChanged", "onFocusLost"}]
       92 LOADK                            R12 K34 ["shrink"]
       93 SETTABLEKS                       R12 R11 K7 ["tag"]
       95 GETUPVAL                         R15 1
       96 GETTABLEKS                       R14 R15 K35 ["Enums"]
       98 GETTABLEKS                       R13 R14 K36 ["InputSize"]
      100 GETTABLEKS                       R12 R13 K37 ["XSmall"]
      102 SETTABLEKS                       R12 R11 K26 ["size"]
      104 GETIMPORT                        R12 K40 [UDim.new]
      106 LOADN                            R13 0
      107 LOADN                            R14 90
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K27 ["width"]
      111 LOADK                            R12 K41 [""]
      112 SETTABLEKS                       R12 R11 K28 ["label"]
      114 SETTABLEKS                       R2 R11 K29 ["text"]
      116 GETTABLEKS                       R12 R0 K42 ["IsParameterized"]
      118 JUMPIF                           R12 ; [+2]
      119 GETTABLEKS                       R12 R0 K23 ["IsReadOnly"]
      121 SETTABLEKS                       R12 R11 K19 ["isDisabled"]
      123 LOADN                            R12 2
      124 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      126 LOADN                            R12 2
      127 SETTABLEKS                       R12 R11 K30 ["precision"]
      129 SETTABLEKS                       R3 R11 K31 ["onChanged"]
      131 SETTABLEKS                       R4 R11 K32 ["onFocusLost"]
      133 CALL                             R9 2 1
      134 SETTABLEKS                       R9 R8 K15 ["Input"]
      136 GETUPVAL                         R10 0
      137 GETTABLEKS                       R9 R10 K5 ["createElement"]
      139 LOADK                            R10 K43 ["Folder"]
      140 NEWTABLE                         R11 0 0
      142 GETTABLEKS                       R12 R0 K44 ["children"]
      144 CALL                             R9 3 1
      145 SETTABLEKS                       R9 R8 K16 ["PinChildren"]
      147 CALL                             R5 3 -1
      148 RETURN                           R5 -1

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
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R5 R6 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K9 ["PropertyLabel"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K10 [PROTO_2]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
