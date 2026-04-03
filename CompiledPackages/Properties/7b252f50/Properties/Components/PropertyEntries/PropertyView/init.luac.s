PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["beginEditingPropertyAsync"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["getProperty"]
        6 CALL                             R3 0 1
        7 GETTABLEKS                       R2 R3 K2 ["id"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["setPropertyPart"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["getProperty"]
        6 CALL                             R4 0 1
        7 GETTABLEKS                       R3 R4 K2 ["id"]
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R2 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["finishEditingProperty"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["getProperty"]
        6 CALL                             R3 0 1
        7 GETTABLEKS                       R2 R3 K2 ["id"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getProperty"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R1 R2 K1 ["aggregatePropertyInfo"]
        7 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 MINUS                            R3 R0
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["session"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R5 0 2
       12 MOVE                             R6 R2
       13 GETTABLEKS                       R7 R0 K2 ["getProperty"]
       15 SETLIST                          R5 R6 2 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R6 0 2
       26 MOVE                             R7 R2
       27 GETTABLEKS                       R8 R0 K2 ["getProperty"]
       29 SETLIST                          R6 R7 2 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K1 ["useCallback"]
       35 NEWCLOSURE                       R6 P2
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R7 0 2
       40 MOVE                             R8 R2
       41 GETTABLEKS                       R9 R0 K2 ["getProperty"]
       43 SETLIST                          R7 R8 2 [1]
       45 CALL                             R5 2 1
       46 GETTABLEKS                       R8 R0 K2 ["getProperty"]
       48 CALL                             R8 0 1
       49 GETTABLEKS                       R7 R8 K3 ["aggregatePropertyInfo"]
       51 GETTABLEKS                       R6 R7 K4 ["type"]
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R7 R8 K5 ["useMemo"]
       56 NEWCLOSURE                       R8 P3
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R6
       59 NEWTABLE                         R9 0 1
       61 MOVE                             R10 R6
       62 SETLIST                          R9 R10 1 [1]
       64 CALL                             R7 2 1
       65 GETUPVAL                         R9 3
       66 GETTABLEKS                       R8 R9 K6 ["createComputed"]
       68 NEWCLOSURE                       R9 P4
       69 CAPTURE                          VAL R0
       70 CALL                             R8 1 1
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R9 R10 K7 ["createElement"]
       74 GETUPVAL                         R10 4
       75 DUPTABLE                         R11 K12 [{"tag", "LayoutOrder", "ZIndex", "Size"}]
       76 LOADK                            R12 K13 ["auto-y row flex-x-between align-y-center align-x-left"]
       77 SETTABLEKS                       R12 R11 K8 ["tag"]
       79 GETTABLEKS                       R12 R0 K9 ["LayoutOrder"]
       81 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       83 GETTABLEKS                       R12 R0 K10 ["ZIndex"]
       85 SETTABLEKS                       R12 R11 K10 ["ZIndex"]
       87 GETTABLEKS                       R12 R0 K14 ["labelWidthBinding"]
       89 DUPCLOSURE                       R14 K15 [PROTO_5]
       90 NAMECALL                         R12 R12 K16 ["map"]
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K11 ["Size"]
       95 DUPTABLE                         R12 K19 [{"SpecificView", "SizeConstraint"}]
       96 GETUPVAL                         R14 1
       97 GETTABLEKS                       R13 R14 K7 ["createElement"]
       99 MOVE                             R14 R7
      100 DUPTABLE                         R15 K28 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "labelPressedSignal", "instancePicker", "gameIdObservable", "shareAccessToAssetsAsync"}]
      101 SETTABLEKS                       R8 R15 K20 ["getInfo"]
      103 SETTABLEKS                       R3 R15 K21 ["beginEditingAsync"]
      105 SETTABLEKS                       R4 R15 K22 ["setPart"]
      107 SETTABLEKS                       R5 R15 K23 ["finishEditing"]
      109 GETTABLEKS                       R16 R0 K24 ["labelPressedSignal"]
      111 SETTABLEKS                       R16 R15 K24 ["labelPressedSignal"]
      113 GETTABLEKS                       R16 R2 K25 ["instancePicker"]
      115 SETTABLEKS                       R16 R15 K25 ["instancePicker"]
      117 GETTABLEKS                       R16 R2 K26 ["gameIdObservable"]
      119 SETTABLEKS                       R16 R15 K26 ["gameIdObservable"]
      121 GETTABLEKS                       R16 R2 K27 ["shareAccessToAssetsAsync"]
      123 SETTABLEKS                       R16 R15 K27 ["shareAccessToAssetsAsync"]
      125 CALL                             R13 2 1
      126 SETTABLEKS                       R13 R12 K17 ["SpecificView"]
      128 GETUPVAL                         R14 1
      129 GETTABLEKS                       R13 R14 K7 ["createElement"]
      131 LOADK                            R14 K29 ["UISizeConstraint"]
      132 DUPTABLE                         R15 K31 [{"MinSize"}]
      133 GETIMPORT                        R16 K34 [Vector2.new]
      135 LOADN                            R17 0
      136 GETTABLEKS                       R19 R1 K11 ["Size"]
      138 GETTABLEKS                       R18 R19 K35 ["Size_600"]
      140 CALL                             R16 2 1
      141 SETTABLEKS                       R16 R15 K30 ["MinSize"]
      143 CALL                             R13 2 1
      144 SETTABLEKS                       R13 R12 K18 ["SizeConstraint"]
      146 CALL                             R9 3 -1
      147 RETURN                           R9 -1

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
       36 GETTABLEKS                       R8 R1 K12 ["Signals"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K6 [require]
       41 GETIMPORT                        R10 K1 [script]
       43 GETTABLEKS                       R9 R10 K13 ["getPropertyView"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R2 K14 ["View"]
       48 GETTABLEKS                       R11 R2 K15 ["Hooks"]
       50 GETTABLEKS                       R10 R11 K16 ["useTokens"]
       52 DUPCLOSURE                       R11 K17 [PROTO_6]
       53 CAPTURE                          VAL R10
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R9
       58 GETTABLEKS                       R12 R4 K18 ["memo"]
       60 MOVE                             R13 R11
       61 CALL                             R12 1 -1
       62 RETURN                           R12 -1
