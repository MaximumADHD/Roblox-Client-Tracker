PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPart"]
        3 LOADK                            R2 K1 ["value"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["finishEditing"]
        3 GETIMPORT                        R1 K4 [Enum.FinishRecordingOperation.Commit]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["parts"]
        7 GETTABLEKS                       R1 R1 K2 ["value"]
        9 GETTABLEKS                       R2 R1 K3 ["multiple"]
       11 JUMPIFNOT                        R2 ; [+10]
       12 GETTABLEKS                       R2 R1 K2 ["value"]
       14 JUMPIFNOTEQKNIL                  R2 ; [+7]
       16 GETIMPORT                        R2 K6 [NumberSequence.new]
       18 LOADN                            R3 0
       19 LOADN                            R4 0
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1
       22 GETTABLEKS                       R2 R1 K2 ["value"]
       24 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["useCallback"]
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R7 0 1
        7 GETTABLEKS                       R8 R0 K1 ["setPart"]
        9 SETLIST                          R7 R8 1 [1]
       11 CALL                             R5 2 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K0 ["useCallback"]
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R8 0 1
       19 GETTABLEKS                       R9 R0 K2 ["finishEditing"]
       21 SETLIST                          R8 R9 1 [1]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K3 ["useMemo"]
       27 NEWCLOSURE                       R8 P2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R9 0 1
       32 GETTABLEKS                       R10 R0 K4 ["getInfo"]
       34 SETLIST                          R9 R10 1 [1]
       36 CALL                             R7 2 1
       37 GETUPVAL                         R8 2
       38 GETUPVAL                         R9 3
       39 DUPTABLE                         R10 K12 [{"NumberSequence", "beginEditingAsync", "setPart", "finishEditing", "setLocalNumberSequence", "isActive", "isOpen", "setSize", "setMinSize"}]
       40 SETTABLEKS                       R7 R10 K5 ["NumberSequence"]
       42 GETTABLEKS                       R11 R0 K6 ["beginEditingAsync"]
       44 SETTABLEKS                       R11 R10 K6 ["beginEditingAsync"]
       46 SETTABLEKS                       R5 R10 K1 ["setPart"]
       48 SETTABLEKS                       R6 R10 K2 ["finishEditing"]
       50 SETTABLEKS                       R4 R10 K7 ["setLocalNumberSequence"]
       52 SETTABLEKS                       R1 R10 K8 ["isActive"]
       54 SETTABLEKS                       R2 R10 K9 ["isOpen"]
       56 GETTABLEKS                       R11 R3 K10 ["setSize"]
       58 SETTABLEKS                       R11 R10 K10 ["setSize"]
       60 GETTABLEKS                       R11 R3 K11 ["setMinSize"]
       62 SETTABLEKS                       R11 R10 K11 ["setMinSize"]
       64 CALL                             R8 2 -1
       65 RETURN                           R8 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+10]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R0
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFEQKNIL                     R2 ; [+5]
        9 GETUPVAL                         R4 0
       10 GETTABLE                         R3 R4 R0
       11 GETTABLE                         R2 R3 R1
       12 RETURN                           R2 1
       13 LOADNIL                          R2
       14 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["render"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 GETUPVAL                         R6 4
        8 CALL                             R1 5 -1
        9 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R0 R3
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETUPVAL                         R2 0
        9 GETIMPORT                        R3 K2 [table.clone]
       11 GETUPVAL                         R5 0
       12 GETTABLE                         R4 R1 R5
       13 CALL                             R3 1 1
       14 SETTABLE                         R3 R1 R2
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R2 0
       17 NEWTABLE                         R3 0 0
       19 SETTABLE                         R3 R1 R2
       20 GETUPVAL                         R3 0
       21 GETTABLE                         R2 R1 R3
       22 GETUPVAL                         R3 1
       23 GETUPVAL                         R4 2
       24 SETTABLE                         R4 R2 R3
       25 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R3 R2 K0 ["id"]
        2 GETTABLEKS                       R4 R2 K1 ["info"]
        4 GETUPVAL                         R6 0
        5 GETTABLE                         R5 R6 R0
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K2 ["createSignal"]
        9 LOADB                            R7 0
       10 CALL                             R6 1 2
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K2 ["createSignal"]
       14 LOADB                            R9 0
       15 CALL                             R8 1 2
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R10 R10 K2 ["createSignal"]
       19 MOVE                             R11 R3
       20 CALL                             R10 1 2
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R12 R12 K2 ["createSignal"]
       24 MOVE                             R13 R4
       25 CALL                             R12 1 2
       26 GETUPVAL                         R14 1
       27 GETTABLEKS                       R14 R14 K2 ["createSignal"]
       29 GETTABLEKS                       R15 R4 K3 ["parts"]
       31 GETTABLEKS                       R15 R15 K4 ["value"]
       33 GETTABLEKS                       R15 R15 K4 ["value"]
       35 CALL                             R14 1 2
       36 LOADK                            R17 K5 ["%*%*"]
       37 GETTABLEKS                       R20 R3 K6 ["className"]
       39 JUMPIFNOT                        R20 ; [+5]
       40 GETTABLEKS                       R20 R3 K6 ["className"]
       42 LOADK                            R21 K7 [" "]
       43 CONCAT                           R19 R20 R21
       44 JUMP                             ; [+1]
       45 LOADK                            R19 K8 [""]
       46 GETTABLEKS                       R20 R3 K9 ["name"]
       48 NAMECALL                         R17 R17 K10 ["format"]
       50 CALL                             R17 3 1
       51 MOVE                             R16 R17
       52 GETUPVAL                         R17 2
       53 GETTABLEKS                       R17 R17 K11 ["createWindowAsync"]
       55 DUPTABLE                         R18 K19 [{["size"], ["minSize"], ["title"], ["initialEnabled"] = False, ["onStateChanged"], ["testingId"]}]
       56 GETTABLEKS                       R19 R5 K12 ["size"]
       58 SETTABLEKS                       R19 R18 K12 ["size"]
       60 GETTABLEKS                       R19 R5 K13 ["minSize"]
       62 SETTABLEKS                       R19 R18 K13 ["minSize"]
       64 SETTABLEKS                       R16 R18 K14 ["title"]
       66 NEWCLOSURE                       R19 P0
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R19 R18 K17 ["onStateChanged"]
       70 DUPTABLE                         R19 K22 [{"propertyType", "propertyName"}]
       71 SETTABLEKS                       R0 R19 K20 ["propertyType"]
       73 SETTABLEKS                       R1 R19 K21 ["propertyName"]
       75 SETTABLEKS                       R19 R18 K18 ["testingId"]
       77 CALL                             R17 1 1
       78 DUPTABLE                         R18 K34 [{"handle", "render", "isActive", "isOpen", "propertyId", "propertyInfo", "localPropertySignal", "setIsActive", "setIsOpen", "setPropertyId", "setPropertyInfo"}]
       79 SETTABLEKS                       R17 R18 K23 ["handle"]
       81 NEWCLOSURE                       R19 P1
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R17
       86 CAPTURE                          VAL R15
       87 SETTABLEKS                       R19 R18 K24 ["render"]
       89 SETTABLEKS                       R8 R18 K25 ["isActive"]
       91 SETTABLEKS                       R6 R18 K26 ["isOpen"]
       93 SETTABLEKS                       R10 R18 K27 ["propertyId"]
       95 SETTABLEKS                       R12 R18 K28 ["propertyInfo"]
       97 SETTABLEKS                       R14 R18 K29 ["localPropertySignal"]
       99 SETTABLEKS                       R9 R18 K30 ["setIsActive"]
      101 SETTABLEKS                       R7 R18 K31 ["setIsOpen"]
      103 SETTABLEKS                       R11 R18 K32 ["setPropertyId"]
      105 SETTABLEKS                       R13 R18 K33 ["setPropertyInfo"]
      107 GETUPVAL                         R19 3
      108 NEWCLOSURE                       R20 P2
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R18
      112 CALL                             R19 1 0
      113 RETURN                           R18 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+5]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 1
       10 GETTABLEKS                       R4 R3 K0 ["handle"]
       12 GETTABLEKS                       R4 R4 K1 ["open"]
       14 CALL                             R4 0 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 GETTABLEKS                       R3 R2 K0 ["handle"]
        8 GETTABLEKS                       R3 R3 K1 ["close"]
       10 CALL                             R3 0 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 GETTABLEKS                       R3 R2 K0 ["isOpen"]
        8 RETURN                           R3 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 GETTABLEKS                       R3 R2 K0 ["localPropertySignal"]
        8 RETURN                           R3 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_14:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETIMPORT                        R3 K2 [table.clone]
        7 GETUPVAL                         R5 0
        8 GETTABLE                         R4 R0 R5
        9 CALL                             R3 1 1
       10 SETTABLE                         R3 R1 R2
       11 GETUPVAL                         R3 0
       12 GETTABLE                         R2 R1 R3
       13 GETUPVAL                         R3 1
       14 LOADNIL                          R4
       15 SETTABLE                         R4 R2 R3
       16 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+6]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R0
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOTEQKNIL                  R2 ; [+11]
        9 GETIMPORT                        R2 K1 [error]
       11 LOADK                            R4 K2 ["could not find window with propertyType %* and propertyName %*"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 NAMECALL                         R4 R4 K3 ["format"]
       16 CALL                             R4 3 1
       17 MOVE                             R3 R4
       18 CALL                             R2 1 0
       19 GETUPVAL                         R4 0
       20 GETTABLE                         R3 R4 R0
       21 GETTABLE                         R2 R3 R1
       22 GETTABLEKS                       R3 R2 K4 ["handle"]
       24 GETTABLEKS                       R3 R3 K5 ["cleanup"]
       26 CALL                             R3 0 0
       27 GETUPVAL                         R3 1
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETTABLEKS                       R10 R9 K0 ["handle"]
       10 GETTABLEKS                       R10 R10 K1 ["cleanup"]
       12 CALL                             R10 0 0
       13 FORGLOOP                         R5 2 ; [-6]
       15 FORGLOOP                         R0 2 ; [-12]
       17 GETUPVAL                         R0 1
       18 NEWTABLE                         R1 0 0
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R0 K7 [{"openPropertyBoundWindowAsync", "closePropertyBoundWindow", "getIsPropertyBoundWindowOpenSignal", "getLocalPropertySignal", "cleanupWindow", "cleanupAllWindows", "windows"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["openPropertyBoundWindowAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["closePropertyBoundWindow"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["getIsPropertyBoundWindowOpenSignal"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["getLocalPropertySignal"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["cleanupWindow"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["cleanupAllWindows"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["windows"]
       22 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useContext"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["Context"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R6 0 1
       20 MOVE                             R7 R1
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 NEWTABLE                         R7 0 1
       34 GETTABLEKS                       R8 R3 K4 ["createWindowAsync"]
       36 SETLIST                          R7 R8 1 [1]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       42 NEWCLOSURE                       R7 P2
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 NEWTABLE                         R8 0 2
       47 MOVE                             R9 R4
       48 MOVE                             R10 R5
       49 SETLIST                          R8 R9 2 [1]
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       55 NEWCLOSURE                       R8 P3
       56 CAPTURE                          VAL R4
       57 NEWTABLE                         R9 0 1
       59 MOVE                             R10 R4
       60 SETLIST                          R9 R10 1 [1]
       62 CALL                             R7 2 1
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       66 NEWCLOSURE                       R9 P4
       67 CAPTURE                          VAL R4
       68 NEWTABLE                         R10 0 1
       70 MOVE                             R11 R4
       71 SETLIST                          R10 R11 1 [1]
       73 CALL                             R8 2 1
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       77 NEWCLOSURE                       R10 P5
       78 CAPTURE                          VAL R4
       79 NEWTABLE                         R11 0 1
       81 MOVE                             R12 R4
       82 SETLIST                          R11 R12 1 [1]
       84 CALL                             R9 2 1
       85 GETUPVAL                         R10 0
       86 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       88 NEWCLOSURE                       R11 P6
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R2
       91 NEWTABLE                         R12 0 1
       93 MOVE                             R13 R1
       94 SETLIST                          R12 R13 1 [1]
       96 CALL                             R10 2 1
       97 GETUPVAL                         R11 0
       98 GETTABLEKS                       R11 R11 K3 ["useCallback"]
      100 NEWCLOSURE                       R12 P7
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R2
      103 NEWTABLE                         R13 0 1
      105 MOVE                             R14 R1
      106 SETLIST                          R13 R14 1 [1]
      108 CALL                             R11 2 1
      109 GETUPVAL                         R12 0
      110 GETTABLEKS                       R12 R12 K5 ["useMemo"]
      112 NEWCLOSURE                       R13 P8
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R1
      120 NEWTABLE                         R14 0 7
      122 MOVE                             R15 R6
      123 MOVE                             R16 R7
      124 MOVE                             R17 R8
      125 MOVE                             R18 R9
      126 MOVE                             R19 R10
      127 MOVE                             R20 R11
      128 MOVE                             R21 R1
      129 SETLIST                          R14 R15 7 [1]
      131 CALL                             R12 2 1
      132 GETUPVAL                         R13 4
      133 GETUPVAL                         R14 5
      134 GETTABLEKS                       R14 R14 K6 ["Provider"]
      136 DUPTABLE                         R15 K8 [{"value"}]
      137 SETTABLEKS                       R12 R15 K7 ["value"]
      139 GETTABLEKS                       R16 R0 K9 ["children"]
      141 CALL                             R13 3 -1
      142 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K7 ["PropertyEntries"]
       17 GETTABLEKS                       R2 R2 K8 ["PropertyView"]
       19 GETTABLEKS                       R2 R2 K9 ["NumberSequencePropertyView"]
       21 GETTABLEKS                       R2 R2 K10 ["NumberSequenceEditor"]
       23 CALL                             R1 1 1
       24 GETIMPORT                        R2 K5 [require]
       26 GETTABLEKS                       R3 R0 K11 ["PropertyEditorTypes"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K12 ["PropertyTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Parent"]
       38 GETTABLEKS                       R5 R5 K13 ["React"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Parent"]
       45 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Parent"]
       52 GETTABLEKS                       R7 R7 K15 ["Signals"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K16 ["Components"]
       59 GETTABLEKS                       R8 R8 K17 ["Contexts"]
       61 GETTABLEKS                       R8 R8 K18 ["WindowContext"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R5 K19 ["createUnimplemented"]
       66 GETTABLEKS                       R9 R4 K20 ["createElement"]
       68 GETTABLEKS                       R10 R4 K21 ["createContext"]
       70 DUPTABLE                         R11 K29 [{"openPropertyBoundWindowAsync", "closePropertyBoundWindow", "getIsPropertyBoundWindowOpenSignal", "getLocalPropertySignal", "cleanupWindow", "cleanupAllWindows", "windows"}]
       71 MOVE                             R12 R8
       72 LOADK                            R13 K22 ["openPropertyBoundWindowAsync"]
       73 CALL                             R12 1 1
       74 SETTABLEKS                       R12 R11 K22 ["openPropertyBoundWindowAsync"]
       76 MOVE                             R12 R8
       77 LOADK                            R13 K23 ["closePropertyBoundWindow"]
       78 CALL                             R12 1 1
       79 SETTABLEKS                       R12 R11 K23 ["closePropertyBoundWindow"]
       81 MOVE                             R12 R8
       82 LOADK                            R13 K24 ["getIsPropertyBoundWindowOpenSignal"]
       83 CALL                             R12 1 1
       84 SETTABLEKS                       R12 R11 K24 ["getIsPropertyBoundWindowOpenSignal"]
       86 MOVE                             R12 R8
       87 LOADK                            R13 K25 ["getLocalPropertySignal"]
       88 CALL                             R12 1 1
       89 SETTABLEKS                       R12 R11 K25 ["getLocalPropertySignal"]
       91 MOVE                             R12 R8
       92 LOADK                            R13 K26 ["cleanupWindow"]
       93 CALL                             R12 1 1
       94 SETTABLEKS                       R12 R11 K26 ["cleanupWindow"]
       96 MOVE                             R12 R8
       97 LOADK                            R13 K27 ["cleanupAllWindows"]
       98 CALL                             R12 1 1
       99 SETTABLEKS                       R12 R11 K27 ["cleanupAllWindows"]
      101 NEWTABLE                         R12 0 0
      103 SETTABLEKS                       R12 R11 K28 ["windows"]
      105 CALL                             R10 1 1
      106 NEWTABLE                         R11 1 0
      108 DUPTABLE                         R12 K33 [{"size", "minSize", "render"}]
      109 GETIMPORT                        R13 K36 [Vector2.new]
      111 LOADN                            R14 700
      112 LOADN                            R15 200
      113 CALL                             R13 2 1
      114 SETTABLEKS                       R13 R12 K30 ["size"]
      116 GETIMPORT                        R13 K36 [Vector2.new]
      118 LOADN                            R14 500
      119 LOADN                            R15 200
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K31 ["minSize"]
      123 DUPCLOSURE                       R13 K37 [PROTO_4]
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R13 R12 K32 ["render"]
      130 SETTABLEKS                       R12 R11 K38 ["NumberSequence"]
      132 DUPCLOSURE                       R12 K39 [PROTO_18]
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R10
      139 DUPTABLE                         R13 K42 [{"Context", "Provider"}]
      140 SETTABLEKS                       R10 R13 K40 ["Context"]
      142 SETTABLEKS                       R12 R13 K41 ["Provider"]
      144 RETURN                           R13 1
