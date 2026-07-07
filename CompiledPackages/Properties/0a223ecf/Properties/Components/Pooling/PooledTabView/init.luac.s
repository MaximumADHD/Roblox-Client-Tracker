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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getPropertyCategorizationForTab"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 MOVE                             R1 R0
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R7 R4 K0 ["type"]
        7 GETTABLE                         R5 R6 R7
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R7 R4 K0 ["type"]
       11 GETUPVAL                         R10 2
       12 GETTABLEKS                       R11 R4 K0 ["type"]
       14 GETTABLE                         R9 R10 R11
       15 ORK                              R8 R9 K1 [1]
       16 SETTABLE                         R8 R6 R7
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R9 R4 K0 ["type"]
       20 GETTABLE                         R7 R8 R9
       21 GETTABLE                         R6 R5 R7
       22 GETTABLEKS                       R7 R6 K2 ["setParams"]
       24 DUPTABLE                         R8 K4 [{"name", "type"}]
       25 GETTABLEKS                       R9 R4 K3 ["name"]
       27 SETTABLEKS                       R9 R8 K3 ["name"]
       29 GETTABLEKS                       R9 R4 K0 ["type"]
       31 SETTABLEKS                       R9 R8 K0 ["type"]
       33 CALL                             R7 1 0
       34 GETTABLEKS                       R7 R6 K5 ["setLayoutOrder"]
       36 GETUPVAL                         R8 3
       37 CALL                             R8 0 -1
       38 CALL                             R7 -1 0
       39 GETTABLEKS                       R7 R6 K6 ["setUsed"]
       41 LOADB                            R8 1
       42 CALL                             R7 1 0
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R8 R4 K0 ["type"]
       46 GETTABLE                         R9 R7 R8
       47 ADDK                             R9 R9 K1 [1]
       48 SETTABLE                         R9 R7 R8
       49 GETTABLEKS                       R7 R4 K7 ["propertiesInOrder"]
       51 LOADNIL                          R8
       52 LOADNIL                          R9
       53 FORGPREP                         R7
       54 GETTABLEKS                       R12 R11 K8 ["aggregatePropertyInfo"]
       56 GETTABLEKS                       R12 R12 K0 ["type"]
       58 GETUPVAL                         R14 4
       59 GETTABLE                         R13 R14 R12
       60 JUMPIFNOT                        R13 ; [+32]
       61 GETUPVAL                         R14 5
       62 GETUPVAL                         R17 5
       63 GETTABLE                         R16 R17 R12
       64 ORK                              R15 R16 K1 [1]
       65 SETTABLE                         R15 R14 R12
       66 GETUPVAL                         R16 5
       67 GETTABLE                         R15 R16 R12
       68 GETTABLE                         R14 R13 R15
       69 JUMPIFNOT                        R14 ; [+23]
       70 GETTABLEKS                       R15 R14 K2 ["setParams"]
       72 DUPTABLE                         R16 K11 [{"propertyRecord", "categoryName"}]
       73 SETTABLEKS                       R11 R16 K9 ["propertyRecord"]
       75 GETTABLEKS                       R17 R4 K3 ["name"]
       77 SETTABLEKS                       R17 R16 K10 ["categoryName"]
       79 CALL                             R15 1 0
       80 GETTABLEKS                       R15 R14 K5 ["setLayoutOrder"]
       82 GETUPVAL                         R16 3
       83 CALL                             R16 0 -1
       84 CALL                             R15 -1 0
       85 GETTABLEKS                       R15 R14 K6 ["setUsed"]
       87 LOADB                            R16 1
       88 CALL                             R15 1 0
       89 GETUPVAL                         R15 5
       90 GETTABLE                         R16 R15 R12
       91 ADDK                             R16 R16 K1 [1]
       92 SETTABLE                         R16 R15 R12
       93 FORGLOOP                         R7 2 ; [-40]
       95 FORGLOOP                         R0 2 ; [-92]
       97 GETUPVAL                         R0 6
       98 GETUPVAL                         R1 1
       99 GETUPVAL                         R2 7
      100 CALL                             R0 2 0
      101 GETUPVAL                         R0 6
      102 GETUPVAL                         R1 4
      103 GETUPVAL                         R2 8
      104 CALL                             R0 2 0
      105 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createNextOrder"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["current"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["current"]
       10 NEWTABLE                         R3 0 0
       12 NEWTABLE                         R4 0 0
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K2 ["batch"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U7
       27 CALL                             R5 1 0
       28 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 GETTABLEKS                       R2 R0 K1 ["session"]
        5 GETTABLEKS                       R2 R2 K2 ["propertiesObservable"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["useSignalState"]
       18 GETTABLEKS                       R4 R0 K6 ["filter"]
       20 GETTABLEKS                       R4 R4 K7 ["getTab"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 NEWTABLE                         R6 0 3
       32 MOVE                             R7 R3
       33 GETTABLEKS                       R8 R2 K9 ["getPropertyCategorizationForTab"]
       35 MOVE                             R9 R1
       36 SETLIST                          R6 R7 3 [1]
       38 CALL                             R4 2 1
       39 NEWTABLE                         R5 0 0
       41 NEWTABLE                         R6 0 0
       43 MOVE                             R7 R4
       44 LOADNIL                          R8
       45 LOADNIL                          R9
       46 FORGPREP                         R7
       47 GETTABLEKS                       R14 R11 K11 ["type"]
       49 GETTABLE                         R13 R5 R14
       50 ORK                              R12 R13 K10 [0]
       51 GETTABLEKS                       R13 R11 K11 ["type"]
       53 ADDK                             R14 R12 K12 [1]
       54 SETTABLE                         R14 R5 R13
       55 GETTABLEKS                       R13 R11 K13 ["propertiesInOrder"]
       57 LOADNIL                          R14
       58 LOADNIL                          R15
       59 FORGPREP                         R13
       60 GETTABLEKS                       R20 R17 K14 ["aggregatePropertyInfo"]
       62 GETTABLEKS                       R20 R20 K11 ["type"]
       64 GETTABLE                         R19 R6 R20
       65 ORK                              R18 R19 K10 [0]
       66 GETTABLEKS                       R19 R17 K14 ["aggregatePropertyInfo"]
       68 GETTABLEKS                       R19 R19 K11 ["type"]
       70 ADDK                             R20 R18 K12 [1]
       71 SETTABLE                         R20 R6 R19
       72 FORGLOOP                         R13 2 ; [-13]
       74 FORGLOOP                         R7 2 ; [-28]
       76 GETUPVAL                         R7 4
       77 DUPTABLE                         R8 K21 [{"initialElementsPerBucket", "elementsPerBucketNeeded", "paramsConstructor", "render", "getKey", "isVisible"}]
       78 GETTABLEKS                       R9 R0 K22 ["initialCaches"]
       80 GETTABLEKS                       R9 R9 K23 ["categories"]
       82 SETTABLEKS                       R9 R8 K15 ["initialElementsPerBucket"]
       84 SETTABLEKS                       R5 R8 K16 ["elementsPerBucketNeeded"]
       86 GETUPVAL                         R9 5
       87 GETTABLEKS                       R9 R9 K24 ["createPlaceHolderCategoryRowParams"]
       89 SETTABLEKS                       R9 R8 K17 ["paramsConstructor"]
       91 GETUPVAL                         R9 5
       92 GETTABLEKS                       R9 R9 K25 ["createRenderCategoryRowFromInterface"]
       94 GETTABLEKS                       R10 R0 K6 ["filter"]
       96 GETTABLEKS                       R11 R0 K26 ["setCategoryExpanded"]
       98 CALL                             R9 2 1
       99 SETTABLEKS                       R9 R8 K18 ["render"]
      101 GETUPVAL                         R9 6
      102 SETTABLEKS                       R9 R8 K19 ["getKey"]
      104 GETUPVAL                         R9 5
      105 GETTABLEKS                       R9 R9 K27 ["createIsCategoryRowVisible"]
      107 GETTABLEKS                       R10 R0 K6 ["filter"]
      109 CALL                             R9 1 1
      110 SETTABLEKS                       R9 R8 K20 ["isVisible"]
      112 CALL                             R7 1 2
      113 GETUPVAL                         R9 4
      114 DUPTABLE                         R10 K21 [{"initialElementsPerBucket", "elementsPerBucketNeeded", "paramsConstructor", "render", "getKey", "isVisible"}]
      115 GETTABLEKS                       R11 R0 K22 ["initialCaches"]
      117 GETTABLEKS                       R11 R11 K28 ["properties"]
      119 SETTABLEKS                       R11 R10 K15 ["initialElementsPerBucket"]
      121 SETTABLEKS                       R6 R10 K16 ["elementsPerBucketNeeded"]
      123 GETUPVAL                         R11 7
      124 GETTABLEKS                       R11 R11 K29 ["createPlaceHolderPropertyRowParams"]
      126 SETTABLEKS                       R11 R10 K17 ["paramsConstructor"]
      128 GETUPVAL                         R11 7
      129 GETTABLEKS                       R11 R11 K30 ["createRenderPropertyRowFromInterface"]
      131 GETTABLEKS                       R12 R0 K1 ["session"]
      133 GETTABLEKS                       R13 R0 K31 ["labelWidthBinding"]
      135 CALL                             R11 2 1
      136 SETTABLEKS                       R11 R10 K18 ["render"]
      138 GETUPVAL                         R11 6
      139 SETTABLEKS                       R11 R10 K19 ["getKey"]
      141 GETUPVAL                         R11 7
      142 GETTABLEKS                       R11 R11 K32 ["createIsPropertyRowVisible"]
      144 GETTABLEKS                       R12 R0 K6 ["filter"]
      146 CALL                             R11 1 1
      147 SETTABLEKS                       R11 R10 K20 ["isVisible"]
      149 CALL                             R9 1 2
      150 GETUPVAL                         R11 1
      151 GETTABLEKS                       R11 R11 K33 ["useEffect"]
      153 NEWCLOSURE                       R12 P1
      154 CAPTURE                          UPVAL U8
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R10
      157 CAPTURE                          UPVAL U9
      158 CAPTURE                          VAL R4
      159 CAPTURE                          UPVAL U10
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R6
      162 NEWTABLE                         R13 0 1
      164 MOVE                             R14 R4
      165 SETLIST                          R13 R14 1 [1]
      167 CALL                             R11 2 0
      168 GETUPVAL                         R11 11
      169 GETUPVAL                         R12 12
      170 DUPTABLE                         R13 K38 [{["tag"] = "col", ["AutomaticSize"], ["Size"]}]
      171 GETIMPORT                        R14 K41 [Enum.AutomaticSize.Y]
      173 SETTABLEKS                       R14 R13 K36 ["AutomaticSize"]
      175 GETTABLEKS                       R14 R0 K42 ["size"]
      177 SETTABLEKS                       R14 R13 K37 ["Size"]
      179 MOVE                             R14 R7
      180 MOVE                             R15 R9
      181 CALL                             R11 4 -1
      182 RETURN                           R11 -1

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
       18 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Util"]
       25 GETTABLEKS                       R5 R5 K10 ["Observable"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["PropertyEditorTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R7 R7 K12 ["PropertyRowPooling"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["PropertyTypes"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R1 K14 ["React"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K4 ["Parent"]
       54 GETTABLEKS                       R10 R10 K15 ["ReactUtils"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K16 ["RpcTypes"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K6 [require]
       64 GETTABLEKS                       R12 R1 K17 ["SignalsExperimental"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K6 [require]
       69 GETTABLEKS                       R13 R1 K18 ["SignalsReact"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K6 [require]
       74 GETTABLEKS                       R14 R0 K19 ["Components"]
       76 GETTABLEKS                       R14 R14 K20 ["Contexts"]
       78 GETTABLEKS                       R14 R14 K21 ["TabsContext"]
       80 CALL                             R13 1 1
       81 GETIMPORT                        R14 K6 [require]
       83 GETTABLEKS                       R15 R0 K22 ["Hooks"]
       85 GETTABLEKS                       R15 R15 K23 ["useCachedElementsByBucket"]
       87 CALL                             R14 1 1
       88 GETTABLEKS                       R15 R3 K24 ["View"]
       90 GETTABLEKS                       R16 R8 K25 ["createElement"]
       92 DUPCLOSURE                       R17 K26 [PROTO_0]
       93 DUPCLOSURE                       R18 K27 [PROTO_1]
       94 DUPCLOSURE                       R19 K28 [PROTO_5]
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R18
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R15
      108 GETTABLEKS                       R20 R8 K29 ["memo"]
      110 MOVE                             R21 R19
      111 CALL                             R20 1 -1
      112 RETURN                           R20 -1
