PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["fromInfoAndParts"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["fromType"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R2
        8 CALL                             R4 2 1
        9 DUPTABLE                         R5 K3 [{"value"}]
       10 DUPTABLE                         R6 K5 [{"value", "multiple"}]
       11 SETTABLEKS                       R1 R6 K2 ["value"]
       13 LOADB                            R7 0
       14 SETTABLEKS                       R7 R6 K4 ["multiple"]
       16 SETTABLEKS                       R6 R5 K2 ["value"]
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["info"]
        7 GETTABLEKS                       R2 R3 K2 ["type"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K1 ["info"]
       12 GETTABLEKS                       R3 R4 K3 ["value"]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K1 ["info"]
       17 GETTABLEKS                       R5 R6 K5 ["readonly"]
       19 ORK                              R4 R5 K4 [False]
       20 CALL                             R1 3 -1
       21 CALL                             R0 -1 2
       22 DUPTABLE                         R2 K8 [{"get", "set"}]
       23 SETTABLEKS                       R0 R2 K6 ["get"]
       25 SETTABLEKS                       R1 R2 K7 ["set"]
       27 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["set"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["info"]
        7 GETTABLEKS                       R2 R3 K2 ["type"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K1 ["info"]
       12 GETTABLEKS                       R3 R4 K3 ["value"]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K1 ["info"]
       17 GETTABLEKS                       R5 R6 K5 ["readonly"]
       19 ORK                              R4 R5 K4 [False]
       20 CALL                             R1 3 -1
       21 CALL                             R0 -1 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["info"]
        4 GETTABLEKS                       R1 R2 K1 ["type"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETIMPORT                        R1 K1 [error]
        3 LOADK                            R2 K2 ["extra data is not supported for comsumers of properties at this time"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K3 ["beginEditingAsync"]
        8 CALL                             R1 0 0
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useInitializedValue"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R2 R3 K1 ["useEffect"]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R4 0 3
       17 GETTABLEKS                       R6 R0 K2 ["info"]
       19 GETTABLEKS                       R5 R6 K3 ["type"]
       21 GETTABLEKS                       R7 R0 K2 ["info"]
       23 GETTABLEKS                       R6 R7 K4 ["value"]
       25 GETTABLEKS                       R8 R0 K2 ["info"]
       27 GETTABLEKS                       R7 R8 K5 ["readonly"]
       29 SETLIST                          R4 R5 3 [1]
       31 CALL                             R2 2 0
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R2 R3 K6 ["useMemo"]
       35 NEWCLOSURE                       R3 P2
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R4 0 1
       40 GETTABLEKS                       R6 R0 K2 ["info"]
       42 GETTABLEKS                       R5 R6 K3 ["type"]
       44 SETLIST                          R4 R5 1 [1]
       46 CALL                             R2 2 1
       47 GETTABLEKS                       R3 R0 K7 ["editingSteps"]
       49 JUMPIF                           R3 ; [+1]
       50 GETUPVAL                         R3 5
       51 GETUPVAL                         R5 3
       52 GETTABLEKS                       R4 R5 K8 ["useCallback"]
       54 NEWCLOSURE                       R5 P3
       55 CAPTURE                          VAL R3
       56 NEWTABLE                         R6 0 1
       58 GETTABLEKS                       R7 R3 K9 ["beginEditingAsync"]
       60 SETLIST                          R6 R7 1 [1]
       62 CALL                             R4 2 1
       63 GETUPVAL                         R6 3
       64 GETTABLEKS                       R5 R6 K8 ["useCallback"]
       66 NEWCLOSURE                       R6 P4
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R7 0 1
       70 GETTABLEKS                       R8 R0 K10 ["updateValue"]
       72 SETLIST                          R7 R8 1 [1]
       74 CALL                             R5 2 1
       75 GETUPVAL                         R7 3
       76 GETTABLEKS                       R6 R7 K8 ["useCallback"]
       78 GETTABLEKS                       R7 R3 K11 ["finishEditing"]
       80 NEWTABLE                         R8 0 1
       82 GETTABLEKS                       R9 R3 K11 ["finishEditing"]
       84 SETLIST                          R8 R9 1 [1]
       86 CALL                             R6 2 1
       87 GETUPVAL                         R7 6
       88 GETUPVAL                         R8 7
       89 DUPTABLE                         R9 K18 [{"tag", "AnchorPoint", "LayoutOrder", "Position", "Size", "ZIndex"}]
       90 LOADK                            R10 K19 ["auto-xy row flex-x-between align-y-center align-x-left"]
       91 SETTABLEKS                       R10 R9 K12 ["tag"]
       93 GETTABLEKS                       R10 R0 K13 ["AnchorPoint"]
       95 SETTABLEKS                       R10 R9 K13 ["AnchorPoint"]
       97 GETTABLEKS                       R10 R0 K14 ["LayoutOrder"]
       99 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
      101 GETTABLEKS                       R10 R0 K15 ["Position"]
      103 SETTABLEKS                       R10 R9 K15 ["Position"]
      105 GETTABLEKS                       R10 R0 K16 ["Size"]
      107 SETTABLEKS                       R10 R9 K16 ["Size"]
      109 GETTABLEKS                       R10 R0 K17 ["ZIndex"]
      111 SETTABLEKS                       R10 R9 K17 ["ZIndex"]
      113 GETUPVAL                         R10 6
      114 MOVE                             R11 R2
      115 DUPTABLE                         R12 K22 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing"}]
      116 GETTABLEKS                       R13 R1 K23 ["get"]
      118 SETTABLEKS                       R13 R12 K20 ["getInfo"]
      120 SETTABLEKS                       R4 R12 K9 ["beginEditingAsync"]
      122 SETTABLEKS                       R5 R12 K21 ["setPart"]
      124 SETTABLEKS                       R6 R12 K11 ["finishEditing"]
      126 CALL                             R10 2 -1
      127 CALL                             R7 -1 -1
      128 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Util"]
       13 GETTABLEKS                       R4 R5 K8 ["PropertyInteraction"]
       15 GETTABLEKS                       R3 R4 K9 ["AggregatePropertyInfo"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R7 R0 K7 ["Util"]
       27 GETTABLEKS                       R6 R7 K8 ["PropertyInteraction"]
       29 GETTABLEKS                       R5 R6 K11 ["PropertyInfo"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K12 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K13 ["ReactUtils"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R1 K14 ["Signals"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R12 R0 K15 ["Components"]
       51 GETTABLEKS                       R11 R12 K16 ["PropertyEntries"]
       53 GETTABLEKS                       R10 R11 K17 ["PropertyView"]
       55 GETTABLEKS                       R9 R10 K18 ["getPropertyView"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R5 K19 ["createElement"]
       60 GETTABLEKS                       R10 R3 K20 ["View"]
       62 DUPTABLE                         R11 K23 [{"beginEditingAsync", "finishEditing"}]
       63 DUPCLOSURE                       R12 K24 [PROTO_0]
       64 SETTABLEKS                       R12 R11 K21 ["beginEditingAsync"]
       66 DUPCLOSURE                       R12 K25 [PROTO_1]
       67 SETTABLEKS                       R12 R11 K22 ["finishEditing"]
       69 DUPCLOSURE                       R12 K26 [PROTO_2]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R4
       72 DUPCLOSURE                       R13 K27 [PROTO_8]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R10
       81 RETURN                           R13 1
