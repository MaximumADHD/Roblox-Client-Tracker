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
       25 GETTABLEKS                       R9 R4 K5 ["categoryName"]
       27 SETTABLEKS                       R9 R8 K3 ["name"]
       29 GETTABLEKS                       R9 R4 K0 ["type"]
       31 SETTABLEKS                       R9 R8 K0 ["type"]
       33 CALL                             R7 1 0
       34 GETTABLEKS                       R7 R6 K6 ["setLayoutOrder"]
       36 GETUPVAL                         R8 3
       37 CALL                             R8 0 -1
       38 CALL                             R7 -1 0
       39 GETTABLEKS                       R7 R6 K7 ["setUsed"]
       41 LOADB                            R8 1
       42 CALL                             R7 1 0
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R8 R4 K0 ["type"]
       46 GETTABLE                         R9 R7 R8
       47 ADDK                             R9 R9 K1 [1]
       48 SETTABLE                         R9 R7 R8
       49 GETTABLEKS                       R7 R4 K8 ["propertiesInOrder"]
       51 LOADNIL                          R8
       52 LOADNIL                          R9
       53 FORGPREP                         R7
       54 GETTABLEKS                       R13 R11 K9 ["aggregatePropertyInfo"]
       56 GETTABLEKS                       R12 R13 K0 ["type"]
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
       73 SETTABLEKS                       R11 R16 K10 ["propertyRecord"]
       75 GETTABLEKS                       R17 R4 K5 ["categoryName"]
       77 SETTABLEKS                       R17 R16 K5 ["categoryName"]
       79 CALL                             R15 1 0
       80 GETTABLEKS                       R15 R14 K6 ["setLayoutOrder"]
       82 GETUPVAL                         R16 3
       83 CALL                             R16 0 -1
       84 CALL                             R15 -1 0
       85 GETTABLEKS                       R15 R14 K7 ["setUsed"]
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createNextOrder"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["current"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K1 ["current"]
       10 NEWTABLE                         R3 0 0
       12 NEWTABLE                         R4 0 0
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R5 R6 K2 ["batch"]
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

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 GETTABLEKS                       R3 R0 K1 ["session"]
        5 GETTABLEKS                       R2 R3 K2 ["propertiesObservable"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 GETTABLEKS                       R5 R0 K1 ["session"]
       12 GETTABLEKS                       R4 R5 K3 ["reflection"]
       14 CALL                             R2 2 1
       15 NEWTABLE                         R3 0 0
       17 NEWTABLE                         R4 0 0
       19 MOVE                             R5 R2
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 GETTABLEKS                       R12 R9 K5 ["type"]
       25 GETTABLE                         R11 R3 R12
       26 ORK                              R10 R11 K4 [0]
       27 GETTABLEKS                       R11 R9 K5 ["type"]
       29 ADDK                             R12 R10 K6 [1]
       30 SETTABLE                         R12 R3 R11
       31 GETTABLEKS                       R11 R9 K7 ["propertiesInOrder"]
       33 LOADNIL                          R12
       34 LOADNIL                          R13
       35 FORGPREP                         R11
       36 GETTABLEKS                       R19 R15 K8 ["aggregatePropertyInfo"]
       38 GETTABLEKS                       R18 R19 K5 ["type"]
       40 GETTABLE                         R17 R4 R18
       41 ORK                              R16 R17 K4 [0]
       42 GETTABLEKS                       R18 R15 K8 ["aggregatePropertyInfo"]
       44 GETTABLEKS                       R17 R18 K5 ["type"]
       46 ADDK                             R18 R16 K6 [1]
       47 SETTABLE                         R18 R4 R17
       48 FORGLOOP                         R11 2 ; [-13]
       50 FORGLOOP                         R5 2 ; [-28]
       52 GETUPVAL                         R5 2
       53 DUPTABLE                         R6 K15 [{"initialElementsPerBucket", "elementsPerBucketNeeded", "paramsConstructor", "render", "getKey", "isVisible"}]
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R7 R8 K16 ["intialCategoryRowCaches"]
       57 SETTABLEKS                       R7 R6 K9 ["initialElementsPerBucket"]
       59 SETTABLEKS                       R3 R6 K10 ["elementsPerBucketNeeded"]
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R7 R8 K17 ["createPlaceHolderCategoryRowParams"]
       64 SETTABLEKS                       R7 R6 K11 ["paramsConstructor"]
       66 GETUPVAL                         R8 3
       67 GETTABLEKS                       R7 R8 K18 ["createRenderCategoryRowFromInterface"]
       69 GETTABLEKS                       R8 R0 K19 ["filter"]
       71 GETTABLEKS                       R9 R0 K20 ["setCategoryExpanded"]
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R6 K12 ["render"]
       76 GETUPVAL                         R7 4
       77 SETTABLEKS                       R7 R6 K13 ["getKey"]
       79 GETUPVAL                         R8 3
       80 GETTABLEKS                       R7 R8 K21 ["createIsCategoryRowVisible"]
       82 GETTABLEKS                       R8 R0 K19 ["filter"]
       84 CALL                             R7 1 1
       85 SETTABLEKS                       R7 R6 K14 ["isVisible"]
       87 CALL                             R5 1 2
       88 GETUPVAL                         R7 2
       89 DUPTABLE                         R8 K15 [{"initialElementsPerBucket", "elementsPerBucketNeeded", "paramsConstructor", "render", "getKey", "isVisible"}]
       90 GETUPVAL                         R10 5
       91 GETTABLEKS                       R9 R10 K22 ["initialPropertyRowCaches"]
       93 SETTABLEKS                       R9 R8 K9 ["initialElementsPerBucket"]
       95 SETTABLEKS                       R4 R8 K10 ["elementsPerBucketNeeded"]
       97 GETUPVAL                         R10 5
       98 GETTABLEKS                       R9 R10 K23 ["createPlaceHolderPropertyRowParams"]
      100 SETTABLEKS                       R9 R8 K11 ["paramsConstructor"]
      102 GETUPVAL                         R10 5
      103 GETTABLEKS                       R9 R10 K24 ["createRenderPropertyRowFromInterface"]
      105 GETTABLEKS                       R10 R0 K1 ["session"]
      107 GETTABLEKS                       R11 R0 K25 ["labelWidthBinding"]
      109 CALL                             R9 2 1
      110 SETTABLEKS                       R9 R8 K12 ["render"]
      112 GETUPVAL                         R9 4
      113 SETTABLEKS                       R9 R8 K13 ["getKey"]
      115 GETUPVAL                         R10 5
      116 GETTABLEKS                       R9 R10 K26 ["createIsPropertyRowVisible"]
      118 GETTABLEKS                       R10 R0 K19 ["filter"]
      120 CALL                             R9 1 1
      121 SETTABLEKS                       R9 R8 K14 ["isVisible"]
      123 CALL                             R7 1 2
      124 GETUPVAL                         R10 6
      125 GETTABLEKS                       R9 R10 K27 ["useEffect"]
      127 NEWCLOSURE                       R10 P0
      128 CAPTURE                          UPVAL U7
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R8
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          VAL R2
      133 CAPTURE                          UPVAL U9
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R4
      136 NEWTABLE                         R11 0 1
      138 MOVE                             R12 R2
      139 SETLIST                          R11 R12 1 [1]
      141 CALL                             R9 2 0
      142 GETUPVAL                         R9 10
      143 GETUPVAL                         R10 11
      144 DUPTABLE                         R11 K31 [{"tag", "AutomaticSize", "Size"}]
      145 LOADK                            R12 K32 ["col"]
      146 SETTABLEKS                       R12 R11 K28 ["tag"]
      148 GETIMPORT                        R12 K35 [Enum.AutomaticSize.Y]
      150 SETTABLEKS                       R12 R11 K29 ["AutomaticSize"]
      152 GETTABLEKS                       R12 R0 K36 ["size"]
      154 SETTABLEKS                       R12 R11 K30 ["Size"]
      156 MOVE                             R12 R5
      157 MOVE                             R13 R7
      158 CALL                             R9 4 -1
      159 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R4 K1 [script]
       13 GETTABLEKS                       R3 R4 K7 ["CategoryRowPooling"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Util"]
       25 GETTABLEKS                       R5 R6 K10 ["Observable"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["PropertyEditorTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R8 K1 [script]
       37 GETTABLEKS                       R7 R8 K12 ["PropertyRowPooling"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["PropertyTypes"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R1 K14 ["React"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R11 R0 K4 ["Parent"]
       54 GETTABLEKS                       R10 R11 K15 ["ReactUtils"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K16 ["RpcTypes"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K6 [require]
       64 GETTABLEKS                       R12 R1 K17 ["SignalsExperimental"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K6 [require]
       69 GETTABLEKS                       R14 R0 K9 ["Util"]
       71 GETTABLEKS                       R13 R14 K18 ["categorizeProperties"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K6 [require]
       76 GETTABLEKS                       R15 R0 K19 ["Hooks"]
       78 GETTABLEKS                       R14 R15 K20 ["useCachedElementsByBucket"]
       80 CALL                             R13 1 1
       81 GETTABLEKS                       R14 R3 K21 ["View"]
       83 GETTABLEKS                       R15 R8 K22 ["createElement"]
       85 DUPCLOSURE                       R16 K23 [PROTO_0]
       86 DUPCLOSURE                       R17 K24 [PROTO_1]
       87 DUPCLOSURE                       R18 K25 [PROTO_4]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R17
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R14
      100 GETTABLEKS                       R19 R8 K26 ["memo"]
      102 MOVE                             R20 R18
      103 CALL                             R19 1 -1
      104 RETURN                           R19 -1
