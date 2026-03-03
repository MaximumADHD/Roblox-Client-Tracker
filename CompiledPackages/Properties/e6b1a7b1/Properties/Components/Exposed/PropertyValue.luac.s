PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["info"]
        4 GETTABLEKS                       R1 R2 K1 ["type"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETIMPORT                        R1 K1 [error]
        3 LOADK                            R2 K2 ["extra data is not supported for comsumers of properties at this time"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K3 ["beginEditingAsync"]
        8 CALL                             R1 0 0
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_4:
        0 JUMPIFEQKS                       R0 K0 ["value"] ; [+10]
        2 GETIMPORT                        R2 K2 [error]
        4 LOADK                            R4 K3 ["Cannot set that part %*, it's not supported at this time"]
        5 MOVE                             R6 R0
        6 NAMECALL                         R4 R4 K4 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 CALL                             R2 1 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K5 ["updateValue"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"value", "multiple"}]
        1 GETTABLEKS                       R3 R0 K3 ["info"]
        3 GETTABLEKS                       R2 R3 K0 ["value"]
        5 SETTABLEKS                       R2 R1 K0 ["value"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K1 ["multiple"]
       10 DUPTABLE                         R2 K8 [{"type", "parts", "modified", "readonly"}]
       11 GETTABLEKS                       R4 R0 K3 ["info"]
       13 GETTABLEKS                       R3 R4 K4 ["type"]
       15 SETTABLEKS                       R3 R2 K4 ["type"]
       17 DUPTABLE                         R3 K9 [{"value"}]
       18 SETTABLEKS                       R1 R3 K0 ["value"]
       20 SETTABLEKS                       R3 R2 K5 ["parts"]
       22 LOADB                            R3 0
       23 SETTABLEKS                       R3 R2 K6 ["modified"]
       25 GETTABLEKS                       R5 R0 K3 ["info"]
       27 GETTABLEKS                       R4 R5 K7 ["readonly"]
       29 ORK                              R3 R4 K10 [False]
       30 SETTABLEKS                       R3 R2 K7 ["readonly"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K11 ["useMemo"]
       35 NEWCLOSURE                       R4 P0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R5 0 1
       40 GETTABLEKS                       R7 R0 K3 ["info"]
       42 GETTABLEKS                       R6 R7 K4 ["type"]
       44 SETLIST                          R5 R6 1 [1]
       46 CALL                             R3 2 1
       47 GETTABLEKS                       R4 R0 K12 ["editingSteps"]
       49 JUMPIF                           R4 ; [+1]
       50 GETUPVAL                         R4 2
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R5 R6 K13 ["useCallback"]
       54 NEWCLOSURE                       R6 P1
       55 CAPTURE                          VAL R4
       56 NEWTABLE                         R7 0 1
       58 GETTABLEKS                       R8 R4 K14 ["beginEditingAsync"]
       60 SETLIST                          R7 R8 1 [1]
       62 CALL                             R5 2 1
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R6 R7 K13 ["useCallback"]
       66 NEWCLOSURE                       R7 P2
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R8 0 1
       70 GETTABLEKS                       R9 R0 K15 ["updateValue"]
       72 SETLIST                          R8 R9 1 [1]
       74 CALL                             R6 2 1
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R7 R8 K13 ["useCallback"]
       78 GETTABLEKS                       R8 R4 K16 ["finishEditing"]
       80 NEWTABLE                         R9 0 1
       82 GETTABLEKS                       R10 R4 K16 ["finishEditing"]
       84 SETLIST                          R9 R10 1 [1]
       86 CALL                             R7 2 1
       87 GETUPVAL                         R8 3
       88 GETUPVAL                         R9 4
       89 DUPTABLE                         R10 K23 [{"tag", "AnchorPoint", "LayoutOrder", "Position", "Size", "ZIndex"}]
       90 LOADK                            R11 K24 ["auto-xy row flex-x-between align-y-center align-x-left"]
       91 SETTABLEKS                       R11 R10 K17 ["tag"]
       93 GETTABLEKS                       R11 R0 K18 ["AnchorPoint"]
       95 SETTABLEKS                       R11 R10 K18 ["AnchorPoint"]
       97 GETTABLEKS                       R11 R0 K19 ["LayoutOrder"]
       99 SETTABLEKS                       R11 R10 K19 ["LayoutOrder"]
      101 GETTABLEKS                       R11 R0 K20 ["Position"]
      103 SETTABLEKS                       R11 R10 K20 ["Position"]
      105 GETTABLEKS                       R11 R0 K21 ["Size"]
      107 SETTABLEKS                       R11 R10 K21 ["Size"]
      109 GETTABLEKS                       R11 R0 K22 ["ZIndex"]
      111 SETTABLEKS                       R11 R10 K22 ["ZIndex"]
      113 GETUPVAL                         R11 3
      114 MOVE                             R12 R3
      115 DUPTABLE                         R13 K26 [{"info", "beginEditingAsync", "setPart", "finishEditing"}]
      116 SETTABLEKS                       R2 R13 K3 ["info"]
      118 SETTABLEKS                       R5 R13 K14 ["beginEditingAsync"]
      120 SETTABLEKS                       R6 R13 K25 ["setPart"]
      122 SETTABLEKS                       R7 R13 K16 ["finishEditing"]
      124 CALL                             R11 2 -1
      125 CALL                             R8 -1 -1
      126 RETURN                           R8 -1

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
       26 GETTABLEKS                       R9 R0 K10 ["Components"]
       28 GETTABLEKS                       R8 R9 K11 ["PropertyEntries"]
       30 GETTABLEKS                       R7 R8 K12 ["PropertyView"]
       32 GETTABLEKS                       R6 R7 K13 ["getPropertyView"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R4 K14 ["createElement"]
       37 GETTABLEKS                       R7 R2 K15 ["View"]
       39 DUPTABLE                         R8 K18 [{"beginEditingAsync", "finishEditing"}]
       40 DUPCLOSURE                       R9 K19 [PROTO_0]
       41 SETTABLEKS                       R9 R8 K16 ["beginEditingAsync"]
       43 DUPCLOSURE                       R9 K20 [PROTO_1]
       44 SETTABLEKS                       R9 R8 K17 ["finishEditing"]
       46 DUPCLOSURE                       R9 K21 [PROTO_5]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 RETURN                           R9 1
