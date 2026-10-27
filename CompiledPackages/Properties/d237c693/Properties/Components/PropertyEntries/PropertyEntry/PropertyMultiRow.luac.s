PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["partNameMap"]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETTABLEKS                       R9 R1 K2 ["parts"]
       15 GETTABLEKS                       R10 R7 K3 ["propertyPartName"]
       17 GETTABLE                         R8 R9 R10
       18 GETTABLEKS                       R9 R8 K4 ["multiple"]
       20 JUMPIFNOT                        R9 ; [+3]
       21 GETUPVAL                         R9 2
       22 SETTABLE                         R9 R2 R6
       23 JUMP                             ; [+6]
       24 DUPTABLE                         R9 K7 [{["multiple"] = False, ["value"]}]
       25 GETTABLEKS                       R10 R8 K6 ["value"]
       27 SETTABLEKS                       R10 R9 K6 ["value"]
       29 SETTABLE                         R9 R2 R6
       30 FORGLOOP                         R3 2 ; [-18]
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R3 R3 K8 ["fromInfoAndParts"]
       35 GETUPVAL                         R4 4
       36 GETTABLEKS                       R4 R4 K9 ["fromType"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K10 ["type"]
       41 GETTABLEKS                       R6 R1 K11 ["readonly"]
       43 CALL                             R4 2 1
       44 MOVE                             R5 R2
       45 CALL                             R3 2 -1
       46 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFEQKS                       R1 K1 ["Capture"] ; [+9]
        4 GETTABLEKS                       R1 R0 K0 ["type"]
        6 JUMPIFEQKS                       R1 K2 ["Commit"] ; [+5]
        8 GETTABLEKS                       R1 R0 K0 ["type"]
       10 JUMPIFNOTEQKS                    R1 K3 ["Cancel"] ; [+7]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["editProperty"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R1 R0 K0 ["type"]
       20 JUMPIFNOTEQKS                    R1 K5 ["Stage"] ; [+32]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K4 ["editProperty"]
       25 DUPTABLE                         R2 K7 [{"type", "part"}]
       26 GETTABLEKS                       R3 R0 K0 ["type"]
       28 SETTABLEKS                       R3 R2 K0 ["type"]
       30 DUPTABLE                         R3 K10 [{"name", "value"}]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K11 ["partNameMap"]
       34 GETTABLEKS                       R6 R0 K6 ["part"]
       36 GETTABLEKS                       R6 R6 K8 ["name"]
       38 GETTABLE                         R4 R5 R6
       39 GETTABLEKS                       R4 R4 K12 ["propertyPartName"]
       41 SETTABLEKS                       R4 R3 K8 ["name"]
       43 GETTABLEKS                       R4 R0 K6 ["part"]
       45 GETTABLEKS                       R4 R4 K9 ["value"]
       47 SETTABLEKS                       R4 R3 K9 ["value"]
       49 SETTABLEKS                       R3 R2 K6 ["part"]
       51 CALL                             R1 1 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R1 R0 K0 ["type"]
       55 JUMPIFNOTEQKS                    R1 K13 ["Edit"] ; [+32]
       57 GETUPVAL                         R1 0
       58 GETTABLEKS                       R1 R1 K4 ["editProperty"]
       60 DUPTABLE                         R2 K7 [{"type", "part"}]
       61 GETTABLEKS                       R3 R0 K0 ["type"]
       63 SETTABLEKS                       R3 R2 K0 ["type"]
       65 DUPTABLE                         R3 K10 [{"name", "value"}]
       66 GETUPVAL                         R5 1
       67 GETTABLEKS                       R5 R5 K11 ["partNameMap"]
       69 GETTABLEKS                       R6 R0 K6 ["part"]
       71 GETTABLEKS                       R6 R6 K8 ["name"]
       73 GETTABLE                         R4 R5 R6
       74 GETTABLEKS                       R4 R4 K12 ["propertyPartName"]
       76 SETTABLEKS                       R4 R3 K8 ["name"]
       78 GETTABLEKS                       R4 R0 K6 ["part"]
       80 GETTABLEKS                       R4 R4 K9 ["value"]
       82 SETTABLEKS                       R4 R3 K9 ["value"]
       84 SETTABLEKS                       R3 R2 K6 ["part"]
       86 CALL                             R1 1 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R1 2
       89 GETTABLEKS                       R2 R0 K0 ["type"]
       91 CALL                             R1 1 0
       92 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["createUniqueKey"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 DUPTABLE                         R5 K11 [{"getInfo", "editProperty", "specializedEditingUtils", "label", "isUnimplemented", "isReadonly", "labelWidthBinding", "onSecondaryActivated", "LayoutOrder"}]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K2 ["getInfo"]
       16 SETTABLEKS                       R6 R5 K2 ["getInfo"]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K3 ["editProperty"]
       21 SETTABLEKS                       R6 R5 K3 ["editProperty"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K4 ["specializedEditingUtils"]
       26 SETTABLEKS                       R6 R5 K4 ["specializedEditingUtils"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K5 ["label"]
       31 SETTABLEKS                       R6 R5 K5 ["label"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K6 ["isUnimplemented"]
       36 SETTABLEKS                       R6 R5 K6 ["isUnimplemented"]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K7 ["isReadonly"]
       41 SETTABLEKS                       R6 R5 K7 ["isReadonly"]
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R6 R6 K8 ["labelWidthBinding"]
       46 SETTABLEKS                       R6 R5 K8 ["labelWidthBinding"]
       48 DUPCLOSURE                       R6 K12 [PROTO_0]
       49 SETTABLEKS                       R6 R5 K9 ["onSecondaryActivated"]
       51 MOVE                             R6 R1
       52 CALL                             R6 0 1
       53 SETTABLEKS                       R6 R5 K10 ["LayoutOrder"]
       55 CALL                             R3 2 1
       56 SETTABLEKS                       R3 R0 K13 ["Header"]
       58 GETUPVAL                         R3 3
       59 GETTABLEKS                       R3 R3 K14 ["rowConfigs"]
       61 LOADNIL                          R4
       62 LOADNIL                          R5
       63 FORGPREP                         R3
       64 GETUPVAL                         R8 4
       65 GETTABLEKS                       R8 R8 K15 ["createComputed"]
       67 NEWCLOSURE                       R9 P1
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          VAL R7
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U7
       73 CALL                             R8 1 1
       74 NEWCLOSURE                       R9 P2
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          VAL R7
       77 CAPTURE                          UPVAL U8
       78 MOVE                             R10 R2
       79 GETTABLEKS                       R11 R7 K5 ["label"]
       81 JUMPIF                           R11 ; [+5]
       82 FASTCALL1                        TOSTRING R6 ; [+3]
       83 MOVE                             R12 R6
       84 GETIMPORT                        R11 K17 [tostring]
       86 CALL                             R11 1 1
       87 CALL                             R10 1 1
       88 GETUPVAL                         R11 1
       89 GETUPVAL                         R12 2
       90 DUPTABLE                         R13 K20 [{["getInfo"], ["editProperty"], ["specializedEditingUtils"], ["label"], ["isUnimplemented"], ["isSubRow"] = True, ["isReadonly"], ["labelWidthBinding"], ["onSecondaryActivated"], ["LayoutOrder"]}]
       91 SETTABLEKS                       R8 R13 K2 ["getInfo"]
       93 SETTABLEKS                       R9 R13 K3 ["editProperty"]
       95 GETUPVAL                         R14 3
       96 GETTABLEKS                       R14 R14 K4 ["specializedEditingUtils"]
       98 SETTABLEKS                       R14 R13 K4 ["specializedEditingUtils"]
      100 GETTABLEKS                       R14 R7 K5 ["label"]
      102 JUMPIF                           R14 ; [+3]
      103 GETUPVAL                         R14 3
      104 GETTABLEKS                       R14 R14 K5 ["label"]
      106 SETTABLEKS                       R14 R13 K5 ["label"]
      108 GETUPVAL                         R14 3
      109 GETTABLEKS                       R14 R14 K6 ["isUnimplemented"]
      111 SETTABLEKS                       R14 R13 K6 ["isUnimplemented"]
      113 GETUPVAL                         R14 3
      114 GETTABLEKS                       R14 R14 K7 ["isReadonly"]
      116 SETTABLEKS                       R14 R13 K7 ["isReadonly"]
      118 GETUPVAL                         R14 3
      119 GETTABLEKS                       R14 R14 K8 ["labelWidthBinding"]
      121 SETTABLEKS                       R14 R13 K8 ["labelWidthBinding"]
      123 DUPCLOSURE                       R14 K21 [PROTO_3]
      124 SETTABLEKS                       R14 R13 K9 ["onSecondaryActivated"]
      126 MOVE                             R14 R1
      127 CALL                             R14 0 1
      128 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      130 CALL                             R11 2 1
      131 SETTABLE                         R11 R0 R10
      132 FORGLOOP                         R3 2 ; [-69]
      134 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 NEWTABLE                         R3 0 8
       15 GETTABLEKS                       R4 R0 K1 ["rowConfigs"]
       17 GETTABLEKS                       R5 R0 K2 ["getInfo"]
       19 GETTABLEKS                       R6 R0 K3 ["editProperty"]
       21 GETTABLEKS                       R7 R0 K4 ["specializedEditingUtils"]
       23 GETTABLEKS                       R8 R0 K5 ["label"]
       25 GETTABLEKS                       R9 R0 K6 ["isUnimplemented"]
       27 GETTABLEKS                       R10 R0 K7 ["isReadonly"]
       29 GETTABLEKS                       R11 R0 K8 ["labelWidthBinding"]
       31 SETLIST                          R3 R4 8 [1]
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 2
       35 GETUPVAL                         R3 9
       36 GETTABLEKS                       R3 R3 K9 ["View"]
       38 DUPTABLE                         R4 K14 [{["tag"] = "col auto-xy", ["LayoutOrder"], ["Visible"]}]
       39 GETTABLEKS                       R5 R0 K12 ["LayoutOrder"]
       41 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
       43 GETTABLEKS                       R5 R0 K13 ["Visible"]
       45 SETTABLEKS                       R5 R4 K13 ["Visible"]
       47 MOVE                             R5 R1
       48 CALL                             R2 3 -1
       49 RETURN                           R2 -1

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
       30 GETTABLEKS                       R6 R0 K11 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["PropertyEntries"]
       34 GETTABLEKS                       R6 R6 K13 ["PropertyEntry"]
       36 GETTABLEKS                       R6 R6 K14 ["PropertyRow"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K15 ["PropertyTypes"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K16 ["React"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K17 ["ReactUtils"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K18 ["RpcTypes"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R1 K19 ["Signals"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R0 K20 ["Util"]
       68 GETTABLEKS                       R12 R12 K21 ["exhaustiveMatch"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R13 R0 K7 ["PropertyInteraction"]
       75 GETTABLEKS                       R13 R13 K22 ["genericMultiplePart"]
       77 CALL                             R12 1 1
       78 GETTABLEKS                       R13 R7 K23 ["createElement"]
       80 DUPCLOSURE                       R14 K24 [PROTO_5]
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R3
       91 RETURN                           R14 1
