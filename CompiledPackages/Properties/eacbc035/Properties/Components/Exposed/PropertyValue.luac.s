PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["fromInfoAndParts"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["fromType"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["info"]
        7 GETTABLEKS                       R2 R2 K2 ["type"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["info"]
       12 GETTABLEKS                       R3 R3 K3 ["value"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K1 ["info"]
       17 GETTABLEKS                       R5 R5 K5 ["readonly"]
       19 ORK                              R4 R5 K4 [False]
       20 CALL                             R1 3 -1
       21 CALL                             R0 -1 2
       22 DUPTABLE                         R2 K8 [{"get", "set"}]
       23 SETTABLEKS                       R0 R2 K6 ["get"]
       25 SETTABLEKS                       R1 R2 K7 ["set"]
       27 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["set"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["info"]
        7 GETTABLEKS                       R2 R2 K2 ["type"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["info"]
       12 GETTABLEKS                       R3 R3 K3 ["value"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K1 ["info"]
       17 GETTABLEKS                       R5 R5 K5 ["readonly"]
       19 ORK                              R4 R5 K4 [False]
       20 CALL                             R1 3 -1
       21 CALL                             R0 -1 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["info"]
        4 GETTABLEKS                       R1 R1 K1 ["type"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETIMPORT                        R1 K1 [error]
        3 LOADK                            R2 K2 ["extra data is not supported for comsumers of properties at this time"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["beginEditingAsync"]
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
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["updateValue"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useInitializedValue"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K1 ["useEffect"]
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R4 0 3
       17 GETTABLEKS                       R5 R0 K2 ["info"]
       19 GETTABLEKS                       R5 R5 K3 ["type"]
       21 GETTABLEKS                       R6 R0 K2 ["info"]
       23 GETTABLEKS                       R6 R6 K4 ["value"]
       25 GETTABLEKS                       R7 R0 K2 ["info"]
       27 GETTABLEKS                       R7 R7 K5 ["readonly"]
       29 SETLIST                          R4 R5 3 [1]
       31 CALL                             R2 2 0
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K6 ["useMemo"]
       35 NEWCLOSURE                       R3 P2
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R4 0 1
       40 GETTABLEKS                       R5 R0 K2 ["info"]
       42 GETTABLEKS                       R5 R5 K3 ["type"]
       44 SETLIST                          R4 R5 1 [1]
       46 CALL                             R2 2 1
       47 GETTABLEKS                       R3 R0 K7 ["editingSteps"]
       49 JUMPIF                           R3 ; [+1]
       50 GETUPVAL                         R3 5
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       54 NEWCLOSURE                       R5 P3
       55 CAPTURE                          VAL R3
       56 NEWTABLE                         R6 0 1
       58 GETTABLEKS                       R7 R3 K9 ["beginEditingAsync"]
       60 SETLIST                          R6 R7 1 [1]
       62 CALL                             R4 2 1
       63 GETUPVAL                         R5 3
       64 GETTABLEKS                       R5 R5 K8 ["useCallback"]
       66 NEWCLOSURE                       R6 P4
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R7 0 1
       70 GETTABLEKS                       R8 R0 K10 ["updateValue"]
       72 SETLIST                          R7 R8 1 [1]
       74 CALL                             R5 2 1
       75 GETUPVAL                         R6 3
       76 GETTABLEKS                       R6 R6 K8 ["useCallback"]
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
      115 DUPTABLE                         R12 K23 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedGuestUtils"}]
      116 GETTABLEKS                       R13 R1 K24 ["get"]
      118 SETTABLEKS                       R13 R12 K20 ["getInfo"]
      120 SETTABLEKS                       R4 R12 K9 ["beginEditingAsync"]
      122 SETTABLEKS                       R5 R12 K21 ["setPart"]
      124 SETTABLEKS                       R6 R12 K11 ["finishEditing"]
      126 NEWTABLE                         R13 0 0
      128 SETTABLEKS                       R13 R12 K22 ["specializedGuestUtils"]
      130 CALL                             R10 2 -1
      131 CALL                             R7 -1 -1
      132 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["PropertyInteraction"]
       13 GETTABLEKS                       R3 R3 K8 ["AggregatePropertyInfo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K7 ["PropertyInteraction"]
       25 GETTABLEKS                       R5 R5 K10 ["PropertyInfo"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K11 ["React"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K12 ["ReactUtils"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R1 K13 ["Signals"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K14 ["Components"]
       47 GETTABLEKS                       R9 R9 K15 ["PropertyEntries"]
       49 GETTABLEKS                       R9 R9 K16 ["PropertyView"]
       51 GETTABLEKS                       R9 R9 K17 ["getPropertyView"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R5 K18 ["createElement"]
       56 GETTABLEKS                       R10 R3 K19 ["View"]
       58 DUPTABLE                         R11 K22 [{"beginEditingAsync", "finishEditing"}]
       59 DUPCLOSURE                       R12 K23 [PROTO_0]
       60 SETTABLEKS                       R12 R11 K20 ["beginEditingAsync"]
       62 DUPCLOSURE                       R12 K24 [PROTO_1]
       63 SETTABLEKS                       R12 R11 K21 ["finishEditing"]
       65 DUPCLOSURE                       R12 K25 [PROTO_2]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R4
       68 DUPCLOSURE                       R13 K26 [PROTO_8]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R10
       77 RETURN                           R13 1
