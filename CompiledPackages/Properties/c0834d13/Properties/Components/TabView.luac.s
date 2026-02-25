PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["id"]
        2 GETTABLEKS                       R2 R3 K1 ["metaType"]
        4 GETUPVAL                         R3 0
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["List"]
        3 GETTABLEKS                       R2 R3 K1 ["filter"]
        5 MOVE                             R3 R0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["properties"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["List"]
        5 GETTABLEKS                       R3 R4 K2 ["filter"]
        7 MOVE                             R4 R2
        8 LOADK                            R6 K3 ["Tag"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R6
       11 CALL                             R3 2 1
       12 MOVE                             R1 R3
       13 GETTABLEKS                       R3 R0 K0 ["properties"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K1 ["List"]
       18 GETTABLEKS                       R4 R5 K2 ["filter"]
       20 MOVE                             R5 R3
       21 LOADK                            R7 K4 ["Attribute"]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          VAL R7
       24 CALL                             R4 2 1
       25 MOVE                             R2 R4
       26 GETUPVAL                         R3 1
       27 CALL                             R3 0 1
       28 GETUPVAL                         R4 2
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R5 R6 K5 ["Fragment"]
       32 NEWTABLE                         R6 0 0
       34 DUPTABLE                         R7 K8 [{"Tags", "Attributes"}]
       35 GETUPVAL                         R8 2
       36 GETUPVAL                         R9 4
       37 DUPTABLE                         R10 K11 [{"tags", "layoutOrder"}]
       38 SETTABLEKS                       R1 R10 K9 ["tags"]
       40 MOVE                             R11 R3
       41 CALL                             R11 0 1
       42 SETTABLEKS                       R11 R10 K10 ["layoutOrder"]
       44 CALL                             R8 2 1
       45 SETTABLEKS                       R8 R7 K6 ["Tags"]
       47 GETUPVAL                         R8 2
       48 GETUPVAL                         R9 5
       49 DUPTABLE                         R10 K15 [{"session", "attributes", "layoutOrder", "labelWidthBinding"}]
       50 GETTABLEKS                       R11 R0 K12 ["session"]
       52 SETTABLEKS                       R11 R10 K12 ["session"]
       54 SETTABLEKS                       R2 R10 K13 ["attributes"]
       56 MOVE                             R11 R3
       57 CALL                             R11 0 1
       58 SETTABLEKS                       R11 R10 K10 ["layoutOrder"]
       60 GETTABLEKS                       R11 R0 K14 ["labelWidthBinding"]
       62 SETTABLEKS                       R11 R10 K14 ["labelWidthBinding"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K7 ["Attributes"]
       67 CALL                             R4 3 -1
       68 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["properties"]
        3 GETTABLEKS                       R4 R0 K1 ["session"]
        5 GETTABLEKS                       R3 R4 K2 ["reflection"]
        7 CALL                             R1 2 1
        8 NEWTABLE                         R2 0 0
       10 MOVE                             R3 R1
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R7 K3 ["categoryName"]
       16 GETUPVAL                         R9 1
       17 GETUPVAL                         R10 2
       18 DUPTABLE                         R11 K7 [{"session", "category", "layoutOrder", "labelWidthBinding"}]
       19 GETTABLEKS                       R12 R0 K1 ["session"]
       21 SETTABLEKS                       R12 R11 K1 ["session"]
       23 SETTABLEKS                       R7 R11 K4 ["category"]
       25 SETTABLEKS                       R6 R11 K5 ["layoutOrder"]
       27 GETTABLEKS                       R12 R0 K6 ["labelWidthBinding"]
       29 SETTABLEKS                       R12 R11 K6 ["labelWidthBinding"]
       31 CALL                             R9 2 1
       32 SETTABLE                         R9 R2 R8
       33 FORGLOOP                         R3 2 ; [-20]
       35 GETUPVAL                         R3 1
       36 GETUPVAL                         R5 3
       37 GETTABLEKS                       R4 R5 K8 ["Fragment"]
       39 NEWTABLE                         R5 0 0
       41 MOVE                             R6 R2
       42 CALL                             R3 3 -1
       43 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"General", "TagsAndAttributes", "All"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["General"]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["TagsAndAttributes"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["All"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R4 R0 K4 ["tab"]
       13 GETTABLE                         R3 R1 R4
       14 MOVE                             R4 R0
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R4 4
       18 DUPTABLE                         R5 K8 [{"tag", "AutomaticSize", "Size"}]
       19 LOADK                            R6 K9 ["col"]
       20 SETTABLEKS                       R6 R5 K5 ["tag"]
       22 GETIMPORT                        R6 K12 [Enum.AutomaticSize.Y]
       24 SETTABLEKS                       R6 R5 K6 ["AutomaticSize"]
       26 GETTABLEKS                       R6 R0 K13 ["size"]
       28 SETTABLEKS                       R6 R5 K7 ["Size"]
       30 MOVE                             R6 R2
       31 CALL                             R3 3 -1
       32 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["TagsAndAttributes"]
       15 GETTABLEKS                       R3 R4 K9 ["AttributeCategoryView"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Cryo"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["Foundation"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R8 R0 K7 ["Components"]
       32 GETTABLEKS                       R7 R8 K12 ["PropertyEntries"]
       34 GETTABLEKS                       R6 R7 K13 ["PropertyCategoryView"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K14 ["PropertyTypes"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R1 K15 ["React"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K16 ["RpcTypes"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R12 R0 K7 ["Components"]
       56 GETTABLEKS                       R11 R12 K8 ["TagsAndAttributes"]
       58 GETTABLEKS                       R10 R11 K17 ["TagCategoryView"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K18 ["Util"]
       65 GETTABLEKS                       R11 R12 K19 ["categorizeProperties"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K18 ["Util"]
       72 GETTABLEKS                       R12 R13 K20 ["createNextOrder"]
       74 CALL                             R11 1 1
       75 GETTABLEKS                       R12 R4 K21 ["View"]
       77 GETTABLEKS                       R13 R7 K22 ["createElement"]
       79 DUPCLOSURE                       R14 K23 [PROTO_1]
       80 CAPTURE                          VAL R3
       81 DUPCLOSURE                       R15 K24 [PROTO_2]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R2
       88 DUPCLOSURE                       R16 K25 [PROTO_3]
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R7
       93 DUPCLOSURE                       R17 K26 [PROTO_4]
       94 CAPTURE                          VAL R16
       95 DUPCLOSURE                       R18 K27 [PROTO_5]
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R12
      101 RETURN                           R18 1
