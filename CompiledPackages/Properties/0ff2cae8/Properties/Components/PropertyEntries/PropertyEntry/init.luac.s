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
        5 GETTABLEKS                       R1 R1 K1 ["id"]
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getProperty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["aggregatePropertyInfo"]
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getProperty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["aggregatePropertyInfo"]
        7 GETTABLEKS                       R1 R1 K2 ["type"]
        9 RETURN                           R1 1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"id", "info"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K1 ["info"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_15:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K3 ["session"]
        9 GETTABLEKS                       R2 R2 K4 ["specializedEditingUtils"]
       11 CALL                             R1 1 1
       12 SETTABLEKS                       R0 R1 K5 ["usePropertyBoundWindow"]
       14 RETURN                           R1 1

PROTO_16:
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
       32 GETUPVAL                         R4 4
       33 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       35 NEWCLOSURE                       R5 P3
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R6 0 1
       40 GETTABLEKS                       R7 R0 K4 ["getProperty"]
       42 SETLIST                          R6 R7 1 [1]
       44 CALL                             R4 2 1
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K2 ["useSignalState"]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 1
       50 GETUPVAL                         R6 4
       51 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       53 NEWCLOSURE                       R7 P4
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R8 0 1
       58 GETTABLEKS                       R9 R0 K4 ["getProperty"]
       60 SETLIST                          R8 R9 1 [1]
       62 CALL                             R6 2 1
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K2 ["useSignalState"]
       66 GETUPVAL                         R8 1
       67 GETTABLEKS                       R8 R8 K1 ["createComputed"]
       69 NEWCLOSURE                       R9 P5
       70 CAPTURE                          VAL R0
       71 CALL                             R8 1 -1
       72 CALL                             R7 -1 1
       73 GETUPVAL                         R8 4
       74 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       76 NEWCLOSURE                       R9 P6
       77 CAPTURE                          VAL R0
       78 NEWTABLE                         R10 0 2
       80 GETTABLEKS                       R11 R0 K6 ["session"]
       82 GETTABLEKS                       R12 R0 K4 ["getProperty"]
       84 SETLIST                          R10 R11 2 [1]
       86 CALL                             R8 2 1
       87 GETUPVAL                         R9 4
       88 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       90 NEWCLOSURE                       R10 P7
       91 CAPTURE                          VAL R0
       92 NEWTABLE                         R11 0 2
       94 GETTABLEKS                       R12 R0 K6 ["session"]
       96 GETTABLEKS                       R13 R0 K4 ["getProperty"]
       98 SETLIST                          R11 R12 2 [1]
      100 CALL                             R9 2 1
      101 GETUPVAL                         R10 4
      102 GETTABLEKS                       R10 R10 K5 ["useCallback"]
      104 NEWCLOSURE                       R11 P8
      105 CAPTURE                          VAL R0
      106 NEWTABLE                         R12 0 2
      108 GETTABLEKS                       R13 R0 K6 ["session"]
      110 GETTABLEKS                       R14 R0 K4 ["getProperty"]
      112 SETLIST                          R12 R13 2 [1]
      114 CALL                             R10 2 1
      115 GETUPVAL                         R11 4
      116 GETTABLEKS                       R11 R11 K5 ["useCallback"]
      118 NEWCLOSURE                       R12 P9
      119 CAPTURE                          VAL R0
      120 NEWTABLE                         R13 0 1
      122 GETTABLEKS                       R14 R0 K4 ["getProperty"]
      124 SETLIST                          R13 R14 1 [1]
      126 CALL                             R11 2 1
      127 GETUPVAL                         R12 4
      128 GETTABLEKS                       R12 R12 K3 ["useMemo"]
      130 NEWCLOSURE                       R13 P10
      131 CAPTURE                          UPVAL U5
      132 CAPTURE                          VAL R7
      133 NEWTABLE                         R14 0 1
      135 MOVE                             R15 R7
      136 SETLIST                          R14 R15 1 [1]
      138 CALL                             R12 2 1
      139 GETUPVAL                         R13 4
      140 GETTABLEKS                       R13 R13 K3 ["useMemo"]
      142 NEWCLOSURE                       R14 P11
      143 CAPTURE                          UPVAL U6
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R0
      147 NEWTABLE                         R15 0 3
      149 GETTABLEKS                       R16 R0 K6 ["session"]
      151 GETTABLEKS                       R16 R16 K7 ["specializedEditingUtils"]
      153 MOVE                             R17 R5
      154 MOVE                             R18 R6
      155 SETLIST                          R15 R16 3 [1]
      157 CALL                             R13 2 1
      158 GETTABLEKS                       R14 R12 K8 ["rowsType"]
      160 JUMPIFNOTEQKS                    R14 K9 ["SingleRow"] ; [+37]
      162 GETUPVAL                         R14 7
      163 GETUPVAL                         R15 8
      164 DUPTABLE                         R16 K21 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils", "label", "isUnimplemented", "isReadonly", "labelWidthBinding", "onSecondaryActivated", "LayoutOrder", "Visible"}]
      165 SETTABLEKS                       R6 R16 K10 ["getInfo"]
      167 SETTABLEKS                       R8 R16 K11 ["beginEditingAsync"]
      169 SETTABLEKS                       R9 R16 K12 ["setPart"]
      171 SETTABLEKS                       R10 R16 K13 ["finishEditing"]
      173 SETTABLEKS                       R13 R16 K7 ["specializedEditingUtils"]
      175 SETTABLEKS                       R1 R16 K14 ["label"]
      177 NOT                              R17 R3
      178 SETTABLEKS                       R17 R16 K15 ["isUnimplemented"]
      180 SETTABLEKS                       R2 R16 K16 ["isReadonly"]
      182 GETTABLEKS                       R17 R0 K17 ["labelWidthBinding"]
      184 SETTABLEKS                       R17 R16 K17 ["labelWidthBinding"]
      186 SETTABLEKS                       R11 R16 K18 ["onSecondaryActivated"]
      188 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      190 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      192 GETTABLEKS                       R17 R0 K20 ["Visible"]
      194 SETTABLEKS                       R17 R16 K20 ["Visible"]
      196 CALL                             R14 2 -1
      197 RETURN                           R14 -1
      198 GETUPVAL                         R14 7
      199 GETUPVAL                         R15 9
      200 DUPTABLE                         R16 K23 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils", "label", "isUnimplemented", "isReadonly", "labelWidthBinding", "onSecondaryActivated", "LayoutOrder", "Visible", "rowConfigs"}]
      201 SETTABLEKS                       R6 R16 K10 ["getInfo"]
      203 SETTABLEKS                       R8 R16 K11 ["beginEditingAsync"]
      205 SETTABLEKS                       R9 R16 K12 ["setPart"]
      207 SETTABLEKS                       R10 R16 K13 ["finishEditing"]
      209 SETTABLEKS                       R13 R16 K7 ["specializedEditingUtils"]
      211 SETTABLEKS                       R1 R16 K14 ["label"]
      213 NOT                              R17 R3
      214 SETTABLEKS                       R17 R16 K15 ["isUnimplemented"]
      216 SETTABLEKS                       R2 R16 K16 ["isReadonly"]
      218 GETTABLEKS                       R17 R0 K17 ["labelWidthBinding"]
      220 SETTABLEKS                       R17 R16 K17 ["labelWidthBinding"]
      222 SETTABLEKS                       R11 R16 K18 ["onSecondaryActivated"]
      224 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      226 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      228 GETTABLEKS                       R17 R0 K20 ["Visible"]
      230 SETTABLEKS                       R17 R16 K20 ["Visible"]
      232 GETTABLEKS                       R17 R12 K24 ["rows"]
      234 SETTABLEKS                       R17 R16 K22 ["rowConfigs"]
      236 CALL                             R14 2 -1
      237 RETURN                           R14 -1

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
       22 GETTABLEKS                       R4 R0 K11 ["PropertyEditorTypes"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K12 ["PropertyMultiRow"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K13 ["PropertyRow"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K14 ["PropertyTypes"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K15 ["React"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K16 ["RpcTypes"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R1 K17 ["Signals"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R1 K18 ["SignalsReact"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETIMPORT                        R12 K1 [script]
       68 GETTABLEKS                       R12 R12 K19 ["getPropertyRowConfig"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R13 R0 K7 ["Components"]
       75 GETTABLEKS                       R13 R13 K8 ["PropertyEntries"]
       77 GETTABLEKS                       R13 R13 K9 ["PropertyView"]
       79 GETTABLEKS                       R13 R13 K20 ["getPropertyView"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K21 ["Hooks"]
       86 GETTABLEKS                       R14 R14 K22 ["usePropertyBoundWindow"]
       88 CALL                             R13 1 1
       89 GETTABLEKS                       R14 R7 K23 ["createElement"]
       91 DUPCLOSURE                       R15 K24 [PROTO_0]
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R2
       94 DUPCLOSURE                       R16 K25 [PROTO_16]
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R4
      105 RETURN                           R16 1
