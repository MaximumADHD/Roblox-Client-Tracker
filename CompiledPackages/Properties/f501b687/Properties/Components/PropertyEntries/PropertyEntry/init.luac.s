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
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["session"]
        3 GETTABLEKS                       R2 R2 K1 ["editProperty"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["getProperty"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R3 R3 K3 ["id"]
       11 DUPTABLE                         R4 K7 [{["type"] = "Stage", ["part"]}]
       12 DUPTABLE                         R5 K10 [{"name", "value"}]
       13 SETTABLEKS                       R0 R5 K8 ["name"]
       15 SETTABLEKS                       R1 R5 K9 ["value"]
       17 SETTABLEKS                       R5 R4 K6 ["part"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K3 [Enum.FinishRecordingOperation.Commit]
        2 JUMPIFNOTEQ                      R0 R2 ; [+3]
        4 DUPTABLE                         R1 K5 [{["type"] = "Commit"}]
        5 JUMP                             ; [+1]
        6 DUPTABLE                         R1 K7 [{["type"] = "Cancel"}]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K8 ["session"]
       10 GETTABLEKS                       R2 R2 K9 ["editProperty"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K10 ["getProperty"]
       15 CALL                             R3 0 1
       16 GETTABLEKS                       R3 R3 K11 ["id"]
       18 MOVE                             R4 R1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getProperty"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["id"]
        6 GETTABLEKS                       R1 R1 K2 ["metaType"]
        8 JUMPIFNOTEQKS                    R1 K3 ["Attribute"] ; [+17]
       10 GETIMPORT                        R1 K5 [print]
       12 LOADK                            R2 K6 ["attribute %* right click!"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K0 ["getProperty"]
       16 CALL                             R4 0 1
       17 GETTABLEKS                       R4 R4 K1 ["id"]
       19 GETTABLEKS                       R4 R4 K7 ["name"]
       21 NAMECALL                         R2 R2 K8 ["format"]
       23 CALL                             R2 2 1
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETIMPORT                        R1 K5 [print]
       28 LOADK                            R2 K9 ["property %* right click!"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K0 ["getProperty"]
       32 CALL                             R4 0 1
       33 GETTABLEKS                       R4 R4 K1 ["id"]
       35 GETTABLEKS                       R4 R4 K7 ["name"]
       37 NAMECALL                         R2 R2 K8 ["format"]
       39 CALL                             R2 2 1
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

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
       76 DUPCLOSURE                       R9 K6 [PROTO_9]
       77 NEWTABLE                         R10 0 0
       79 CALL                             R8 2 1
       80 GETUPVAL                         R9 4
       81 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       83 NEWCLOSURE                       R10 P7
       84 CAPTURE                          VAL R0
       85 NEWTABLE                         R11 0 2
       87 GETTABLEKS                       R12 R0 K7 ["session"]
       89 GETTABLEKS                       R13 R0 K4 ["getProperty"]
       91 SETLIST                          R11 R12 2 [1]
       93 CALL                             R9 2 1
       94 GETUPVAL                         R10 4
       95 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       97 NEWCLOSURE                       R11 P8
       98 CAPTURE                          VAL R0
       99 NEWTABLE                         R12 0 2
      101 GETTABLEKS                       R13 R0 K7 ["session"]
      103 GETTABLEKS                       R14 R0 K4 ["getProperty"]
      105 SETLIST                          R12 R13 2 [1]
      107 CALL                             R10 2 1
      108 GETUPVAL                         R11 4
      109 GETTABLEKS                       R11 R11 K5 ["useCallback"]
      111 NEWCLOSURE                       R12 P9
      112 CAPTURE                          VAL R0
      113 NEWTABLE                         R13 0 1
      115 GETTABLEKS                       R14 R0 K4 ["getProperty"]
      117 SETLIST                          R13 R14 1 [1]
      119 CALL                             R11 2 1
      120 GETUPVAL                         R12 4
      121 GETTABLEKS                       R12 R12 K3 ["useMemo"]
      123 NEWCLOSURE                       R13 P10
      124 CAPTURE                          UPVAL U5
      125 CAPTURE                          VAL R7
      126 NEWTABLE                         R14 0 1
      128 MOVE                             R15 R7
      129 SETLIST                          R14 R15 1 [1]
      131 CALL                             R12 2 1
      132 GETUPVAL                         R13 4
      133 GETTABLEKS                       R13 R13 K3 ["useMemo"]
      135 NEWCLOSURE                       R14 P11
      136 CAPTURE                          UPVAL U6
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R0
      140 NEWTABLE                         R15 0 3
      142 GETTABLEKS                       R16 R0 K7 ["session"]
      144 GETTABLEKS                       R16 R16 K8 ["specializedEditingUtils"]
      146 MOVE                             R17 R5
      147 MOVE                             R18 R6
      148 SETLIST                          R15 R16 3 [1]
      150 CALL                             R13 2 1
      151 GETTABLEKS                       R14 R12 K9 ["rowsType"]
      153 JUMPIFNOTEQKS                    R14 K10 ["SingleRow"] ; [+37]
      155 GETUPVAL                         R14 7
      156 GETUPVAL                         R15 8
      157 DUPTABLE                         R16 K22 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils", "label", "isUnimplemented", "isReadonly", "labelWidthBinding", "onSecondaryActivated", "LayoutOrder", "Visible"}]
      158 SETTABLEKS                       R6 R16 K11 ["getInfo"]
      160 SETTABLEKS                       R8 R16 K12 ["beginEditingAsync"]
      162 SETTABLEKS                       R9 R16 K13 ["setPart"]
      164 SETTABLEKS                       R10 R16 K14 ["finishEditing"]
      166 SETTABLEKS                       R13 R16 K8 ["specializedEditingUtils"]
      168 SETTABLEKS                       R1 R16 K15 ["label"]
      170 NOT                              R17 R3
      171 SETTABLEKS                       R17 R16 K16 ["isUnimplemented"]
      173 SETTABLEKS                       R2 R16 K17 ["isReadonly"]
      175 GETTABLEKS                       R17 R0 K18 ["labelWidthBinding"]
      177 SETTABLEKS                       R17 R16 K18 ["labelWidthBinding"]
      179 SETTABLEKS                       R11 R16 K19 ["onSecondaryActivated"]
      181 GETTABLEKS                       R17 R0 K20 ["LayoutOrder"]
      183 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
      185 GETTABLEKS                       R17 R0 K21 ["Visible"]
      187 SETTABLEKS                       R17 R16 K21 ["Visible"]
      189 CALL                             R14 2 -1
      190 RETURN                           R14 -1
      191 GETUPVAL                         R14 7
      192 GETUPVAL                         R15 9
      193 DUPTABLE                         R16 K24 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils", "label", "isUnimplemented", "isReadonly", "labelWidthBinding", "onSecondaryActivated", "LayoutOrder", "Visible", "rowConfigs"}]
      194 SETTABLEKS                       R6 R16 K11 ["getInfo"]
      196 SETTABLEKS                       R8 R16 K12 ["beginEditingAsync"]
      198 SETTABLEKS                       R9 R16 K13 ["setPart"]
      200 SETTABLEKS                       R10 R16 K14 ["finishEditing"]
      202 SETTABLEKS                       R13 R16 K8 ["specializedEditingUtils"]
      204 SETTABLEKS                       R1 R16 K15 ["label"]
      206 NOT                              R17 R3
      207 SETTABLEKS                       R17 R16 K16 ["isUnimplemented"]
      209 SETTABLEKS                       R2 R16 K17 ["isReadonly"]
      211 GETTABLEKS                       R17 R0 K18 ["labelWidthBinding"]
      213 SETTABLEKS                       R17 R16 K18 ["labelWidthBinding"]
      215 SETTABLEKS                       R11 R16 K19 ["onSecondaryActivated"]
      217 GETTABLEKS                       R17 R0 K20 ["LayoutOrder"]
      219 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
      221 GETTABLEKS                       R17 R0 K21 ["Visible"]
      223 SETTABLEKS                       R17 R16 K21 ["Visible"]
      225 GETTABLEKS                       R17 R12 K25 ["rows"]
      227 SETTABLEKS                       R17 R16 K23 ["rowConfigs"]
      229 CALL                             R14 2 -1
      230 RETURN                           R14 -1

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
       81 GETTABLEKS                       R13 R13 K21 ["usePropertyBoundWindow"]
       83 CALL                             R12 1 1
       84 GETTABLEKS                       R13 R6 K22 ["createElement"]
       86 DUPCLOSURE                       R14 K23 [PROTO_0]
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R2
       89 DUPCLOSURE                       R15 K24 [PROTO_16]
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
