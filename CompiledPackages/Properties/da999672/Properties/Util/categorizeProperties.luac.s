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
        2 GETTABLEKS                       R1 R2 K1 ["metaType"]
        4 JUMPIFNOTEQKS                    R1 K2 ["Attribute"] ; [+3]
        6 LOADK                            R1 K3 ["Attributes"]
        7 RETURN                           R1 1
        8 GETTABLEKS                       R2 R0 K0 ["id"]
       10 GETTABLEKS                       R1 R2 K1 ["metaType"]
       12 JUMPIFNOTEQKS                    R1 K4 ["Tag"] ; [+3]
       14 LOADK                            R1 K5 ["Tags"]
       15 RETURN                           R1 1
       16 LOADK                            R1 K6 ["Properties"]
       17 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETTABLEKS                       R1 R2 K1 ["name"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["categoryName"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIF                           R1 ; [+3]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["Default"]
        8 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["id"]
        2 GETTABLEKS                       R3 R4 K1 ["name"]
        4 GETTABLEKS                       R5 R1 K0 ["id"]
        6 GETTABLEKS                       R4 R5 K1 ["name"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_6:
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

PROTO_7:
        0 LENGTH                           R3 R0
        1 LOADN                            R4 0
        2 JUMPIFLT                         R4 R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 JUMPIF                           R2 ; [+3]
        7 NEWTABLE                         R3 0 0
        9 RETURN                           R3 1
       10 DUPTABLE                         R3 K2 [{"Tags", "Attributes"}]
       11 DUPTABLE                         R4 K6 [{"categoryName", "type", "propertiesInOrder"}]
       12 LOADK                            R5 K0 ["Tags"]
       13 SETTABLEKS                       R5 R4 K3 ["categoryName"]
       15 LOADK                            R5 K0 ["Tags"]
       16 SETTABLEKS                       R5 R4 K4 ["type"]
       18 NEWTABLE                         R5 0 0
       20 SETTABLEKS                       R5 R4 K5 ["propertiesInOrder"]
       22 SETTABLEKS                       R4 R3 K0 ["Tags"]
       24 DUPTABLE                         R4 K6 [{"categoryName", "type", "propertiesInOrder"}]
       25 LOADK                            R5 K1 ["Attributes"]
       26 SETTABLEKS                       R5 R4 K3 ["categoryName"]
       28 LOADK                            R5 K1 ["Attributes"]
       29 SETTABLEKS                       R5 R4 K4 ["type"]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K5 ["propertiesInOrder"]
       35 SETTABLEKS                       R4 R3 K1 ["Attributes"]
       37 MOVE                             R4 R0
       38 LOADNIL                          R5
       39 LOADNIL                          R6
       40 FORGPREP                         R4
       41 GETUPVAL                         R9 0
       42 MOVE                             R10 R8
       43 MOVE                             R11 R1
       44 CALL                             R9 2 1
       45 GETTABLE                         R10 R3 R9
       46 JUMPIF                           R10 ; [+28]
       47 DUPTABLE                         R11 K6 [{"categoryName", "type", "propertiesInOrder"}]
       48 SETTABLEKS                       R9 R11 K3 ["categoryName"]
       50 GETTABLEKS                       R14 R8 K7 ["id"]
       52 GETTABLEKS                       R13 R14 K8 ["metaType"]
       54 JUMPIFNOTEQKS                    R13 K9 ["Attribute"] ; [+3]
       56 LOADK                            R12 K1 ["Attributes"]
       57 JUMP                             ; [+9]
       58 GETTABLEKS                       R14 R8 K7 ["id"]
       60 GETTABLEKS                       R13 R14 K8 ["metaType"]
       62 JUMPIFNOTEQKS                    R13 K10 ["Tag"] ; [+3]
       64 LOADK                            R12 K0 ["Tags"]
       65 JUMP                             ; [+1]
       66 LOADK                            R12 K11 ["Properties"]
       67 SETTABLEKS                       R12 R11 K4 ["type"]
       69 NEWTABLE                         R12 0 0
       71 SETTABLEKS                       R12 R11 K5 ["propertiesInOrder"]
       73 SETTABLE                         R11 R3 R9
       74 MOVE                             R10 R11
       75 GETTABLEKS                       R12 R10 K5 ["propertiesInOrder"]
       77 FASTCALL2                        TABLE_INSERT R12 R8 ; [+4]
       79 MOVE                             R13 R8
       80 GETIMPORT                        R11 K14 [table.insert]
       82 CALL                             R11 2 0
       83 FORGLOOP                         R4 2 ; [-43]
       85 NEWTABLE                         R4 0 0
       87 MOVE                             R5 R3
       88 LOADNIL                          R6
       89 LOADNIL                          R7
       90 FORGPREP                         R5
       91 GETIMPORT                        R10 K16 [table.sort]
       93 GETTABLEKS                       R11 R9 K5 ["propertiesInOrder"]
       95 GETUPVAL                         R12 1
       96 CALL                             R10 2 0
       97 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       99 MOVE                             R11 R4
      100 MOVE                             R12 R9
      101 GETIMPORT                        R10 K14 [table.insert]
      103 CALL                             R10 2 0
      104 FORGLOOP                         R5 2 ; [-14]
      106 GETIMPORT                        R5 K16 [table.sort]
      108 MOVE                             R6 R4
      109 GETUPVAL                         R7 2
      110 CALL                             R5 2 0
      111 RETURN                           R4 1

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
       30 DUPCLOSURE                       R8 K13 [PROTO_3]
       31 MOVE                             R9 R3
       32 CALL                             R9 0 1
       33 GETIMPORT                        R10 K16 [table.freeze]
       35 DUPTABLE                         R11 K27 [{"Appearance", "Data", "Transform", "Pivot", "Behavior", "Collision", "Part", "Default", "Tags", "Attributes"}]
       36 MOVE                             R12 R9
       37 CALL                             R12 0 1
       38 SETTABLEKS                       R12 R11 K17 ["Appearance"]
       40 MOVE                             R12 R9
       41 CALL                             R12 0 1
       42 SETTABLEKS                       R12 R11 K18 ["Data"]
       44 MOVE                             R12 R9
       45 CALL                             R12 0 1
       46 SETTABLEKS                       R12 R11 K19 ["Transform"]
       48 MOVE                             R12 R9
       49 CALL                             R12 0 1
       50 SETTABLEKS                       R12 R11 K20 ["Pivot"]
       52 MOVE                             R12 R9
       53 CALL                             R12 0 1
       54 SETTABLEKS                       R12 R11 K21 ["Behavior"]
       56 MOVE                             R12 R9
       57 CALL                             R12 0 1
       58 SETTABLEKS                       R12 R11 K22 ["Collision"]
       60 MOVE                             R12 R9
       61 CALL                             R12 0 1
       62 SETTABLEKS                       R12 R11 K23 ["Part"]
       64 MOVE                             R12 R9
       65 CALL                             R12 0 1
       66 SETTABLEKS                       R12 R11 K24 ["Default"]
       68 MOVE                             R12 R9
       69 CALL                             R12 0 1
       70 SETTABLEKS                       R12 R11 K25 ["Tags"]
       72 MOVE                             R12 R9
       73 CALL                             R12 0 1
       74 SETTABLEKS                       R12 R11 K26 ["Attributes"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K28 [PROTO_4]
       78 CAPTURE                          VAL R10
       79 DUPCLOSURE                       R12 K29 [PROTO_5]
       80 DUPCLOSURE                       R13 K30 [PROTO_6]
       81 CAPTURE                          VAL R10
       82 DUPCLOSURE                       R14 K31 [PROTO_7]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R13
       86 RETURN                           R14 1
