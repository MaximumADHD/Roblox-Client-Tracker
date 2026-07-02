PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["group"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 MOVE                             R7 R0
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K1 ["createElement"]
       12 GETUPVAL                         R9 2
       13 DUPTABLE                         R10 K5 [{"metadata", "key", "LayoutOrder"}]
       14 SETTABLEKS                       R5 R10 K2 ["metadata"]
       16 GETUPVAL                         R11 3
       17 LOADK                            R12 K6 ["PlaceVersionItem"]
       18 CALL                             R11 1 1
       19 SETTABLEKS                       R11 R10 K3 ["key"]
       21 GETUPVAL                         R11 4
       22 CALL                             R11 0 1
       23 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       25 CALL                             R8 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R6 K9 [table.insert]
       29 CALL                             R6 -1 0
       30 FORGLOOP                         R1 2 ; [-23]
       32 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useMemo"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 1
       15 GETTABLEKS                       R6 R0 K1 ["group"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K2 ["createElement"]
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K3 ["View"]
       26 DUPTABLE                         R6 K9 [{["tag"] = "col flex-x-fill align-x-left gap-small size-0-0 auto-xy", ["testId"] = "--place-version-group", ["LayoutOrder"]}]
       27 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       29 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       31 DUPTABLE                         R7 K12 [{"Top", "Bottom"}]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R8 R8 K2 ["createElement"]
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R9 R9 K3 ["View"]
       38 DUPTABLE                         R10 K14 [{["tag"] = "row align-y-top gap-small size-0-0 auto-xy", ["LayoutOrder"]}]
       39 MOVE                             R11 R1
       40 CALL                             R11 0 1
       41 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       43 DUPTABLE                         R11 K17 [{"Icon", "Label"}]
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R12 R12 K2 ["createElement"]
       47 GETUPVAL                         R13 4
       48 GETTABLEKS                       R13 R13 K15 ["Icon"]
       50 DUPTABLE                         R14 K21 [{"variant", "name", "size", "LayoutOrder"}]
       51 GETUPVAL                         R15 4
       52 GETTABLEKS                       R15 R15 K22 ["Enums"]
       54 GETTABLEKS                       R15 R15 K23 ["IconVariant"]
       56 GETTABLEKS                       R15 R15 K24 ["Filled"]
       58 SETTABLEKS                       R15 R14 K18 ["variant"]
       60 GETUPVAL                         R15 4
       61 GETTABLEKS                       R15 R15 K22 ["Enums"]
       63 GETTABLEKS                       R15 R15 K25 ["IconName"]
       65 GETTABLEKS                       R15 R15 K26 ["DiamondSimplified"]
       67 SETTABLEKS                       R15 R14 K19 ["name"]
       69 GETUPVAL                         R15 4
       70 GETTABLEKS                       R15 R15 K22 ["Enums"]
       72 GETTABLEKS                       R15 R15 K27 ["IconSize"]
       74 GETTABLEKS                       R15 R15 K28 ["XSmall"]
       76 SETTABLEKS                       R15 R14 K20 ["size"]
       78 MOVE                             R15 R1
       79 CALL                             R15 0 1
       80 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K15 ["Icon"]
       85 GETUPVAL                         R12 2
       86 GETTABLEKS                       R12 R12 K2 ["createElement"]
       88 GETUPVAL                         R13 4
       89 GETTABLEKS                       R13 R13 K29 ["Text"]
       91 DUPTABLE                         R14 K31 [{["tag"] = "size-0-0 auto-xy text-label-small content-emphasis", ["Text"], ["LayoutOrder"]}]
       92 GETTABLEKS                       R15 R0 K32 ["label"]
       94 SETTABLEKS                       R15 R14 K29 ["Text"]
       96 MOVE                             R15 R1
       97 CALL                             R15 0 1
       98 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      100 CALL                             R12 2 1
      101 SETTABLEKS                       R12 R11 K16 ["Label"]
      103 CALL                             R8 3 1
      104 SETTABLEKS                       R8 R7 K10 ["Top"]
      106 GETUPVAL                         R8 2
      107 GETTABLEKS                       R8 R8 K2 ["createElement"]
      109 GETUPVAL                         R9 4
      110 GETTABLEKS                       R9 R9 K3 ["View"]
      112 DUPTABLE                         R10 K34 [{["tag"] = "row align-y-center size-0-0 auto-xy padding-left-xsmall", ["LayoutOrder"]}]
      113 MOVE                             R11 R1
      114 CALL                             R11 0 1
      115 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      117 DUPTABLE                         R11 K37 [{"Line", "Items"}]
      118 GETUPVAL                         R12 2
      119 GETTABLEKS                       R12 R12 K2 ["createElement"]
      121 GETUPVAL                         R13 4
      122 GETTABLEKS                       R13 R13 K3 ["View"]
      124 DUPTABLE                         R14 K39 [{["tag"] = "grow self-stretch size-50-0 bg-shift-200", ["LayoutOrder"]}]
      125 MOVE                             R15 R1
      126 CALL                             R15 0 1
      127 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      129 CALL                             R12 2 1
      130 SETTABLEKS                       R12 R11 K35 ["Line"]
      132 GETUPVAL                         R12 2
      133 GETTABLEKS                       R12 R12 K2 ["createElement"]
      135 GETUPVAL                         R13 4
      136 GETTABLEKS                       R13 R13 K3 ["View"]
      138 DUPTABLE                         R14 K41 [{["tag"] = "col align-x-left size-0-0 auto-xy", ["LayoutOrder"]}]
      139 MOVE                             R15 R1
      140 CALL                             R15 0 1
      141 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      143 MOVE                             R15 R3
      144 CALL                             R12 3 1
      145 SETTABLEKS                       R12 R11 K36 ["Items"]
      147 CALL                             R8 3 1
      148 SETTABLEKS                       R8 R7 K11 ["Bottom"]
      150 CALL                             R4 3 -1
      151 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R0 K10 ["Src"]
       30 GETTABLEKS                       R4 R4 K11 ["Components"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R4 K12 ["PlaceVersionItem"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R3 K13 ["createNextOrder"]
       39 GETTABLEKS                       R7 R3 K14 ["createUniqueKey"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R0 K10 ["Src"]
       45 GETTABLEKS                       R9 R9 K15 ["Types"]
       47 CALL                             R8 1 1
       48 DUPCLOSURE                       R9 K16 [PROTO_1]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 RETURN                           R9 1
