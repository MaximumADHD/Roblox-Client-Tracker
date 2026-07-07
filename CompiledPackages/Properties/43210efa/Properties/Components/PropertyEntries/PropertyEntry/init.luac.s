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
        1 GETTABLEKS                       R1 R1 K0 ["getProperty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["aggregatePropertyInfo"]
        7 GETTABLEKS                       R1 R1 K2 ["type"]
        9 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_11:
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
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K2 ["useSignalState"]
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K1 ["createComputed"]
       44 NEWCLOSURE                       R7 P4
       45 CAPTURE                          VAL R0
       46 CALL                             R6 1 -1
       47 CALL                             R5 -1 1
       48 GETUPVAL                         R6 4
       49 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       51 NEWCLOSURE                       R7 P5
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R8 0 2
       55 GETTABLEKS                       R9 R0 K4 ["session"]
       57 GETTABLEKS                       R10 R0 K5 ["getProperty"]
       59 SETLIST                          R8 R9 2 [1]
       61 CALL                             R6 2 1
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       65 NEWCLOSURE                       R8 P6
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R9 0 2
       69 GETTABLEKS                       R10 R0 K4 ["session"]
       71 GETTABLEKS                       R11 R0 K5 ["getProperty"]
       73 SETLIST                          R9 R10 2 [1]
       75 CALL                             R7 2 1
       76 GETUPVAL                         R8 4
       77 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       79 NEWCLOSURE                       R9 P7
       80 CAPTURE                          VAL R0
       81 NEWTABLE                         R10 0 2
       83 GETTABLEKS                       R11 R0 K4 ["session"]
       85 GETTABLEKS                       R12 R0 K5 ["getProperty"]
       87 SETLIST                          R10 R11 2 [1]
       89 CALL                             R8 2 1
       90 GETUPVAL                         R9 4
       91 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       93 NEWCLOSURE                       R10 P8
       94 CAPTURE                          VAL R0
       95 NEWTABLE                         R11 0 1
       97 GETTABLEKS                       R12 R0 K5 ["getProperty"]
       99 SETLIST                          R11 R12 1 [1]
      101 CALL                             R9 2 1
      102 GETUPVAL                         R10 4
      103 GETTABLEKS                       R10 R10 K6 ["useMemo"]
      105 NEWCLOSURE                       R11 P9
      106 CAPTURE                          UPVAL U5
      107 CAPTURE                          VAL R5
      108 NEWTABLE                         R12 0 1
      110 MOVE                             R13 R5
      111 SETLIST                          R12 R13 1 [1]
      113 CALL                             R10 2 1
      114 GETTABLEKS                       R11 R10 K7 ["rowsType"]
      116 JUMPIFNOTEQKS                    R11 K8 ["SingleRow"] ; [+41]
      118 GETUPVAL                         R11 6
      119 GETUPVAL                         R12 7
      120 DUPTABLE                         R13 K21 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils", "label", "isUnimplemented", "isReadonly", "labelWidthBinding", "onSecondaryActivated", "LayoutOrder", "Visible"}]
      121 SETTABLEKS                       R4 R13 K9 ["getInfo"]
      123 SETTABLEKS                       R6 R13 K10 ["beginEditingAsync"]
      125 SETTABLEKS                       R7 R13 K11 ["setPart"]
      127 SETTABLEKS                       R8 R13 K12 ["finishEditing"]
      129 GETTABLEKS                       R14 R0 K4 ["session"]
      131 GETTABLEKS                       R14 R14 K13 ["specializedEditingUtils"]
      133 SETTABLEKS                       R14 R13 K13 ["specializedEditingUtils"]
      135 SETTABLEKS                       R1 R13 K14 ["label"]
      137 NOT                              R14 R3
      138 SETTABLEKS                       R14 R13 K15 ["isUnimplemented"]
      140 SETTABLEKS                       R2 R13 K16 ["isReadonly"]
      142 GETTABLEKS                       R14 R0 K17 ["labelWidthBinding"]
      144 SETTABLEKS                       R14 R13 K17 ["labelWidthBinding"]
      146 SETTABLEKS                       R9 R13 K18 ["onSecondaryActivated"]
      148 GETTABLEKS                       R14 R0 K19 ["LayoutOrder"]
      150 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      152 GETTABLEKS                       R14 R0 K20 ["Visible"]
      154 SETTABLEKS                       R14 R13 K20 ["Visible"]
      156 CALL                             R11 2 -1
      157 RETURN                           R11 -1
      158 GETUPVAL                         R11 6
      159 GETUPVAL                         R12 8
      160 DUPTABLE                         R13 K23 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils", "label", "isUnimplemented", "isReadonly", "labelWidthBinding", "onSecondaryActivated", "LayoutOrder", "Visible", "rowConfigs"}]
      161 SETTABLEKS                       R4 R13 K9 ["getInfo"]
      163 SETTABLEKS                       R6 R13 K10 ["beginEditingAsync"]
      165 SETTABLEKS                       R7 R13 K11 ["setPart"]
      167 SETTABLEKS                       R8 R13 K12 ["finishEditing"]
      169 GETTABLEKS                       R14 R0 K4 ["session"]
      171 GETTABLEKS                       R14 R14 K13 ["specializedEditingUtils"]
      173 SETTABLEKS                       R14 R13 K13 ["specializedEditingUtils"]
      175 SETTABLEKS                       R1 R13 K14 ["label"]
      177 NOT                              R14 R3
      178 SETTABLEKS                       R14 R13 K15 ["isUnimplemented"]
      180 SETTABLEKS                       R2 R13 K16 ["isReadonly"]
      182 GETTABLEKS                       R14 R0 K17 ["labelWidthBinding"]
      184 SETTABLEKS                       R14 R13 K17 ["labelWidthBinding"]
      186 SETTABLEKS                       R9 R13 K18 ["onSecondaryActivated"]
      188 GETTABLEKS                       R14 R0 K19 ["LayoutOrder"]
      190 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      192 GETTABLEKS                       R14 R0 K20 ["Visible"]
      194 SETTABLEKS                       R14 R13 K20 ["Visible"]
      196 GETTABLEKS                       R14 R10 K24 ["rows"]
      198 SETTABLEKS                       R14 R13 K22 ["rowConfigs"]
      200 CALL                             R11 2 -1
      201 RETURN                           R11 -1

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
       22 GETIMPORT                        R4 K1 [script]
       24 GETTABLEKS                       R4 R4 K11 ["PropertyMultiRow"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETIMPORT                        R5 K1 [script]
       31 GETTABLEKS                       R5 R5 K12 ["PropertyRow"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K13 ["PropertyTypes"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K14 ["React"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["RpcTypes"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K16 ["Signals"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R1 K17 ["SignalsReact"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETIMPORT                        R11 K1 [script]
       63 GETTABLEKS                       R11 R11 K18 ["getPropertyRowConfig"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K7 ["Components"]
       70 GETTABLEKS                       R12 R12 K8 ["PropertyEntries"]
       72 GETTABLEKS                       R12 R12 K9 ["PropertyView"]
       74 GETTABLEKS                       R12 R12 K19 ["getPropertyView"]
       76 CALL                             R11 1 1
       77 GETTABLEKS                       R12 R6 K20 ["createElement"]
       79 DUPCLOSURE                       R13 K21 [PROTO_0]
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R2
       82 DUPCLOSURE                       R14 K22 [PROTO_11]
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R3
       92 RETURN                           R14 1
