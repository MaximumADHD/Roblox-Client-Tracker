PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["beginEditingPropertyAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["setPropertyPart"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["finishEditingProperty"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["aggregatePropertyInfo"]
        4 GETTABLEKS                       R1 R2 K1 ["type"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 MINUS                            R3 R0
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["record"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R1 K1 ["id"]
        6 GETTABLEKS                       R4 R0 K2 ["session"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R3
       14 NEWTABLE                         R7 0 2
       16 MOVE                             R8 R4
       17 MOVE                             R9 R3
       18 SETLIST                          R7 R8 2 [1]
       20 CALL                             R5 2 1
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K3 ["useCallback"]
       24 NEWCLOSURE                       R7 P1
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 NEWTABLE                         R8 0 2
       29 MOVE                             R9 R4
       30 MOVE                             R10 R3
       31 SETLIST                          R8 R9 2 [1]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K3 ["useCallback"]
       37 NEWCLOSURE                       R8 P2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 NEWTABLE                         R9 0 2
       42 MOVE                             R10 R4
       43 MOVE                             R11 R3
       44 SETLIST                          R9 R10 2 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R8 R9 K4 ["useMemo"]
       50 NEWCLOSURE                       R9 P3
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 NEWTABLE                         R10 0 2
       56 MOVE                             R11 R3
       57 GETTABLEKS                       R13 R1 K5 ["aggregatePropertyInfo"]
       59 GETTABLEKS                       R12 R13 K6 ["type"]
       61 SETLIST                          R10 R11 2 [1]
       63 CALL                             R8 2 1
       64 GETUPVAL                         R10 1
       65 GETTABLEKS                       R9 R10 K7 ["createElement"]
       67 GETUPVAL                         R10 3
       68 DUPTABLE                         R11 K12 [{"tag", "LayoutOrder", "ZIndex", "Size"}]
       69 LOADK                            R12 K13 ["auto-y row flex-x-between align-y-center align-x-left"]
       70 SETTABLEKS                       R12 R11 K8 ["tag"]
       72 GETTABLEKS                       R12 R0 K14 ["layoutOrder"]
       74 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       76 GETTABLEKS                       R12 R0 K15 ["zIndex"]
       78 SETTABLEKS                       R12 R11 K10 ["ZIndex"]
       80 GETTABLEKS                       R12 R0 K16 ["labelWidthBinding"]
       82 DUPCLOSURE                       R14 K17 [PROTO_4]
       83 NAMECALL                         R12 R12 K18 ["map"]
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K11 ["Size"]
       88 DUPTABLE                         R12 K21 [{"SpecificView", "SizeConstraint"}]
       89 GETUPVAL                         R14 1
       90 GETTABLEKS                       R13 R14 K7 ["createElement"]
       92 MOVE                             R14 R8
       93 DUPTABLE                         R15 K30 [{"info", "beginEditingAsync", "setPart", "finishEditing", "labelPressedSignal", "instancePicker", "getGameIdAsync", "shareAccessToAssetsAsync"}]
       94 GETTABLEKS                       R16 R1 K5 ["aggregatePropertyInfo"]
       96 SETTABLEKS                       R16 R15 K22 ["info"]
       98 SETTABLEKS                       R5 R15 K23 ["beginEditingAsync"]
      100 SETTABLEKS                       R6 R15 K24 ["setPart"]
      102 SETTABLEKS                       R7 R15 K25 ["finishEditing"]
      104 GETTABLEKS                       R16 R0 K26 ["labelPressedSignal"]
      106 SETTABLEKS                       R16 R15 K26 ["labelPressedSignal"]
      108 GETTABLEKS                       R16 R4 K27 ["instancePicker"]
      110 SETTABLEKS                       R16 R15 K27 ["instancePicker"]
      112 GETTABLEKS                       R16 R4 K28 ["getGameIdAsync"]
      114 SETTABLEKS                       R16 R15 K28 ["getGameIdAsync"]
      116 GETTABLEKS                       R16 R4 K29 ["shareAccessToAssetsAsync"]
      118 SETTABLEKS                       R16 R15 K29 ["shareAccessToAssetsAsync"]
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K19 ["SpecificView"]
      123 GETUPVAL                         R14 1
      124 GETTABLEKS                       R13 R14 K7 ["createElement"]
      126 LOADK                            R14 K31 ["UISizeConstraint"]
      127 DUPTABLE                         R15 K33 [{"MinSize"}]
      128 GETIMPORT                        R16 K36 [Vector2.new]
      130 LOADN                            R17 0
      131 GETTABLEKS                       R19 R2 K11 ["Size"]
      133 GETTABLEKS                       R18 R19 K37 ["Size_600"]
      135 CALL                             R16 2 1
      136 SETTABLEKS                       R16 R15 K32 ["MinSize"]
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K20 ["SizeConstraint"]
      141 CALL                             R9 3 -1
      142 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["RpcTypes"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["Signal"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETIMPORT                        R9 K1 [script]
       38 GETTABLEKS                       R8 R9 K12 ["getPropertyView"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R8 R2 K13 ["View"]
       43 GETTABLEKS                       R10 R2 K14 ["Hooks"]
       45 GETTABLEKS                       R9 R10 K15 ["useTokens"]
       47 DUPCLOSURE                       R10 K16 [PROTO_5]
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R8
       52 RETURN                           R10 1
