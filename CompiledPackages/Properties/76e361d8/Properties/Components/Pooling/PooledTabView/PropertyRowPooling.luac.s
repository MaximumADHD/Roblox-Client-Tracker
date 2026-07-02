PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1], ["categoryName"] = "PlaceHolder"}]
        1 DUPTABLE                         R2 K6 [{"id", "aggregatePropertyInfo"}]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K7 ["fromClass"]
        5 LOADK                            R4 K2 ["PlaceHolder"]
        6 LOADK                            R5 K8 ["PlaceHolderClass"]
        7 LOADK                            R6 K9 ["Property"]
        8 CALL                             R3 3 1
        9 SETTABLEKS                       R3 R2 K4 ["id"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K10 ["fromInfoAndParts"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K11 ["fromTypePlaceHolder"]
       17 MOVE                             R5 R0
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 3
       20 MOVE                             R6 R0
       21 CALL                             R5 1 -1
       22 CALL                             R3 -1 1
       23 SETTABLEKS                       R3 R2 K5 ["aggregatePropertyInfo"]
       25 SETTABLEKS                       R2 R1 K0 ["propertyRecord"]
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K0 ["propertyRecord"]
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createComputed"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CALL                             R4 1 1
        6 MOVE                             R5 R1
        7 CALL                             R5 0 1
        8 GETTABLEKS                       R5 R5 K1 ["propertyRecord"]
       10 GETTABLEKS                       R5 R5 K2 ["aggregatePropertyInfo"]
       12 GETTABLEKS                       R5 R5 K3 ["type"]
       14 JUMPIFNOTEQKS                    R5 K4 ["Tag"] ; [+12]
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K8 [{"getTag", "LayoutOrder", "Visible"}]
       19 SETTABLEKS                       R4 R7 K5 ["getTag"]
       21 SETTABLEKS                       R2 R7 K6 ["LayoutOrder"]
       23 SETTABLEKS                       R3 R7 K7 ["Visible"]
       25 CALL                             R5 2 -1
       26 RETURN                           R5 -1
       27 GETUPVAL                         R5 1
       28 GETUPVAL                         R6 3
       29 DUPTABLE                         R7 K12 [{"session", "getProperty", "labelWidthBinding", "LayoutOrder", "Visible"}]
       30 GETUPVAL                         R8 4
       31 SETTABLEKS                       R8 R7 K9 ["session"]
       33 SETTABLEKS                       R4 R7 K10 ["getProperty"]
       35 GETUPVAL                         R8 5
       36 SETTABLEKS                       R8 R7 K11 ["labelWidthBinding"]
       38 SETTABLEKS                       R2 R7 K6 ["LayoutOrder"]
       40 SETTABLEKS                       R3 R7 K7 ["Visible"]
       42 CALL                             R5 2 -1
       43 RETURN                           R5 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R2 R1
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["getCollapsedCategories"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["getSearch"]
       11 MOVE                             R5 R0
       12 CALL                             R4 1 1
       13 GETTABLEKS                       R7 R2 K2 ["categoryName"]
       15 GETTABLE                         R6 R3 R7
       16 JUMPIFEQKB                       R6 TRUE ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 JUMPIFNOTEQKS                    R4 K3 [""] ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 LOADB                            R7 0
       25 JUMPIFNOT                        R6 ; [+18]
       26 GETTABLEKS                       R8 R2 K4 ["propertyRecord"]
       28 GETTABLEKS                       R8 R8 K5 ["id"]
       30 GETTABLEKS                       R8 R8 K6 ["name"]
       32 GETIMPORT                        R9 K9 [string.find]
       34 GETIMPORT                        R10 K11 [string.lower]
       36 MOVE                             R11 R8
       37 CALL                             R10 1 1
       38 MOVE                             R11 R4
       39 CALL                             R9 2 1
       40 JUMPIFNOTEQKNIL                  R9 ; [+2]
       42 LOADB                            R7 0 +1
       43 LOADB                            R7 1
       44 JUMPIF                           R5 ; [+2]
       45 NOT                              R8 R6
       46 JUMPIF                           R8 ; [+1]
       47 MOVE                             R8 R7
       48 RETURN                           R8 1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

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
       18 GETTABLEKS                       R4 R0 K9 ["PropertyEditorTypes"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["PropertyEntries"]
       27 GETTABLEKS                       R5 R5 K12 ["PropertyEntry"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K7 ["PropertyInteraction"]
       34 GETTABLEKS                       R6 R6 K13 ["PropertyId"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K7 ["PropertyInteraction"]
       41 GETTABLEKS                       R7 R7 K14 ["PropertyInfo"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["PropertyTypes"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K16 ["React"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K17 ["RpcTypes"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R1 K18 ["Signals"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R0 K10 ["Components"]
       68 GETTABLEKS                       R12 R12 K19 ["TagsAndAttributes"]
       70 GETTABLEKS                       R12 R12 K20 ["TagRow"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K7 ["PropertyInteraction"]
       77 GETTABLEKS                       R13 R13 K21 ["getPlaceHolderParts"]
       79 CALL                             R12 1 1
       80 GETTABLEKS                       R13 R8 K22 ["createElement"]
       82 DUPCLOSURE                       R14 K23 [PROTO_0]
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R12
       87 DUPCLOSURE                       R15 K24 [PROTO_3]
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R4
       92 DUPCLOSURE                       R16 K25 [PROTO_5]
       93 DUPTABLE                         R17 K29 [{"createPlaceHolderPropertyRowParams", "createRenderPropertyRowFromInterface", "createIsPropertyRowVisible"}]
       94 SETTABLEKS                       R14 R17 K26 ["createPlaceHolderPropertyRowParams"]
       96 SETTABLEKS                       R15 R17 K27 ["createRenderPropertyRowFromInterface"]
       98 SETTABLEKS                       R16 R17 K28 ["createIsPropertyRowVisible"]
      100 RETURN                           R17 1
