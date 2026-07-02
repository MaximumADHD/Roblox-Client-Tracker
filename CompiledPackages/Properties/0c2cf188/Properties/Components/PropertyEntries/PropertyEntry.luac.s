PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["aggregatePropertyInfo"]
        3 GETTABLEKS                       R3 R3 K1 ["type"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getProperty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["id"]
        7 GETTABLEKS                       R1 R1 K2 ["name"]
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getProperty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["aggregatePropertyInfo"]
        7 GETTABLEKS                       R1 R1 K2 ["readonly"]
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getProperty"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R2 K1 ["aggregatePropertyInfo"]
        8 GETTABLEKS                       R4 R4 K2 ["type"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 JUMPIFNOTEQ                      R3 R4 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getProperty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["aggregatePropertyInfo"]
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["session"]
        3 GETTABLEKS                       R1 R1 K1 ["beginEditingPropertyAsync"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["getProperty"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R2 R2 K3 ["id"]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["session"]
        3 GETTABLEKS                       R2 R2 K1 ["setPropertyPart"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["getProperty"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R3 R3 K3 ["id"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["session"]
        3 GETTABLEKS                       R1 R1 K1 ["finishEditingProperty"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["getProperty"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R2 R2 K3 ["id"]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getProperty"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["id"]
        6 GETTABLEKS                       R1 R1 K2 ["metaType"]
        8 JUMPIFNOTEQKS                    R1 K3 ["Attribute"] ; [+18]
       10 GETIMPORT                        R1 K5 [print]
       12 LOADK                            R3 K6 ["attribute %* right click!"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["getProperty"]
       16 CALL                             R5 0 1
       17 GETTABLEKS                       R5 R5 K1 ["id"]
       19 GETTABLEKS                       R5 R5 K7 ["name"]
       21 NAMECALL                         R3 R3 K8 ["format"]
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 CALL                             R1 1 0
       26 RETURN                           R0 0
       27 GETIMPORT                        R1 K5 [print]
       29 LOADK                            R3 K9 ["property %* right click!"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["getProperty"]
       33 CALL                             R5 0 1
       34 GETTABLEKS                       R5 R5 K1 ["id"]
       36 GETTABLEKS                       R5 R5 K7 ["name"]
       38 NAMECALL                         R3 R3 K8 ["format"]
       40 CALL                             R3 2 1
       41 MOVE                             R2 R3
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalBinding"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["createComputed"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K1 ["createComputed"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R0
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K2 ["useSignalState"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K1 ["createComputed"]
       26 NEWCLOSURE                       R5 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CALL                             R4 1 -1
       31 CALL                             R3 -1 1
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K1 ["createComputed"]
       35 NEWCLOSURE                       R5 P3
       36 CAPTURE                          VAL R0
       37 CALL                             R4 1 1
       38 GETUPVAL                         R5 4
       39 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       41 NEWCLOSURE                       R6 P4
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R7 0 2
       45 GETTABLEKS                       R8 R0 K4 ["session"]
       47 GETTABLEKS                       R9 R0 K5 ["getProperty"]
       49 SETLIST                          R7 R8 2 [1]
       51 CALL                             R5 2 1
       52 GETUPVAL                         R6 4
       53 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       55 NEWCLOSURE                       R7 P5
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R8 0 2
       59 GETTABLEKS                       R9 R0 K4 ["session"]
       61 GETTABLEKS                       R10 R0 K5 ["getProperty"]
       63 SETLIST                          R8 R9 2 [1]
       65 CALL                             R6 2 1
       66 GETUPVAL                         R7 4
       67 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       69 NEWCLOSURE                       R8 P6
       70 CAPTURE                          VAL R0
       71 NEWTABLE                         R9 0 2
       73 GETTABLEKS                       R10 R0 K4 ["session"]
       75 GETTABLEKS                       R11 R0 K5 ["getProperty"]
       77 SETLIST                          R9 R10 2 [1]
       79 CALL                             R7 2 1
       80 GETUPVAL                         R8 4
       81 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       83 NEWCLOSURE                       R9 P7
       84 CAPTURE                          VAL R0
       85 NEWTABLE                         R10 0 1
       87 GETTABLEKS                       R11 R0 K5 ["getProperty"]
       89 SETLIST                          R10 R11 1 [1]
       91 CALL                             R8 2 1
       92 GETUPVAL                         R9 5
       93 GETUPVAL                         R10 6
       94 DUPTABLE                         R11 K18 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils", "label", "isLabelMuted", "isUnimplemented", "labelWidthBinding", "onSecondaryActivated", "LayoutOrder", "Visible"}]
       95 SETTABLEKS                       R4 R11 K6 ["getInfo"]
       97 SETTABLEKS                       R5 R11 K7 ["beginEditingAsync"]
       99 SETTABLEKS                       R6 R11 K8 ["setPart"]
      101 SETTABLEKS                       R7 R11 K9 ["finishEditing"]
      103 GETTABLEKS                       R12 R0 K4 ["session"]
      105 GETTABLEKS                       R12 R12 K10 ["specializedEditingUtils"]
      107 SETTABLEKS                       R12 R11 K10 ["specializedEditingUtils"]
      109 SETTABLEKS                       R1 R11 K11 ["label"]
      111 SETTABLEKS                       R2 R11 K12 ["isLabelMuted"]
      113 NOT                              R12 R3
      114 SETTABLEKS                       R12 R11 K13 ["isUnimplemented"]
      116 GETTABLEKS                       R12 R0 K14 ["labelWidthBinding"]
      118 SETTABLEKS                       R12 R11 K14 ["labelWidthBinding"]
      120 SETTABLEKS                       R8 R11 K15 ["onSecondaryActivated"]
      122 GETTABLEKS                       R12 R0 K16 ["LayoutOrder"]
      124 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
      126 GETTABLEKS                       R12 R0 K17 ["Visible"]
      128 SETTABLEKS                       R12 R11 K17 ["Visible"]
      130 CALL                             R9 2 -1
      131 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R3 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R3 K10 ["BasicPropertyView"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K7 ["Components"]
       24 GETTABLEKS                       R4 R4 K8 ["PropertyEntries"]
       26 GETTABLEKS                       R4 R4 K11 ["PropertyRow"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R0 K12 ["PropertyTypes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K13 ["React"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K14 ["RpcTypes"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K15 ["Signals"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K16 ["SignalsReact"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K7 ["Components"]
       58 GETTABLEKS                       R10 R10 K8 ["PropertyEntries"]
       60 GETTABLEKS                       R10 R10 K9 ["PropertyView"]
       62 GETTABLEKS                       R10 R10 K17 ["getPropertyView"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R10 R5 K18 ["createElement"]
       67 DUPCLOSURE                       R11 K19 [PROTO_0]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R2
       70 DUPCLOSURE                       R12 K20 [PROTO_9]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R3
       78 RETURN                           R12 1
