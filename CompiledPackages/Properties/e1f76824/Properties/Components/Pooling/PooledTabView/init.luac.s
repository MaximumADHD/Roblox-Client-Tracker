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
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
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
       49 GETUPVAL                         R7 4
       50 JUMPIFEQKNIL                     R7 ; [+20]
       52 GETUPVAL                         R7 4
       53 GETTABLEKS                       R7 R7 K0 ["type"]
       55 JUMPIFNOTEQKS                    R7 K7 ["addTag"] ; [+15]
       57 GETTABLEKS                       R7 R4 K0 ["type"]
       59 JUMPIFNOTEQKS                    R7 K8 ["Tags"] ; [+11]
       61 GETUPVAL                         R7 5
       62 DUPTABLE                         R8 K11 [{"ephemeralRow", "layoutOrder"}]
       63 GETUPVAL                         R9 4
       64 SETTABLEKS                       R9 R8 K9 ["ephemeralRow"]
       66 GETUPVAL                         R9 3
       67 CALL                             R9 0 1
       68 SETTABLEKS                       R9 R8 K10 ["layoutOrder"]
       70 CALL                             R7 1 0
       71 GETTABLEKS                       R7 R4 K12 ["propertiesInOrder"]
       73 LOADNIL                          R8
       74 LOADNIL                          R9
       75 FORGPREP                         R7
       76 GETTABLEKS                       R12 R11 K13 ["aggregatePropertyInfo"]
       78 GETTABLEKS                       R12 R12 K0 ["type"]
       80 GETUPVAL                         R14 6
       81 GETTABLE                         R13 R14 R12
       82 JUMPIFNOT                        R13 ; [+32]
       83 GETUPVAL                         R14 7
       84 GETUPVAL                         R17 7
       85 GETTABLE                         R16 R17 R12
       86 ORK                              R15 R16 K1 [1]
       87 SETTABLE                         R15 R14 R12
       88 GETUPVAL                         R16 7
       89 GETTABLE                         R15 R16 R12
       90 GETTABLE                         R14 R13 R15
       91 JUMPIFNOT                        R14 ; [+23]
       92 GETTABLEKS                       R15 R14 K2 ["setParams"]
       94 DUPTABLE                         R16 K16 [{"propertyRecord", "categoryName"}]
       95 SETTABLEKS                       R11 R16 K14 ["propertyRecord"]
       97 GETTABLEKS                       R17 R4 K3 ["name"]
       99 SETTABLEKS                       R17 R16 K15 ["categoryName"]
      101 CALL                             R15 1 0
      102 GETTABLEKS                       R15 R14 K5 ["setLayoutOrder"]
      104 GETUPVAL                         R16 3
      105 CALL                             R16 0 -1
      106 CALL                             R15 -1 0
      107 GETTABLEKS                       R15 R14 K6 ["setUsed"]
      109 LOADB                            R16 1
      110 CALL                             R15 1 0
      111 GETUPVAL                         R15 7
      112 GETTABLE                         R16 R15 R12
      113 ADDK                             R16 R16 K1 [1]
      114 SETTABLE                         R16 R15 R12
      115 FORGLOOP                         R7 2 ; [-40]
      117 FORGLOOP                         R0 2 ; [-114]
      119 GETUPVAL                         R0 8
      120 GETUPVAL                         R1 1
      121 GETUPVAL                         R2 9
      122 CALL                             R0 2 0
      123 GETUPVAL                         R0 8
      124 GETUPVAL                         R1 6
      125 GETUPVAL                         R2 10
      126 CALL                             R0 2 0
      127 RETURN                           R0 0

PROTO_5:
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
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          UPVAL U9
       29 CALL                             R5 1 0
       30 RETURN                           R0 0

PROTO_6:
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
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R3 R3 K5 ["ephemeralRow"]
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K6 ["useSignalState"]
       27 GETTABLEKS                       R5 R0 K7 ["filter"]
       29 GETTABLEKS                       R5 R5 K8 ["getTab"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R7 0 3
       41 MOVE                             R8 R4
       42 GETTABLEKS                       R9 R2 K10 ["getPropertyCategorizationForTab"]
       44 MOVE                             R10 R1
       45 SETLIST                          R7 R8 3 [1]
       47 CALL                             R5 2 1
       48 NEWTABLE                         R6 0 0
       50 NEWTABLE                         R7 0 0
       52 MOVE                             R8 R5
       53 LOADNIL                          R9
       54 LOADNIL                          R10
       55 FORGPREP                         R8
       56 GETTABLEKS                       R15 R12 K12 ["type"]
       58 GETTABLE                         R14 R6 R15
       59 ORK                              R13 R14 K11 [0]
       60 GETTABLEKS                       R14 R12 K12 ["type"]
       62 ADDK                             R15 R13 K13 [1]
       63 SETTABLE                         R15 R6 R14
       64 GETTABLEKS                       R14 R12 K14 ["propertiesInOrder"]
       66 LOADNIL                          R15
       67 LOADNIL                          R16
       68 FORGPREP                         R14
       69 GETTABLEKS                       R21 R18 K15 ["aggregatePropertyInfo"]
       71 GETTABLEKS                       R21 R21 K12 ["type"]
       73 GETTABLE                         R20 R7 R21
       74 ORK                              R19 R20 K11 [0]
       75 GETTABLEKS                       R20 R18 K15 ["aggregatePropertyInfo"]
       77 GETTABLEKS                       R20 R20 K12 ["type"]
       79 ADDK                             R21 R19 K13 [1]
       80 SETTABLE                         R21 R7 R20
       81 FORGLOOP                         R14 2 ; [-13]
       83 FORGLOOP                         R8 2 ; [-28]
       85 GETUPVAL                         R8 5
       86 DUPTABLE                         R9 K22 [{"initialElementsPerBucket", "elementsPerBucketNeeded", "paramsConstructor", "render", "getKey", "isVisible"}]
       87 GETTABLEKS                       R10 R0 K23 ["initialCaches"]
       89 GETTABLEKS                       R10 R10 K24 ["categories"]
       91 SETTABLEKS                       R10 R9 K16 ["initialElementsPerBucket"]
       93 SETTABLEKS                       R6 R9 K17 ["elementsPerBucketNeeded"]
       95 GETUPVAL                         R10 6
       96 GETTABLEKS                       R10 R10 K25 ["createPlaceHolderCategoryRowParams"]
       98 SETTABLEKS                       R10 R9 K18 ["paramsConstructor"]
      100 GETUPVAL                         R10 6
      101 GETTABLEKS                       R10 R10 K26 ["createRenderCategoryRowFromInterface"]
      103 GETTABLEKS                       R11 R0 K7 ["filter"]
      105 GETTABLEKS                       R12 R0 K27 ["setCategoryExpanded"]
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K19 ["render"]
      110 GETUPVAL                         R10 7
      111 SETTABLEKS                       R10 R9 K20 ["getKey"]
      113 GETUPVAL                         R10 6
      114 GETTABLEKS                       R10 R10 K28 ["createIsCategoryRowVisible"]
      116 GETTABLEKS                       R11 R0 K7 ["filter"]
      118 CALL                             R10 1 1
      119 SETTABLEKS                       R10 R9 K21 ["isVisible"]
      121 CALL                             R8 1 2
      122 GETUPVAL                         R10 5
      123 DUPTABLE                         R11 K22 [{"initialElementsPerBucket", "elementsPerBucketNeeded", "paramsConstructor", "render", "getKey", "isVisible"}]
      124 GETTABLEKS                       R12 R0 K23 ["initialCaches"]
      126 GETTABLEKS                       R12 R12 K29 ["properties"]
      128 SETTABLEKS                       R12 R11 K16 ["initialElementsPerBucket"]
      130 SETTABLEKS                       R7 R11 K17 ["elementsPerBucketNeeded"]
      132 GETUPVAL                         R12 8
      133 GETTABLEKS                       R12 R12 K30 ["createPlaceHolderPropertyRowParams"]
      135 SETTABLEKS                       R12 R11 K18 ["paramsConstructor"]
      137 GETUPVAL                         R12 8
      138 GETTABLEKS                       R12 R12 K31 ["createRenderPropertyRowFromInterface"]
      140 GETTABLEKS                       R13 R0 K1 ["session"]
      142 GETTABLEKS                       R14 R0 K32 ["labelWidthBinding"]
      144 CALL                             R12 2 1
      145 SETTABLEKS                       R12 R11 K19 ["render"]
      147 GETUPVAL                         R12 7
      148 SETTABLEKS                       R12 R11 K20 ["getKey"]
      150 GETUPVAL                         R12 8
      151 GETTABLEKS                       R12 R12 K33 ["createIsPropertyRowVisible"]
      153 GETTABLEKS                       R13 R0 K7 ["filter"]
      155 CALL                             R12 1 1
      156 SETTABLEKS                       R12 R11 K21 ["isVisible"]
      158 CALL                             R10 1 2
      159 GETUPVAL                         R12 1
      160 GETTABLEKS                       R12 R12 K9 ["useMemo"]
      162 DUPCLOSURE                       R13 K34 [PROTO_3]
      163 CAPTURE                          UPVAL U9
      164 NEWTABLE                         R14 0 0
      166 CALL                             R12 2 2
      167 GETUPVAL                         R14 4
      168 GETTABLEKS                       R14 R14 K6 ["useSignalState"]
      170 MOVE                             R15 R12
      171 CALL                             R14 1 1
      172 GETUPVAL                         R15 1
      173 GETTABLEKS                       R15 R15 K35 ["useEffect"]
      175 NEWCLOSURE                       R16 P2
      176 CAPTURE                          UPVAL U10
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R11
      179 CAPTURE                          UPVAL U11
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R13
      183 CAPTURE                          UPVAL U12
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R7
      186 NEWTABLE                         R17 0 2
      188 MOVE                             R18 R5
      189 MOVE                             R19 R3
      190 SETLIST                          R17 R18 2 [1]
      192 CALL                             R15 2 0
      193 GETUPVAL                         R15 13
      194 GETUPVAL                         R16 14
      195 DUPTABLE                         R17 K40 [{["tag"] = "col", ["AutomaticSize"], ["Size"]}]
      196 GETIMPORT                        R18 K43 [Enum.AutomaticSize.Y]
      198 SETTABLEKS                       R18 R17 K38 ["AutomaticSize"]
      200 GETTABLEKS                       R18 R0 K44 ["size"]
      202 SETTABLEKS                       R18 R17 K39 ["Size"]
      204 MOVE                             R18 R8
      205 MOVE                             R19 R10
      206 MOVE                             R20 R3
      207 JUMPIFNOT                        R20 ; [+19]
      208 MOVE                             R20 R14
      209 JUMPIFNOT                        R20 ; [+17]
      210 LOADB                            R20 0
      211 GETTABLEKS                       R21 R14 K5 ["ephemeralRow"]
      213 JUMPIFNOTEQ                      R21 R3 ; [+13]
      215 GETUPVAL                         R20 13
      216 GETUPVAL                         R21 15
      217 DUPTABLE                         R22 K46 [{"layoutOrder", "session"}]
      218 GETTABLEKS                       R23 R14 K45 ["layoutOrder"]
      220 SETTABLEKS                       R23 R22 K45 ["layoutOrder"]
      222 GETTABLEKS                       R23 R0 K1 ["session"]
      224 SETTABLEKS                       R23 R22 K1 ["session"]
      226 CALL                             R20 2 1
      227 CALL                             R15 5 -1
      228 RETURN                           R15 -1

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
       32 GETTABLEKS                       R6 R0 K12 ["Util"]
       34 GETTABLEKS                       R6 R6 K13 ["Observable"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K14 ["PropertyEditorTypes"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K15 ["PropertyRowPooling"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K16 ["PropertyTypes"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R1 K17 ["React"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K4 ["Parent"]
       63 GETTABLEKS                       R11 R11 K18 ["ReactUtils"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K19 ["RpcTypes"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R13 R1 K20 ["Signals"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K6 [require]
       78 GETTABLEKS                       R14 R1 K21 ["SignalsExperimental"]
       80 CALL                             R13 1 1
       81 GETIMPORT                        R14 K6 [require]
       83 GETTABLEKS                       R15 R1 K22 ["SignalsReact"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K6 [require]
       88 GETTABLEKS                       R16 R0 K8 ["Components"]
       90 GETTABLEKS                       R16 R16 K9 ["Contexts"]
       92 GETTABLEKS                       R16 R16 K23 ["TabsContext"]
       94 CALL                             R15 1 1
       95 GETIMPORT                        R16 K6 [require]
       97 GETTABLEKS                       R17 R0 K8 ["Components"]
       99 GETTABLEKS                       R17 R17 K24 ["TagsAndAttributes"]
      101 GETTABLEKS                       R17 R17 K25 ["TagEphemeralRow"]
      103 CALL                             R16 1 1
      104 GETIMPORT                        R17 K6 [require]
      106 GETTABLEKS                       R18 R0 K26 ["Hooks"]
      108 GETTABLEKS                       R18 R18 K27 ["useCachedElementsByBucket"]
      110 CALL                             R17 1 1
      111 GETTABLEKS                       R18 R4 K28 ["View"]
      113 GETTABLEKS                       R19 R9 K29 ["createElement"]
      115 DUPCLOSURE                       R20 K30 [PROTO_0]
      116 DUPCLOSURE                       R21 K31 [PROTO_1]
      117 DUPCLOSURE                       R22 K32 [PROTO_6]
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R16
      134 GETTABLEKS                       R23 R9 K33 ["memo"]
      136 MOVE                             R24 R22
      137 CALL                             R23 1 -1
      138 RETURN                           R23 -1
