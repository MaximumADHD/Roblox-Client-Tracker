PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["ListProperties"]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 MOVE                             R4 R3
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R9 R8 K1 ["name"]
       10 JUMPIFNOTEQ                      R9 R1 ; [+4]
       12 GETTABLEKS                       R9 R8 K2 ["category"]
       14 RETURN                           R9 1
       15 FORGLOOP                         R4 2 ; [-8]
       17 LOADK                            R4 K3 ["Missing Property Metadata"]
       18 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["id"]
        2 GETTABLEKS                       R2 R3 K1 ["metaType"]
        4 JUMPIFNOTEQKS                    R2 K2 ["Attribute"] ; [+3]
        6 LOADK                            R2 K3 ["Attributes"]
        7 RETURN                           R2 1
        8 GETTABLEKS                       R3 R0 K0 ["id"]
       10 GETTABLEKS                       R2 R3 K1 ["metaType"]
       12 JUMPIFNOTEQKS                    R2 K4 ["Tag"] ; [+3]
       14 LOADK                            R2 K5 ["Tags"]
       15 RETURN                           R2 1
       16 GETTABLEKS                       R3 R0 K0 ["id"]
       18 GETTABLEKS                       R2 R3 K1 ["metaType"]
       20 JUMPIFNOTEQKS                    R2 K6 ["Virtual"] ; [+9]
       22 GETTABLEKS                       R3 R0 K0 ["id"]
       24 GETTABLEKS                       R2 R3 K7 ["name"]
       26 JUMPIFNOTEQKS                    R2 K8 ["Self"] ; [+3]
       28 LOADK                            R2 K9 ["Summary"]
       29 RETURN                           R2 1
       30 GETTABLEKS                       R3 R0 K0 ["id"]
       32 GETTABLEKS                       R2 R3 K1 ["metaType"]
       34 JUMPIFNOTEQKS                    R2 K6 ["Virtual"] ; [+9]
       36 GETTABLEKS                       R3 R0 K10 ["aggregatePropertyInfo"]
       38 GETTABLEKS                       R2 R3 K11 ["type"]
       40 JUMPIFNOTEQKS                    R2 K12 ["CombinedColor"] ; [+3]
       42 LOADK                            R2 K13 ["Appearance"]
       43 RETURN                           R2 1
       44 GETTABLEKS                       R3 R0 K0 ["id"]
       46 GETTABLEKS                       R2 R3 K1 ["metaType"]
       48 JUMPIFNOTEQKS                    R2 K6 ["Virtual"] ; [+9]
       50 GETTABLEKS                       R3 R0 K0 ["id"]
       52 GETTABLEKS                       R2 R3 K7 ["name"]
       54 JUMPIFNOTEQKS                    R2 K14 ["MeshId"] ; [+3]
       56 LOADK                            R2 K13 ["Appearance"]
       57 RETURN                           R2 1
       58 GETTABLEKS                       R3 R0 K0 ["id"]
       60 GETTABLEKS                       R2 R3 K1 ["metaType"]
       62 JUMPIFEQKS                       R2 K15 ["Property"] ; [+7]
       64 GETTABLEKS                       R3 R0 K0 ["id"]
       66 GETTABLEKS                       R2 R3 K1 ["metaType"]
       68 JUMPIFNOTEQKS                    R2 K6 ["Virtual"] ; [+46]
       70 GETTABLEKS                       R3 R0 K0 ["id"]
       72 GETTABLEKS                       R2 R3 K7 ["name"]
       74 GETUPVAL                         R4 0
       75 GETTABLEKS                       R6 R0 K0 ["id"]
       77 GETTABLEKS                       R5 R6 K16 ["className"]
       79 GETTABLE                         R3 R4 R5
       80 JUMPIF                           R3 ; [+8]
       81 NEWTABLE                         R3 0 0
       83 GETUPVAL                         R4 0
       84 GETTABLEKS                       R6 R0 K0 ["id"]
       86 GETTABLEKS                       R5 R6 K16 ["className"]
       88 SETTABLE                         R3 R4 R5
       89 GETTABLE                         R4 R3 R2
       90 JUMPIF                           R4 ; [+23]
       91 GETTABLEKS                       R6 R0 K0 ["id"]
       93 GETTABLEKS                       R5 R6 K16 ["className"]
       95 GETTABLEKS                       R6 R1 K17 ["ListProperties"]
       97 MOVE                             R7 R5
       98 CALL                             R6 1 1
       99 MOVE                             R7 R6
      100 LOADNIL                          R8
      101 LOADNIL                          R9
      102 FORGPREP                         R7
      103 GETTABLEKS                       R12 R11 K7 ["name"]
      105 JUMPIFNOTEQ                      R12 R2 ; [+4]
      107 GETTABLEKS                       R4 R11 K18 ["category"]
      109 JUMP                             ; [+3]
      110 FORGLOOP                         R7 2 ; [-8]
      112 LOADK                            R4 K19 ["Missing Property Metadata"]
      113 SETTABLE                         R4 R3 R2
      114 RETURN                           R4 1
      115 GETIMPORT                        R2 K21 [error]
      117 LOADK                            R4 K22 ["metatype %* not found"]
      118 GETTABLEKS                       R7 R0 K0 ["id"]
      120 GETTABLEKS                       R6 R7 K1 ["metaType"]
      122 NAMECALL                         R4 R4 K23 ["format"]
      124 CALL                             R4 2 1
      125 MOVE                             R3 R4
      126 CALL                             R2 1 0
      127 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETTABLEKS                       R1 R2 K1 ["name"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["categoryName"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIF                           R1 ; [+3]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["Default"]
        8 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["id"]
        2 GETTABLEKS                       R3 R4 K1 ["name"]
        4 GETTABLEKS                       R5 R1 K0 ["id"]
        6 GETTABLEKS                       R4 R5 K1 ["name"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["categoryName"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIF                           R2 ; [+3]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["Default"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R5 R1 K0 ["categoryName"]
       11 GETTABLE                         R3 R4 R5
       12 JUMPIF                           R3 ; [+3]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K1 ["Default"]
       16 JUMPIFNOTEQ                      R2 R3 ; [+10]
       18 GETTABLEKS                       R5 R0 K0 ["categoryName"]
       20 GETTABLEKS                       R6 R1 K0 ["categoryName"]
       22 JUMPIFLT                         R5 R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 RETURN                           R4 1
       27 JUMPIFLT                         R2 R3 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 RETURN                           R4 1

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 MOVE                             R9 R7
        8 MOVE                             R10 R1
        9 CALL                             R8 2 1
       10 GETTABLE                         R9 R2 R8
       11 JUMPIF                           R9 ; [+12]
       12 DUPTABLE                         R10 K2 [{"categoryName", "propertiesInOrder"}]
       13 SETTABLEKS                       R8 R10 K0 ["categoryName"]
       15 NEWTABLE                         R11 0 1
       17 MOVE                             R12 R7
       18 SETLIST                          R11 R12 1 [1]
       20 SETTABLEKS                       R11 R10 K1 ["propertiesInOrder"]
       22 SETTABLE                         R10 R2 R8
       23 JUMP                             ; [+8]
       24 GETTABLEKS                       R11 R9 K1 ["propertiesInOrder"]
       26 FASTCALL2                        TABLE_INSERT R11 R7 ; [+4]
       28 MOVE                             R12 R7
       29 GETIMPORT                        R10 K5 [table.insert]
       31 CALL                             R10 2 0
       32 FORGLOOP                         R3 2 ; [-27]
       34 NEWTABLE                         R3 0 0
       36 MOVE                             R4 R2
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 FORGPREP                         R4
       40 GETIMPORT                        R9 K7 [table.sort]
       42 GETTABLEKS                       R10 R8 K1 ["propertiesInOrder"]
       44 GETUPVAL                         R11 1
       45 CALL                             R9 2 0
       46 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       48 MOVE                             R10 R3
       49 MOVE                             R11 R8
       50 GETIMPORT                        R9 K5 [table.insert]
       52 CALL                             R9 2 0
       53 FORGLOOP                         R4 2 ; [-14]
       55 GETIMPORT                        R4 K7 [table.sort]
       57 MOVE                             R5 R3
       58 GETUPVAL                         R6 2
       59 CALL                             R4 2 0
       60 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["PropertyTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R5 R0 K8 ["Util"]
       21 GETTABLEKS                       R4 R5 K9 ["createNextOrder"]
       23 CALL                             R3 1 1
       24 NEWTABLE                         R4 0 0
       26 DUPCLOSURE                       R5 K10 [PROTO_0]
       27 DUPCLOSURE                       R6 K11 [PROTO_1]
       28 CAPTURE                          VAL R4
       29 DUPCLOSURE                       R7 K12 [PROTO_2]
       30 MOVE                             R8 R3
       31 CALL                             R8 0 1
       32 GETIMPORT                        R9 K15 [table.freeze]
       34 DUPTABLE                         R10 K26 [{"Appearance", "Data", "Transform", "Pivot", "Behavior", "Collision", "Part", "Default", "Tags", "Attributes"}]
       35 MOVE                             R11 R8
       36 CALL                             R11 0 1
       37 SETTABLEKS                       R11 R10 K16 ["Appearance"]
       39 MOVE                             R11 R8
       40 CALL                             R11 0 1
       41 SETTABLEKS                       R11 R10 K17 ["Data"]
       43 MOVE                             R11 R8
       44 CALL                             R11 0 1
       45 SETTABLEKS                       R11 R10 K18 ["Transform"]
       47 MOVE                             R11 R8
       48 CALL                             R11 0 1
       49 SETTABLEKS                       R11 R10 K19 ["Pivot"]
       51 MOVE                             R11 R8
       52 CALL                             R11 0 1
       53 SETTABLEKS                       R11 R10 K20 ["Behavior"]
       55 MOVE                             R11 R8
       56 CALL                             R11 0 1
       57 SETTABLEKS                       R11 R10 K21 ["Collision"]
       59 MOVE                             R11 R8
       60 CALL                             R11 0 1
       61 SETTABLEKS                       R11 R10 K22 ["Part"]
       63 MOVE                             R11 R8
       64 CALL                             R11 0 1
       65 SETTABLEKS                       R11 R10 K23 ["Default"]
       67 MOVE                             R11 R8
       68 CALL                             R11 0 1
       69 SETTABLEKS                       R11 R10 K24 ["Tags"]
       71 MOVE                             R11 R8
       72 CALL                             R11 0 1
       73 SETTABLEKS                       R11 R10 K25 ["Attributes"]
       75 CALL                             R9 1 1
       76 DUPCLOSURE                       R10 K27 [PROTO_3]
       77 CAPTURE                          VAL R9
       78 DUPCLOSURE                       R11 K28 [PROTO_4]
       79 DUPCLOSURE                       R12 K29 [PROTO_5]
       80 CAPTURE                          VAL R9
       81 DUPCLOSURE                       R13 K30 [PROTO_6]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R12
       85 RETURN                           R13 1
