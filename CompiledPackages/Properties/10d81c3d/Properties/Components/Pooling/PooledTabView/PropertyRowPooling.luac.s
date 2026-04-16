PROTO_0:
        0 DUPTABLE                         R1 K2 [{"propertyRecord", "categoryName"}]
        1 DUPTABLE                         R2 K5 [{"id", "aggregatePropertyInfo"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K6 ["fromClass"]
        5 LOADK                            R4 K7 ["PlaceHolder"]
        6 LOADK                            R5 K8 ["PlaceHolderClass"]
        7 LOADK                            R6 K9 ["Property"]
        8 CALL                             R3 3 1
        9 SETTABLEKS                       R3 R2 K3 ["id"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K10 ["fromInfoAndParts"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K11 ["fromTypePlaceHolder"]
       17 MOVE                             R5 R0
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 3
       20 MOVE                             R6 R0
       21 CALL                             R5 1 -1
       22 CALL                             R3 -1 1
       23 SETTABLEKS                       R3 R2 K4 ["aggregatePropertyInfo"]
       25 SETTABLEKS                       R2 R1 K0 ["propertyRecord"]
       27 LOADK                            R2 K7 ["PlaceHolder"]
       28 SETTABLEKS                       R2 R1 K1 ["categoryName"]
       30 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K0 ["propertyRecord"]
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["createComputed"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CALL                             R4 1 1
        6 MOVE                             R8 R1
        7 CALL                             R8 0 1
        8 GETTABLEKS                       R7 R8 K1 ["propertyRecord"]
       10 GETTABLEKS                       R6 R7 K2 ["aggregatePropertyInfo"]
       12 GETTABLEKS                       R5 R6 K3 ["type"]
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
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["getTab"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 DUPTABLE                         R4 K4 [{"General", "AttributesAndTags", "All"}]
        9 DUPTABLE                         R5 K7 [{"Virtual", "Property"}]
       10 LOADB                            R6 1
       11 SETTABLEKS                       R6 R5 K5 ["Virtual"]
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K6 ["Property"]
       16 SETTABLEKS                       R5 R4 K1 ["General"]
       18 DUPTABLE                         R5 K10 [{"Attribute", "Tag"}]
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K8 ["Attribute"]
       22 LOADB                            R6 1
       23 SETTABLEKS                       R6 R5 K9 ["Tag"]
       25 SETTABLEKS                       R5 R4 K2 ["AttributesAndTags"]
       27 DUPTABLE                         R5 K11 [{"Property", "Attribute", "Tag"}]
       28 LOADB                            R6 1
       29 SETTABLEKS                       R6 R5 K6 ["Property"]
       31 LOADB                            R6 1
       32 SETTABLEKS                       R6 R5 K8 ["Attribute"]
       34 LOADB                            R6 1
       35 SETTABLEKS                       R6 R5 K9 ["Tag"]
       37 SETTABLEKS                       R5 R4 K3 ["All"]
       39 GETTABLEKS                       R7 R2 K12 ["propertyRecord"]
       41 GETTABLEKS                       R6 R7 K13 ["id"]
       43 GETTABLEKS                       R5 R6 K14 ["metaType"]
       45 GETTABLE                         R7 R4 R3
       46 GETTABLE                         R6 R7 R5
       47 JUMPIFNOTEQKNIL                  R6 ; [+3]
       49 LOADB                            R6 0
       50 RETURN                           R6 1
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R6 R7 K15 ["getCollapsedCategories"]
       54 MOVE                             R7 R0
       55 CALL                             R6 1 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R7 R8 K16 ["getSearch"]
       59 MOVE                             R8 R0
       60 CALL                             R7 1 1
       61 GETTABLEKS                       R10 R2 K17 ["categoryName"]
       63 GETTABLE                         R9 R6 R10
       64 JUMPIFEQKB                       R9 TRUE ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 JUMPIFNOTEQKS                    R7 K18 [""] ; [+2]
       70 LOADB                            R9 0 +1
       71 LOADB                            R9 1
       72 LOADB                            R10 0
       73 JUMPIFNOT                        R9 ; [+18]
       74 GETTABLEKS                       R13 R2 K12 ["propertyRecord"]
       76 GETTABLEKS                       R12 R13 K13 ["id"]
       78 GETTABLEKS                       R11 R12 K19 ["name"]
       80 GETIMPORT                        R12 K22 [string.find]
       82 GETIMPORT                        R13 K24 [string.lower]
       84 MOVE                             R14 R11
       85 CALL                             R13 1 1
       86 MOVE                             R14 R7
       87 CALL                             R12 2 1
       88 JUMPIFNOTEQKNIL                  R12 ; [+2]
       90 LOADB                            R10 0 +1
       91 LOADB                            R10 1
       92 JUMPIF                           R8 ; [+2]
       93 NOT                              R11 R9
       94 JUMPIF                           R11 ; [+1]
       95 MOVE                             R11 R10
       96 RETURN                           R11 1

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
       11 GETTABLEKS                       R5 R0 K7 ["Util"]
       13 GETTABLEKS                       R4 R5 K8 ["PropertyInteraction"]
       15 GETTABLEKS                       R3 R4 K9 ["AggregatePropertyInfo"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K10 ["PropertyEditorTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R7 R0 K7 ["Util"]
       27 GETTABLEKS                       R6 R7 K8 ["PropertyInteraction"]
       29 GETTABLEKS                       R5 R6 K11 ["PropertyId"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R8 R0 K7 ["Util"]
       36 GETTABLEKS                       R7 R8 K8 ["PropertyInteraction"]
       38 GETTABLEKS                       R6 R7 K12 ["PropertyInfo"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R9 R0 K13 ["Components"]
       45 GETTABLEKS                       R8 R9 K14 ["PropertyEntries"]
       47 GETTABLEKS                       R7 R8 K15 ["PropertyRow"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K16 ["PropertyTypes"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R1 K17 ["React"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K18 ["RpcTypes"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R1 K19 ["Signals"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R14 R0 K13 ["Components"]
       74 GETTABLEKS                       R13 R14 K20 ["TagsAndAttributes"]
       76 GETTABLEKS                       R12 R13 K21 ["TagRow"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K7 ["Util"]
       83 GETTABLEKS                       R13 R14 K22 ["getPlaceHolderParts"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R8 K23 ["createElement"]
       88 DUPTABLE                         R14 K41 [{"string", "int", "float", "number", "Vector2", "Vector3", "boolean", "InstanceRef", "Enum", "DynamicEnum", "CombinedColor", "Content", "CFrame", "SecurityCapabilities", "Faces", "Color3", "BrickColor"}]
       89 LOADN                            R15 8
       90 SETTABLEKS                       R15 R14 K24 ["string"]
       92 LOADN                            R15 4
       93 SETTABLEKS                       R15 R14 K25 ["int"]
       95 LOADN                            R15 15
       96 SETTABLEKS                       R15 R14 K26 ["float"]
       98 LOADN                            R15 5
       99 SETTABLEKS                       R15 R14 K27 ["number"]
      101 LOADN                            R15 6
      102 SETTABLEKS                       R15 R14 K28 ["Vector2"]
      104 LOADN                            R15 20
      105 SETTABLEKS                       R15 R14 K29 ["Vector3"]
      107 LOADN                            R15 20
      108 SETTABLEKS                       R15 R14 K30 ["boolean"]
      110 LOADN                            R15 6
      111 SETTABLEKS                       R15 R14 K31 ["InstanceRef"]
      113 LOADN                            R15 16
      114 SETTABLEKS                       R15 R14 K32 ["Enum"]
      116 LOADN                            R15 2
      117 SETTABLEKS                       R15 R14 K33 ["DynamicEnum"]
      119 LOADN                            R15 2
      120 SETTABLEKS                       R15 R14 K34 ["CombinedColor"]
      122 LOADN                            R15 0
      123 SETTABLEKS                       R15 R14 K35 ["Content"]
      125 LOADN                            R15 6
      126 SETTABLEKS                       R15 R14 K36 ["CFrame"]
      128 LOADN                            R15 2
      129 SETTABLEKS                       R15 R14 K37 ["SecurityCapabilities"]
      131 LOADN                            R15 2
      132 SETTABLEKS                       R15 R14 K38 ["Faces"]
      134 LOADN                            R15 2
      135 SETTABLEKS                       R15 R14 K39 ["Color3"]
      137 LOADN                            R15 2
      138 SETTABLEKS                       R15 R14 K40 ["BrickColor"]
      140 DUPCLOSURE                       R15 K42 [PROTO_0]
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R12
      145 DUPCLOSURE                       R16 K43 [PROTO_3]
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R6
      150 DUPCLOSURE                       R17 K44 [PROTO_5]
      151 DUPTABLE                         R18 K49 [{"initialPropertyRowCaches", "createPlaceHolderPropertyRowParams", "createRenderPropertyRowFromInterface", "createIsPropertyRowVisible"}]
      152 SETTABLEKS                       R14 R18 K45 ["initialPropertyRowCaches"]
      154 SETTABLEKS                       R15 R18 K46 ["createPlaceHolderPropertyRowParams"]
      156 SETTABLEKS                       R16 R18 K47 ["createRenderPropertyRowFromInterface"]
      158 SETTABLEKS                       R17 R18 K48 ["createIsPropertyRowVisible"]
      160 RETURN                           R18 1
