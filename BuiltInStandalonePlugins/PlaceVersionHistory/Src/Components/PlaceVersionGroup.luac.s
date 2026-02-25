PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["group"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 MOVE                             R7 R0
        9 GETUPVAL                         R9 1
       10 GETTABLEKS                       R8 R9 K1 ["createElement"]
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
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useMemo"]
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
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K2 ["createElement"]
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R5 R6 K3 ["View"]
       26 DUPTABLE                         R6 K7 [{"tag", "testId", "LayoutOrder"}]
       27 LOADK                            R7 K8 ["size-0-0 auto-xy col flex-x-fill align-x-left gap-small"]
       28 SETTABLEKS                       R7 R6 K4 ["tag"]
       30 LOADK                            R7 K9 ["--place-version-group"]
       31 SETTABLEKS                       R7 R6 K5 ["testId"]
       33 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       35 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       37 DUPTABLE                         R7 K12 [{"Top", "Bottom"}]
       38 GETUPVAL                         R9 2
       39 GETTABLEKS                       R8 R9 K2 ["createElement"]
       41 GETUPVAL                         R10 4
       42 GETTABLEKS                       R9 R10 K3 ["View"]
       44 DUPTABLE                         R10 K13 [{"tag", "LayoutOrder"}]
       45 LOADK                            R11 K14 ["size-0-0 auto-xy row align-y-top gap-small"]
       46 SETTABLEKS                       R11 R10 K4 ["tag"]
       48 MOVE                             R11 R1
       49 CALL                             R11 0 1
       50 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       52 DUPTABLE                         R11 K17 [{"Icon", "Label"}]
       53 GETUPVAL                         R13 2
       54 GETTABLEKS                       R12 R13 K2 ["createElement"]
       56 GETUPVAL                         R14 4
       57 GETTABLEKS                       R13 R14 K15 ["Icon"]
       59 DUPTABLE                         R14 K21 [{"variant", "name", "size", "LayoutOrder"}]
       60 GETUPVAL                         R18 4
       61 GETTABLEKS                       R17 R18 K22 ["Enums"]
       63 GETTABLEKS                       R16 R17 K23 ["IconVariant"]
       65 GETTABLEKS                       R15 R16 K24 ["Filled"]
       67 SETTABLEKS                       R15 R14 K18 ["variant"]
       69 GETUPVAL                         R18 4
       70 GETTABLEKS                       R17 R18 K22 ["Enums"]
       72 GETTABLEKS                       R16 R17 K25 ["IconName"]
       74 GETTABLEKS                       R15 R16 K26 ["DiamondSimplified"]
       76 SETTABLEKS                       R15 R14 K19 ["name"]
       78 GETUPVAL                         R18 4
       79 GETTABLEKS                       R17 R18 K22 ["Enums"]
       81 GETTABLEKS                       R16 R17 K27 ["IconSize"]
       83 GETTABLEKS                       R15 R16 K28 ["XSmall"]
       85 SETTABLEKS                       R15 R14 K20 ["size"]
       87 MOVE                             R15 R1
       88 CALL                             R15 0 1
       89 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
       91 CALL                             R12 2 1
       92 SETTABLEKS                       R12 R11 K15 ["Icon"]
       94 GETUPVAL                         R13 2
       95 GETTABLEKS                       R12 R13 K2 ["createElement"]
       97 GETUPVAL                         R14 4
       98 GETTABLEKS                       R13 R14 K29 ["Text"]
      100 DUPTABLE                         R14 K30 [{"tag", "Text", "LayoutOrder"}]
      101 LOADK                            R15 K31 ["size-0-0 auto-xy text-label-small content-emphasis"]
      102 SETTABLEKS                       R15 R14 K4 ["tag"]
      104 GETTABLEKS                       R15 R0 K32 ["label"]
      106 SETTABLEKS                       R15 R14 K29 ["Text"]
      108 MOVE                             R15 R1
      109 CALL                             R15 0 1
      110 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K16 ["Label"]
      115 CALL                             R8 3 1
      116 SETTABLEKS                       R8 R7 K10 ["Top"]
      118 GETUPVAL                         R9 2
      119 GETTABLEKS                       R8 R9 K2 ["createElement"]
      121 GETUPVAL                         R10 4
      122 GETTABLEKS                       R9 R10 K3 ["View"]
      124 DUPTABLE                         R10 K13 [{"tag", "LayoutOrder"}]
      125 LOADK                            R11 K33 ["size-0-0 auto-xy row align-y-center padding-left-xsmall"]
      126 SETTABLEKS                       R11 R10 K4 ["tag"]
      128 MOVE                             R11 R1
      129 CALL                             R11 0 1
      130 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      132 DUPTABLE                         R11 K36 [{"Line", "Items"}]
      133 GETUPVAL                         R13 2
      134 GETTABLEKS                       R12 R13 K2 ["createElement"]
      136 GETUPVAL                         R14 4
      137 GETTABLEKS                       R13 R14 K3 ["View"]
      139 DUPTABLE                         R14 K13 [{"tag", "LayoutOrder"}]
      140 LOADK                            R15 K37 ["size-50-0 grow self-stretch bg-shift-200"]
      141 SETTABLEKS                       R15 R14 K4 ["tag"]
      143 MOVE                             R15 R1
      144 CALL                             R15 0 1
      145 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      147 CALL                             R12 2 1
      148 SETTABLEKS                       R12 R11 K34 ["Line"]
      150 GETUPVAL                         R13 2
      151 GETTABLEKS                       R12 R13 K2 ["createElement"]
      153 GETUPVAL                         R14 4
      154 GETTABLEKS                       R13 R14 K3 ["View"]
      156 DUPTABLE                         R14 K13 [{"tag", "LayoutOrder"}]
      157 LOADK                            R15 K38 ["size-0-0 auto-xy col align-x-left"]
      158 SETTABLEKS                       R15 R14 K4 ["tag"]
      160 MOVE                             R15 R1
      161 CALL                             R15 0 1
      162 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      164 MOVE                             R15 R3
      165 CALL                             R12 3 1
      166 SETTABLEKS                       R12 R11 K35 ["Items"]
      168 CALL                             R8 3 1
      169 SETTABLEKS                       R8 R7 K11 ["Bottom"]
      171 CALL                             R4 3 -1
      172 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R0 K10 ["Src"]
       30 GETTABLEKS                       R4 R5 K11 ["Components"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R4 K12 ["PlaceVersionItem"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R3 K13 ["createNextOrder"]
       39 GETTABLEKS                       R7 R3 K14 ["createUniqueKey"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R10 R0 K10 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Types"]
       47 CALL                             R8 1 1
       48 DUPCLOSURE                       R9 K16 [PROTO_1]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 RETURN                           R9 1
