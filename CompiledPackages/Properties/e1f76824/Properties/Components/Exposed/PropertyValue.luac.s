PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+35]
        3 JUMPIFNOTEQKS                    R0 K0 ["Content"] ; [+34]
        5 LOADB                            R5 0
        6 JUMPIFEQKNIL                     R3 ; [+7]
        8 GETTABLEKS                       R6 R3 K1 ["assetType"]
       10 JUMPIFNOTEQKNIL                  R6 ; [+2]
       12 LOADB                            R5 0 +1
       13 LOADB                            R5 1
       14 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       16 LOADK                            R6 K2 ["No assetType passed in for ContentProperty"]
       17 GETIMPORT                        R4 K4 [assert]
       19 CALL                             R4 2 0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K5 ["fromInfoAndParts"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K6 ["fromContentType"]
       26 MOVE                             R6 R2
       27 GETTABLEKS                       R7 R3 K1 ["assetType"]
       29 CALL                             R5 2 1
       30 DUPTABLE                         R6 K8 [{"value"}]
       31 DUPTABLE                         R7 K11 [{["value"], ["multiple"] = False}]
       32 SETTABLEKS                       R1 R7 K7 ["value"]
       34 SETTABLEKS                       R7 R6 K7 ["value"]
       36 CALL                             R4 2 -1
       37 RETURN                           R4 -1
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K5 ["fromInfoAndParts"]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K12 ["fromType"]
       44 MOVE                             R6 R0
       45 MOVE                             R7 R2
       46 CALL                             R5 2 1
       47 DUPTABLE                         R6 K8 [{"value"}]
       48 DUPTABLE                         R7 K11 [{["value"], ["multiple"] = False}]
       49 SETTABLEKS                       R1 R7 K7 ["value"]
       51 SETTABLEKS                       R7 R6 K7 ["value"]
       53 CALL                             R4 2 -1
       54 RETURN                           R4 -1

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
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K1 ["info"]
       23 GETTABLEKS                       R5 R5 K6 ["extra"]
       25 CALL                             R1 4 -1
       26 CALL                             R0 -1 2
       27 DUPTABLE                         R2 K9 [{"get", "set"}]
       28 SETTABLEKS                       R0 R2 K7 ["get"]
       30 SETTABLEKS                       R1 R2 K8 ["set"]
       32 RETURN                           R2 1

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
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K1 ["info"]
       23 GETTABLEKS                       R5 R5 K6 ["extra"]
       25 CALL                             R1 4 -1
       26 CALL                             R0 -1 0
       27 RETURN                           R0 0

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
        3 LOADK                            R2 K2 ["extra data is not supported for consumers of properties at this time"]
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
       89 DUPTABLE                         R9 K19 [{["tag"] = "row flex-x-between align-x-left align-y-center auto-xy", ["AnchorPoint"], ["LayoutOrder"], ["Position"], ["Size"], ["ZIndex"]}]
       90 GETTABLEKS                       R10 R0 K14 ["AnchorPoint"]
       92 SETTABLEKS                       R10 R9 K14 ["AnchorPoint"]
       94 GETTABLEKS                       R10 R0 K15 ["LayoutOrder"]
       96 SETTABLEKS                       R10 R9 K15 ["LayoutOrder"]
       98 GETTABLEKS                       R10 R0 K16 ["Position"]
      100 SETTABLEKS                       R10 R9 K16 ["Position"]
      102 GETTABLEKS                       R10 R0 K17 ["Size"]
      104 SETTABLEKS                       R10 R9 K17 ["Size"]
      106 GETTABLEKS                       R10 R0 K18 ["ZIndex"]
      108 SETTABLEKS                       R10 R9 K18 ["ZIndex"]
      110 GETUPVAL                         R10 6
      111 MOVE                             R11 R2
      112 DUPTABLE                         R12 K23 [{"getInfo", "beginEditingAsync", "setPart", "finishEditing", "specializedEditingUtils"}]
      113 GETTABLEKS                       R13 R1 K24 ["get"]
      115 SETTABLEKS                       R13 R12 K20 ["getInfo"]
      117 SETTABLEKS                       R4 R12 K9 ["beginEditingAsync"]
      119 SETTABLEKS                       R5 R12 K21 ["setPart"]
      121 SETTABLEKS                       R6 R12 K11 ["finishEditing"]
      123 GETTABLEKS                       R13 R0 K22 ["specializedEditingUtils"]
      125 JUMPIF                           R13 ; [+2]
      126 NEWTABLE                         R13 0 0
      128 SETTABLEKS                       R13 R12 K22 ["specializedEditingUtils"]
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
       23 GETTABLEKS                       R5 R0 K10 ["PropertyEditorTypes"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K7 ["PropertyInteraction"]
       30 GETTABLEKS                       R6 R6 K11 ["PropertyInfo"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["PropertyTypes"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R1 K13 ["React"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R1 K14 ["ReactUtils"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R10 R1 K15 ["Signals"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K6 [require]
       55 GETTABLEKS                       R11 R0 K16 ["Flags"]
       57 GETTABLEKS                       R11 R11 K17 ["getFFlagPropertiesExposeContentView"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETTABLEKS                       R12 R0 K18 ["Components"]
       64 GETTABLEKS                       R12 R12 K19 ["PropertyEntries"]
       66 GETTABLEKS                       R12 R12 K20 ["PropertyView"]
       68 GETTABLEKS                       R12 R12 K21 ["getPropertyView"]
       70 CALL                             R11 1 1
       71 GETTABLEKS                       R12 R7 K22 ["createElement"]
       73 GETTABLEKS                       R13 R3 K23 ["View"]
       75 DUPTABLE                         R14 K26 [{"beginEditingAsync", "finishEditing"}]
       76 DUPCLOSURE                       R15 K27 [PROTO_0]
       77 SETTABLEKS                       R15 R14 K24 ["beginEditingAsync"]
       79 DUPCLOSURE                       R15 K28 [PROTO_1]
       80 SETTABLEKS                       R15 R14 K25 ["finishEditing"]
       82 DUPCLOSURE                       R15 K29 [PROTO_2]
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R5
       86 DUPCLOSURE                       R16 K30 [PROTO_8]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R13
       95 RETURN                           R16 1
