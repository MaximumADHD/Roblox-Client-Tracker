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
       38 LOADK                            R8 K10 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       39 SETTABLEKS                       R8 R7 K7 ["tag"]
       41 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       43 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       45 DUPTABLE                         R8 K14 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K5 ["createElement"]
       49 GETUPVAL                         R10 2
       50 DUPTABLE                         R11 K17 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       51 NEWTABLE                         R12 1 0
       53 LOADB                            R13 1
       54 SETTABLEKS                       R13 R12 K18 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       56 SETTABLEKS                       R12 R11 K7 ["tag"]
       58 GETTABLEKS                       R12 R0 K19 ["Label"]
       60 SETTABLEKS                       R12 R11 K15 ["Text"]
       62 LOADN                            R12 1
       63 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       65 GETTABLEKS                       R12 R0 K20 ["IsReadOnly"]
       67 SETTABLEKS                       R12 R11 K16 ["isDisabled"]
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K11 ["CompositorNodeInputLabel"]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R9 R10 K5 ["createElement"]
       75 GETUPVAL                         R11 1
       76 GETTABLEKS                       R10 R11 K21 ["TextInput"]
       78 DUPTABLE                         R11 K29 [{"tag", "size", "width", "label", "text", "isDisabled", "LayoutOrder", "precision", "onChanged", "onFocusLost"}]
       79 LOADK                            R12 K30 ["shrink"]
       80 SETTABLEKS                       R12 R11 K7 ["tag"]
       82 GETUPVAL                         R15 1
       83 GETTABLEKS                       R14 R15 K31 ["Enums"]
       85 GETTABLEKS                       R13 R14 K32 ["InputSize"]
       87 GETTABLEKS                       R12 R13 K33 ["XSmall"]
       89 SETTABLEKS                       R12 R11 K22 ["size"]
       91 GETIMPORT                        R12 K36 [UDim.new]
       93 LOADN                            R13 0
       94 LOADN                            R14 90
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K23 ["width"]
       98 LOADK                            R12 K37 [""]
       99 SETTABLEKS                       R12 R11 K24 ["label"]
      101 SETTABLEKS                       R2 R11 K25 ["text"]
      103 GETTABLEKS                       R12 R0 K38 ["IsParameterized"]
      105 JUMPIF                           R12 ; [+2]
      106 GETTABLEKS                       R12 R0 K20 ["IsReadOnly"]
      108 SETTABLEKS                       R12 R11 K16 ["isDisabled"]
      110 LOADN                            R12 2
      111 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      113 LOADN                            R12 2
      114 SETTABLEKS                       R12 R11 K26 ["precision"]
      116 SETTABLEKS                       R3 R11 K27 ["onChanged"]
      118 SETTABLEKS                       R4 R11 K28 ["onFocusLost"]
      120 CALL                             R9 2 1
      121 SETTABLEKS                       R9 R8 K12 ["Input"]
      123 GETUPVAL                         R10 0
      124 GETTABLEKS                       R9 R10 K5 ["createElement"]
      126 LOADK                            R10 K39 ["Folder"]
      127 NEWTABLE                         R11 0 0
      129 GETTABLEKS                       R12 R0 K40 ["children"]
      131 CALL                             R9 3 1
      132 SETTABLEKS                       R9 R8 K13 ["PinChildren"]
      134 CALL                             R5 3 -1
      135 RETURN                           R5 -1

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
