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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getProperty"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["aggregatePropertyInfo"]
        7 GETTABLEKS                       R1 R1 K2 ["type"]
        9 RETURN                           R1 1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_13:
        0 LOADK                            R2 K0 ["%*%*"]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K1 ["className"]
        4 JUMPIFNOT                        R5 ; [+6]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["className"]
        8 LOADK                            R6 K2 [" "]
        9 CONCAT                           R4 R5 R6
       10 JUMP                             ; [+1]
       11 LOADK                            R4 K3 [""]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K4 ["name"]
       15 NAMECALL                         R2 R2 K5 ["format"]
       17 CALL                             R2 3 1
       18 MOVE                             R1 R2
       19 GETUPVAL                         R2 1
       20 DUPTABLE                         R3 K11 [{"Contents", "Size", "onStateChanged", "Title", "testingId"}]
       21 GETTABLEKS                       R4 R0 K6 ["Contents"]
       23 SETTABLEKS                       R4 R3 K6 ["Contents"]
       25 GETTABLEKS                       R4 R0 K7 ["Size"]
       27 SETTABLEKS                       R4 R3 K7 ["Size"]
       29 GETTABLEKS                       R4 R0 K8 ["onStateChanged"]
       31 SETTABLEKS                       R4 R3 K8 ["onStateChanged"]
       33 SETTABLEKS                       R1 R3 K9 ["Title"]
       35 DUPTABLE                         R4 K13 [{"className", "propertyName"}]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K1 ["className"]
       39 SETTABLEKS                       R5 R4 K1 ["className"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K4 ["name"]
       44 SETTABLEKS                       R5 R4 K12 ["propertyName"]
       46 SETTABLEKS                       R4 R3 K10 ["testingId"]
       48 CALL                             R2 1 -1
       49 RETURN                           R2 -1

PROTO_14:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["session"]
        5 GETTABLEKS                       R1 R1 K4 ["specializedEditingUtils"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 SETTABLEKS                       R1 R0 K5 ["usePropertyBoundWindow"]
       11 RETURN                           R0 1

PROTO_15:
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
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K2 ["useSignalState"]
       35 GETUPVAL                         R5 4
       36 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       38 NEWCLOSURE                       R6 P3
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R7 0 1
       43 GETTABLEKS                       R8 R0 K4 ["getProperty"]
       45 SETLIST                          R7 R8 1 [1]
       47 CALL                             R5 2 -1
       48 CALL                             R4 -1 1
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K1 ["createComputed"]
       52 NEWCLOSURE                       R6 P4
       53 CAPTURE                          VAL R0
       54 CALL                             R5 1 1
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K2 ["useSignalState"]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K1 ["createComputed"]
       61 NEWCLOSURE                       R8 P5
       62 CAPTURE                          VAL R0
       63 CALL                             R7 1 -1
       64 CALL                             R6 -1 1
       65 GETUPVAL                         R7 4
       66 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       68 NEWCLOSURE                       R8 P6
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R9 0 2
       72 GETTABLEKS                       R10 R0 K6 ["session"]
       74 GETTABLEKS                       R11 R0 K4 ["getProperty"]
       76 SETLIST                          R9 R10 2 [1]
       78 CALL                             R7 2 1
       79 GETUPVAL                         R8 4
       80 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       82 NEWCLOSURE                       R9 P7
       83 CAPTURE                          VAL R0
       84 NEWTABLE                         R10 0 2
       86 GETTABLEKS                       R11 R0 K6 ["session"]
       88 GETTABLEKS                       R12 R0 K4 ["getProperty"]
       90 SETLIST                          R10 R11 2 [1]
       92 CALL                             R8 2 1
       93 GETUPVAL                         R9 4
       94 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       96 NEWCLOSURE                       R10 P8
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R11 0 2
      100 GETTABLEKS                       R12 R0 K6 ["session"]
      102 GETTABLEKS                       R13 R0 K4 ["getProperty"]
      104 SETLIST                          R11 R12 2 [1]
      106 CALL                             R9 2 1
      107 GETUPVAL                         R10 4
      108 GETTABLEKS                       R10 R10 K5 ["useCallback"]
      110 NEWCLOSURE                       R11 P9
      111 CAPTURE                          VAL R0
      112 NEWTABLE                         R12 0 1
      114 GETTABLEKS                       R13 R0 K4 ["getProperty"]
      116 SETLIST                          R12 R13 1 [1]
      118 CALL                             R10 2 1
      119 GETUPVAL                         R11 4
      120 GETTABLEKS                       R11 R11 K3 ["useMemo"]
      122 NEWCLOSURE                       R12 P10
      123 CAPTURE                          UPVAL U5
      124 CAPTURE                          VAL R6
      125 NEWTABLE                         R13 0 1
      127 MOVE                             R14 R6
      128 SETLIST                          R13 R14 1 [1]
      130 CALL                             R11 2 1
      131 GETUPVAL                         R12 4
      132 GETTABLEKS                       R12 R12 K5 ["useCallback"]
      134 NEWCLOSURE                       R13 P11
      135 CAPTURE                          VAL R4
      136 CAPTURE                          UPVAL U6
      137 NEWTABLE                         R14 0 1
      139 MOVE                             R15 R4
      140 SETLIST                          R14 R15 1 [1]
      142 CALL                             R12 2 1
      143 GETUPVAL                         R13 4
      144 GETTABLEKS                       R13 R13 K3 ["useMemo"]
      146 NEWCLOSURE                       R14 P12
      147 CAPTURE                          VAL R0
      148 CAPTURE                          VAL R12
      149 NEWTABLE                         R15 0 2
      151 GETTABLEKS                       R16 R0 K6 ["session"]
      153 GETTABLEKS                       R16 R16 K7 ["specializedEditingUtils"]
      155 MOVE                             R17 R12
      156 SETLIST                          R15 R16 2 [1]
      158 CALL                             R13 2 1
      159 GETTABLEKS                       R14 R11 K8 ["rowsType"]
      161 JUMPIFNOTEQKS                    R14 K9 ["SingleRow"] ; [+37]
      163 GETUPVAL                         R14 7
      164 GETUPVAL                         R15 8
      165 DUPTABLE                         R16 K21 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils", "label", "isUnimplemented", "isReadonly", "labelWidthBinding", "onSecondaryActivated", "LayoutOrder", "Visible"}]
      166 SETTABLEKS                       R5 R16 K10 ["getInfo"]
      168 SETTABLEKS                       R7 R16 K11 ["beginEditingAsync"]
      170 SETTABLEKS                       R8 R16 K12 ["setPart"]
      172 SETTABLEKS                       R9 R16 K13 ["finishEditing"]
      174 SETTABLEKS                       R13 R16 K7 ["specializedEditingUtils"]
      176 SETTABLEKS                       R1 R16 K14 ["label"]
      178 NOT                              R17 R3
      179 SETTABLEKS                       R17 R16 K15 ["isUnimplemented"]
      181 SETTABLEKS                       R2 R16 K16 ["isReadonly"]
      183 GETTABLEKS                       R17 R0 K17 ["labelWidthBinding"]
      185 SETTABLEKS                       R17 R16 K17 ["labelWidthBinding"]
      187 SETTABLEKS                       R10 R16 K18 ["onSecondaryActivated"]
      189 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      191 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      193 GETTABLEKS                       R17 R0 K20 ["Visible"]
      195 SETTABLEKS                       R17 R16 K20 ["Visible"]
      197 CALL                             R14 2 -1
      198 RETURN                           R14 -1
      199 GETUPVAL                         R14 7
      200 GETUPVAL                         R15 9
      201 DUPTABLE                         R16 K23 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils", "label", "isUnimplemented", "isReadonly", "labelWidthBinding", "onSecondaryActivated", "LayoutOrder", "Visible", "rowConfigs"}]
      202 SETTABLEKS                       R5 R16 K10 ["getInfo"]
      204 SETTABLEKS                       R7 R16 K11 ["beginEditingAsync"]
      206 SETTABLEKS                       R8 R16 K12 ["setPart"]
      208 SETTABLEKS                       R9 R16 K13 ["finishEditing"]
      210 SETTABLEKS                       R13 R16 K7 ["specializedEditingUtils"]
      212 SETTABLEKS                       R1 R16 K14 ["label"]
      214 NOT                              R17 R3
      215 SETTABLEKS                       R17 R16 K15 ["isUnimplemented"]
      217 SETTABLEKS                       R2 R16 K16 ["isReadonly"]
      219 GETTABLEKS                       R17 R0 K17 ["labelWidthBinding"]
      221 SETTABLEKS                       R17 R16 K17 ["labelWidthBinding"]
      223 SETTABLEKS                       R10 R16 K18 ["onSecondaryActivated"]
      225 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      227 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      229 GETTABLEKS                       R17 R0 K20 ["Visible"]
      231 SETTABLEKS                       R17 R16 K20 ["Visible"]
      233 GETTABLEKS                       R17 R11 K24 ["rows"]
      235 SETTABLEKS                       R17 R16 K22 ["rowConfigs"]
      237 CALL                             R14 2 -1
      238 RETURN                           R14 -1

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
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K20 ["Hooks"]
       81 GETTABLEKS                       R13 R13 K21 ["useWindow"]
       83 CALL                             R12 1 1
       84 GETTABLEKS                       R13 R6 K22 ["createElement"]
       86 DUPCLOSURE                       R14 K23 [PROTO_0]
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R2
       89 DUPCLOSURE                       R15 K24 [PROTO_15]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R3
      100 RETURN                           R15 1
