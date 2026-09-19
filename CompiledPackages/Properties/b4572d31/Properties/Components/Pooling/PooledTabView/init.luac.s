PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 CONCAT                           R2 R3 R4
        3 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLE                         R9 R1 R5
        5 ORK                              R8 R9 K1 [0]
        6 ADDK                             R7 R8 K0 [1]
        7 MOVE                             R10 R7
        8 LENGTH                           R8 R6
        9 LOADN                            R9 1
       10 FORNPREP                         R8
       11 GETTABLE                         R11 R6 R10
       12 GETTABLEKS                       R12 R11 K2 ["getUsed"]
       14 CALL                             R12 0 1
       15 JUMPIFNOT                        R12 ; [+5]
       16 GETTABLEKS                       R12 R11 K3 ["setUsed"]
       18 LOADB                            R13 0
       19 CALL                             R12 1 0
       20 FORNLOOP                         R8
       21 FORGLOOP                         R2 2 ; [-18]
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["session"]
        3 GETTABLEKS                       R1 R1 K1 ["observeProperties"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["getPropertyCategorizationForTab"]
       10 GETUPVAL                         R3 2
       11 CALL                             R2 1 1
       12 MOVE                             R3 R2
       13 MOVE                             R4 R1
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R3 1 3
        7 FORGPREP                         R3
        8 GETTABLEKS                       R10 R7 K1 ["type"]
       10 GETTABLE                         R9 R1 R10
       11 ORK                              R8 R9 K0 [0]
       12 GETTABLEKS                       R9 R7 K1 ["type"]
       14 ADDK                             R10 R8 K2 [1]
       15 SETTABLE                         R10 R1 R9
       16 GETTABLEKS                       R9 R7 K3 ["propertiesInOrder"]
       18 LOADNIL                          R10
       19 LOADNIL                          R11
       20 FORGPREP                         R9
       21 GETTABLEKS                       R16 R13 K4 ["aggregatePropertyInfo"]
       23 GETTABLEKS                       R16 R16 K1 ["type"]
       25 GETTABLE                         R15 R2 R16
       26 ORK                              R14 R15 K0 [0]
       27 GETTABLEKS                       R15 R13 K4 ["aggregatePropertyInfo"]
       29 GETTABLEKS                       R15 R15 K1 ["type"]
       31 ADDK                             R16 R14 K2 [1]
       32 SETTABLE                         R16 R2 R15
       33 FORGLOOP                         R9 2 ; [-13]
       35 FORGLOOP                         R3 2 ; [-28]
       37 DUPTABLE                         R3 K7 [{"category", "property"}]
       38 SETTABLEKS                       R1 R3 K5 ["category"]
       40 SETTABLEKS                       R2 R3 K6 ["property"]
       42 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["category"]
        3 GETTABLEKS                       R4 R1 K0 ["category"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K1 ["property"]
       10 GETTABLEKS                       R4 R1 K1 ["property"]
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 DUPCLOSURE                       R2 K1 [PROTO_5]
        6 CAPTURE                          UPVAL U2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 3
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R7 R4 K0 ["type"]
        7 GETTABLE                         R5 R6 R7
        8 JUMPIFNOT                        R5 ; [+110]
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R7 R4 K0 ["type"]
       12 GETUPVAL                         R10 3
       13 GETTABLEKS                       R11 R4 K0 ["type"]
       15 GETTABLE                         R9 R10 R11
       16 ORK                              R8 R9 K1 [1]
       17 SETTABLE                         R8 R6 R7
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R9 R4 K0 ["type"]
       21 GETTABLE                         R7 R8 R9
       22 GETTABLE                         R6 R5 R7
       23 JUMPIFNOT                        R6 ; [+95]
       24 GETTABLEKS                       R7 R6 K2 ["setParams"]
       26 DUPTABLE                         R8 K4 [{"name", "type"}]
       27 GETTABLEKS                       R9 R4 K3 ["name"]
       29 SETTABLEKS                       R9 R8 K3 ["name"]
       31 GETTABLEKS                       R9 R4 K0 ["type"]
       33 SETTABLEKS                       R9 R8 K0 ["type"]
       35 CALL                             R7 1 0
       36 GETTABLEKS                       R7 R6 K5 ["setLayoutOrder"]
       38 GETUPVAL                         R8 4
       39 CALL                             R8 0 -1
       40 CALL                             R7 -1 0
       41 GETTABLEKS                       R7 R6 K6 ["setUsed"]
       43 LOADB                            R8 1
       44 CALL                             R7 1 0
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R8 R4 K0 ["type"]
       48 GETTABLE                         R9 R7 R8
       49 ADDK                             R9 R9 K1 [1]
       50 SETTABLE                         R9 R7 R8
       51 GETUPVAL                         R7 5
       52 JUMPIFEQKNIL                     R7 ; [+20]
       54 GETUPVAL                         R7 5
       55 GETTABLEKS                       R7 R7 K0 ["type"]
       57 JUMPIFNOTEQKS                    R7 K7 ["addTag"] ; [+15]
       59 GETTABLEKS                       R7 R4 K0 ["type"]
       61 JUMPIFNOTEQKS                    R7 K8 ["Tags"] ; [+11]
       63 GETUPVAL                         R7 6
       64 DUPTABLE                         R8 K11 [{"ephemeralRow", "layoutOrder"}]
       65 GETUPVAL                         R9 5
       66 SETTABLEKS                       R9 R8 K9 ["ephemeralRow"]
       68 GETUPVAL                         R9 4
       69 CALL                             R9 0 1
       70 SETTABLEKS                       R9 R8 K10 ["layoutOrder"]
       72 CALL                             R7 1 0
       73 GETTABLEKS                       R7 R4 K12 ["propertiesInOrder"]
       75 LOADNIL                          R8
       76 LOADNIL                          R9
       77 FORGPREP                         R7
       78 GETTABLEKS                       R12 R11 K13 ["aggregatePropertyInfo"]
       80 GETTABLEKS                       R12 R12 K0 ["type"]
       82 GETUPVAL                         R14 7
       83 GETTABLE                         R13 R14 R12
       84 JUMPIFNOT                        R13 ; [+32]
       85 GETUPVAL                         R14 8
       86 GETUPVAL                         R17 8
       87 GETTABLE                         R16 R17 R12
       88 ORK                              R15 R16 K1 [1]
       89 SETTABLE                         R15 R14 R12
       90 GETUPVAL                         R16 8
       91 GETTABLE                         R15 R16 R12
       92 GETTABLE                         R14 R13 R15
       93 JUMPIFNOT                        R14 ; [+23]
       94 GETTABLEKS                       R15 R14 K2 ["setParams"]
       96 DUPTABLE                         R16 K16 [{"propertyRecord", "categoryName"}]
       97 SETTABLEKS                       R11 R16 K14 ["propertyRecord"]
       99 GETTABLEKS                       R17 R4 K3 ["name"]
      101 SETTABLEKS                       R17 R16 K15 ["categoryName"]
      103 CALL                             R15 1 0
      104 GETTABLEKS                       R15 R14 K5 ["setLayoutOrder"]
      106 GETUPVAL                         R16 4
      107 CALL                             R16 0 -1
      108 CALL                             R15 -1 0
      109 GETTABLEKS                       R15 R14 K6 ["setUsed"]
      111 LOADB                            R16 1
      112 CALL                             R15 1 0
      113 GETUPVAL                         R15 8
      114 GETTABLE                         R16 R15 R12
      115 ADDK                             R16 R16 K1 [1]
      116 SETTABLE                         R16 R15 R12
      117 FORGLOOP                         R7 2 ; [-40]
      119 FORGLOOP                         R0 2 ; [-116]
      121 GETUPVAL                         R0 9
      122 GETUPVAL                         R1 2
      123 GETUPVAL                         R2 10
      124 GETTABLEKS                       R2 R2 K17 ["category"]
      126 CALL                             R0 2 0
      127 GETUPVAL                         R0 9
      128 GETUPVAL                         R1 7
      129 GETUPVAL                         R2 10
      130 GETTABLEKS                       R2 R2 K18 ["property"]
      132 CALL                             R0 2 0
      133 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["current"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["current"]
       10 NEWTABLE                         R4 0 0
       12 NEWTABLE                         R5 0 0
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K2 ["batch"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R5
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CALL                             R6 1 0
       30 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R2 R2 K2 ["ephemeralRow"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K3 ["useSignalState"]
       19 GETTABLEKS                       R4 R0 K4 ["filter"]
       21 GETTABLEKS                       R4 R4 K5 ["getTab"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R6 0 3
       34 GETTABLEKS                       R7 R1 K7 ["getPropertyCategorizationForTab"]
       36 GETTABLEKS                       R8 R0 K8 ["session"]
       38 GETTABLEKS                       R8 R8 K9 ["observeProperties"]
       40 MOVE                             R9 R3
       41 SETLIST                          R6 R7 3 [1]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K3 ["useSignalState"]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R4
       53 CAPTURE                          UPVAL U5
       54 NEWTABLE                         R8 0 1
       56 MOVE                             R9 R4
       57 SETLIST                          R8 R9 1 [1]
       59 CALL                             R6 2 -1
       60 CALL                             R5 -1 1
       61 GETUPVAL                         R6 6
       62 DUPTABLE                         R7 K16 [{"initialElementsPerBucket", "elementsPerBucketNeeded", "paramsConstructor", "render", "getKey", "isVisible"}]
       63 GETTABLEKS                       R8 R0 K17 ["initialCaches"]
       65 GETTABLEKS                       R8 R8 K18 ["categories"]
       67 SETTABLEKS                       R8 R7 K10 ["initialElementsPerBucket"]
       69 GETTABLEKS                       R8 R5 K19 ["category"]
       71 SETTABLEKS                       R8 R7 K11 ["elementsPerBucketNeeded"]
       73 GETUPVAL                         R8 7
       74 GETTABLEKS                       R8 R8 K20 ["createPlaceHolderCategoryRowParams"]
       76 SETTABLEKS                       R8 R7 K12 ["paramsConstructor"]
       78 GETUPVAL                         R8 7
       79 GETTABLEKS                       R8 R8 K21 ["createRenderCategoryRowFromInterface"]
       81 GETTABLEKS                       R9 R0 K4 ["filter"]
       83 GETTABLEKS                       R10 R0 K22 ["setCategoryExpanded"]
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K13 ["render"]
       88 GETUPVAL                         R8 8
       89 SETTABLEKS                       R8 R7 K14 ["getKey"]
       91 GETUPVAL                         R8 7
       92 GETTABLEKS                       R8 R8 K23 ["createIsCategoryRowVisible"]
       94 GETTABLEKS                       R9 R0 K4 ["filter"]
       96 CALL                             R8 1 1
       97 SETTABLEKS                       R8 R7 K15 ["isVisible"]
       99 CALL                             R6 1 2
      100 GETUPVAL                         R8 6
      101 DUPTABLE                         R9 K16 [{"initialElementsPerBucket", "elementsPerBucketNeeded", "paramsConstructor", "render", "getKey", "isVisible"}]
      102 GETTABLEKS                       R10 R0 K17 ["initialCaches"]
      104 GETTABLEKS                       R10 R10 K24 ["properties"]
      106 SETTABLEKS                       R10 R9 K10 ["initialElementsPerBucket"]
      108 GETTABLEKS                       R10 R5 K25 ["property"]
      110 SETTABLEKS                       R10 R9 K11 ["elementsPerBucketNeeded"]
      112 GETUPVAL                         R10 9
      113 GETTABLEKS                       R10 R10 K26 ["createPlaceHolderPropertyRowParams"]
      115 SETTABLEKS                       R10 R9 K12 ["paramsConstructor"]
      117 GETUPVAL                         R10 9
      118 GETTABLEKS                       R10 R10 K27 ["createRenderPropertyRowFromInterface"]
      120 GETTABLEKS                       R11 R0 K8 ["session"]
      122 GETTABLEKS                       R12 R0 K28 ["labelWidthBinding"]
      124 CALL                             R10 2 1
      125 SETTABLEKS                       R10 R9 K13 ["render"]
      127 GETUPVAL                         R10 8
      128 SETTABLEKS                       R10 R9 K14 ["getKey"]
      130 GETUPVAL                         R10 9
      131 GETTABLEKS                       R10 R10 K29 ["createIsPropertyRowVisible"]
      133 GETTABLEKS                       R11 R0 K4 ["filter"]
      135 CALL                             R10 1 1
      136 SETTABLEKS                       R10 R9 K15 ["isVisible"]
      138 CALL                             R8 1 2
      139 GETUPVAL                         R10 0
      140 GETTABLEKS                       R10 R10 K6 ["useMemo"]
      142 DUPCLOSURE                       R11 K30 [PROTO_7]
      143 CAPTURE                          UPVAL U4
      144 NEWTABLE                         R12 0 0
      146 CALL                             R10 2 2
      147 GETUPVAL                         R12 3
      148 GETTABLEKS                       R12 R12 K3 ["useSignalState"]
      150 MOVE                             R13 R10
      151 CALL                             R12 1 1
      152 GETUPVAL                         R13 0
      153 GETTABLEKS                       R13 R13 K31 ["useEffect"]
      155 NEWCLOSURE                       R14 P3
      156 CAPTURE                          UPVAL U4
      157 CAPTURE                          UPVAL U10
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R9
      160 CAPTURE                          UPVAL U11
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R11
      164 CAPTURE                          UPVAL U12
      165 CAPTURE                          VAL R5
      166 NEWTABLE                         R15 0 3
      168 MOVE                             R16 R4
      169 MOVE                             R17 R2
      170 MOVE                             R18 R5
      171 SETLIST                          R15 R16 3 [1]
      173 CALL                             R13 2 0
      174 GETUPVAL                         R13 13
      175 GETUPVAL                         R14 14
      176 DUPTABLE                         R15 K36 [{["tag"] = "col", ["AutomaticSize"], ["Size"]}]
      177 GETIMPORT                        R16 K39 [Enum.AutomaticSize.Y]
      179 SETTABLEKS                       R16 R15 K34 ["AutomaticSize"]
      181 GETTABLEKS                       R16 R0 K40 ["size"]
      183 SETTABLEKS                       R16 R15 K35 ["Size"]
      185 MOVE                             R16 R6
      186 MOVE                             R17 R8
      187 MOVE                             R18 R2
      188 JUMPIFNOT                        R18 ; [+19]
      189 MOVE                             R18 R12
      190 JUMPIFNOT                        R18 ; [+17]
      191 LOADB                            R18 0
      192 GETTABLEKS                       R19 R12 K2 ["ephemeralRow"]
      194 JUMPIFNOTEQ                      R19 R2 ; [+13]
      196 GETUPVAL                         R18 13
      197 GETUPVAL                         R19 15
      198 DUPTABLE                         R20 K42 [{"layoutOrder", "session"}]
      199 GETTABLEKS                       R21 R12 K41 ["layoutOrder"]
      201 SETTABLEKS                       R21 R20 K41 ["layoutOrder"]
      203 GETTABLEKS                       R21 R0 K8 ["session"]
      205 SETTABLEKS                       R21 R20 K8 ["session"]
      207 CALL                             R18 2 1
      208 CALL                             R13 5 -1
      209 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K7 ["CategoryRowPooling"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Components"]
       20 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       22 GETTABLEKS                       R4 R4 K10 ["EphemeralRowContext"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K11 ["Foundation"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K12 ["PropertyEditorTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K13 ["PropertyRowPooling"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["PropertyTypes"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R1 K15 ["React"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K4 ["Parent"]
       56 GETTABLEKS                       R10 R10 K16 ["ReactUtils"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K17 ["RpcTypes"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R1 K18 ["Signals"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K6 [require]
       71 GETTABLEKS                       R13 R1 K19 ["SignalsExperimental"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K6 [require]
       76 GETTABLEKS                       R14 R1 K20 ["SignalsReact"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K6 [require]
       81 GETTABLEKS                       R15 R0 K8 ["Components"]
       83 GETTABLEKS                       R15 R15 K9 ["Contexts"]
       85 GETTABLEKS                       R15 R15 K21 ["TabsContext"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K6 [require]
       90 GETTABLEKS                       R16 R0 K8 ["Components"]
       92 GETTABLEKS                       R16 R16 K22 ["TagsAndAttributes"]
       94 GETTABLEKS                       R16 R16 K23 ["TagEphemeralRow"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K6 [require]
       99 GETTABLEKS                       R17 R0 K24 ["Util"]
      101 GETTABLEKS                       R17 R17 K25 ["shallowEqual"]
      103 CALL                             R16 1 1
      104 GETIMPORT                        R17 K6 [require]
      106 GETTABLEKS                       R18 R0 K26 ["Hooks"]
      108 GETTABLEKS                       R18 R18 K27 ["useCachedElementsByBucket"]
      110 CALL                             R17 1 1
      111 GETTABLEKS                       R18 R4 K28 ["View"]
      113 GETTABLEKS                       R19 R8 K29 ["createElement"]
      115 DUPCLOSURE                       R20 K30 [PROTO_0]
      116 DUPCLOSURE                       R21 K31 [PROTO_1]
      117 DUPCLOSURE                       R22 K32 [PROTO_11]
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R20
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R15
      134 GETTABLEKS                       R23 R8 K33 ["memo"]
      136 MOVE                             R24 R22
      137 CALL                             R23 1 -1
      138 RETURN                           R23 -1
