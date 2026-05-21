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
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETTABLEKS                       R2 R2 K1 ["metaType"]
        4 JUMPIFNOTEQKS                    R2 K2 ["Virtual"] ; [+9]
        6 GETTABLEKS                       R2 R0 K0 ["id"]
        8 GETTABLEKS                       R2 R2 K3 ["name"]
       10 JUMPIFNOTEQKS                    R2 K4 ["Self"] ; [+3]
       12 LOADK                            R2 K5 ["Summary"]
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R0 K0 ["id"]
       16 GETTABLEKS                       R2 R2 K1 ["metaType"]
       18 JUMPIFNOTEQKS                    R2 K2 ["Virtual"] ; [+9]
       20 GETTABLEKS                       R2 R0 K6 ["aggregatePropertyInfo"]
       22 GETTABLEKS                       R2 R2 K7 ["type"]
       24 JUMPIFNOTEQKS                    R2 K8 ["CombinedColor"] ; [+3]
       26 LOADK                            R2 K9 ["Appearance"]
       27 RETURN                           R2 1
       28 GETTABLEKS                       R2 R0 K0 ["id"]
       30 GETTABLEKS                       R2 R2 K1 ["metaType"]
       32 JUMPIFNOTEQKS                    R2 K2 ["Virtual"] ; [+9]
       34 GETTABLEKS                       R2 R0 K0 ["id"]
       36 GETTABLEKS                       R2 R2 K3 ["name"]
       38 JUMPIFNOTEQKS                    R2 K10 ["MeshId"] ; [+3]
       40 LOADK                            R2 K9 ["Appearance"]
       41 RETURN                           R2 1
       42 GETTABLEKS                       R2 R0 K0 ["id"]
       44 GETTABLEKS                       R2 R2 K1 ["metaType"]
       46 JUMPIFEQKS                       R2 K11 ["Property"] ; [+7]
       48 GETTABLEKS                       R2 R0 K0 ["id"]
       50 GETTABLEKS                       R2 R2 K1 ["metaType"]
       52 JUMPIFNOTEQKS                    R2 K2 ["Virtual"] ; [+46]
       54 GETTABLEKS                       R2 R0 K0 ["id"]
       56 GETTABLEKS                       R2 R2 K3 ["name"]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R5 R0 K0 ["id"]
       61 GETTABLEKS                       R5 R5 K12 ["className"]
       63 GETTABLE                         R3 R4 R5
       64 JUMPIF                           R3 ; [+8]
       65 NEWTABLE                         R3 0 0
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R5 R0 K0 ["id"]
       70 GETTABLEKS                       R5 R5 K12 ["className"]
       72 SETTABLE                         R3 R4 R5
       73 GETTABLE                         R4 R3 R2
       74 JUMPIF                           R4 ; [+23]
       75 GETTABLEKS                       R5 R0 K0 ["id"]
       77 GETTABLEKS                       R5 R5 K12 ["className"]
       79 GETTABLEKS                       R6 R1 K13 ["ListProperties"]
       81 MOVE                             R7 R5
       82 CALL                             R6 1 1
       83 MOVE                             R7 R6
       84 LOADNIL                          R8
       85 LOADNIL                          R9
       86 FORGPREP                         R7
       87 GETTABLEKS                       R12 R11 K3 ["name"]
       89 JUMPIFNOTEQ                      R12 R2 ; [+4]
       91 GETTABLEKS                       R4 R11 K14 ["category"]
       93 JUMP                             ; [+3]
       94 FORGLOOP                         R7 2 ; [-8]
       96 LOADK                            R4 K15 ["Missing Property Metadata"]
       97 SETTABLE                         R4 R3 R2
       98 RETURN                           R4 1
       99 LOADNIL                          R2
      100 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETTABLEKS                       R1 R1 K1 ["metaType"]
        4 JUMPIFNOTEQKS                    R1 K2 ["Attribute"] ; [+3]
        6 LOADK                            R1 K3 ["Attributes"]
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K0 ["id"]
       10 GETTABLEKS                       R1 R1 K1 ["metaType"]
       12 JUMPIFNOTEQKS                    R1 K4 ["Tag"] ; [+3]
       14 LOADK                            R1 K5 ["Tags"]
       15 RETURN                           R1 1
       16 LOADK                            R1 K6 ["Properties"]
       17 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETTABLEKS                       R1 R1 K1 ["name"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["name"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIF                           R1 ; [+3]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["Default"]
        8 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["id"]
        2 GETTABLEKS                       R3 R3 K1 ["name"]
        4 GETTABLEKS                       R4 R1 K0 ["id"]
        6 GETTABLEKS                       R4 R4 K1 ["name"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["name"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIF                           R2 ; [+3]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["Default"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R5 R1 K0 ["name"]
       11 GETTABLE                         R3 R4 R5
       12 JUMPIF                           R3 ; [+3]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K1 ["Default"]
       16 JUMPIFNOTEQ                      R2 R3 ; [+10]
       18 GETTABLEKS                       R5 R0 K0 ["name"]
       20 GETTABLEKS                       R6 R1 K0 ["name"]
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
       10 NEWTABLE                         R3 0 0
       12 MOVE                             R4 R0
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETUPVAL                         R9 0
       17 MOVE                             R10 R8
       18 MOVE                             R11 R1
       19 CALL                             R9 2 1
       20 JUMPIFEQKNIL                     R9 ; [+39]
       22 GETTABLE                         R10 R3 R9
       23 JUMPIF                           R10 ; [+28]
       24 DUPTABLE                         R11 K3 [{"name", "type", "propertiesInOrder"}]
       25 SETTABLEKS                       R9 R11 K0 ["name"]
       27 GETTABLEKS                       R13 R8 K4 ["id"]
       29 GETTABLEKS                       R13 R13 K5 ["metaType"]
       31 JUMPIFNOTEQKS                    R13 K6 ["Attribute"] ; [+3]
       33 LOADK                            R12 K7 ["Attributes"]
       34 JUMP                             ; [+9]
       35 GETTABLEKS                       R13 R8 K4 ["id"]
       37 GETTABLEKS                       R13 R13 K5 ["metaType"]
       39 JUMPIFNOTEQKS                    R13 K8 ["Tag"] ; [+3]
       41 LOADK                            R12 K9 ["Tags"]
       42 JUMP                             ; [+1]
       43 LOADK                            R12 K10 ["Properties"]
       44 SETTABLEKS                       R12 R11 K1 ["type"]
       46 NEWTABLE                         R12 0 0
       48 SETTABLEKS                       R12 R11 K2 ["propertiesInOrder"]
       50 SETTABLE                         R11 R3 R9
       51 MOVE                             R10 R11
       52 GETTABLEKS                       R12 R10 K2 ["propertiesInOrder"]
       54 FASTCALL2                        TABLE_INSERT R12 R8 ; [+4]
       56 MOVE                             R13 R8
       57 GETIMPORT                        R11 K13 [table.insert]
       59 CALL                             R11 2 0
       60 FORGLOOP                         R4 2 ; [-45]
       62 NEWTABLE                         R4 0 0
       64 MOVE                             R5 R3
       65 LOADNIL                          R6
       66 LOADNIL                          R7
       67 FORGPREP                         R5
       68 GETIMPORT                        R10 K15 [table.sort]
       70 GETTABLEKS                       R11 R9 K2 ["propertiesInOrder"]
       72 GETUPVAL                         R12 1
       73 CALL                             R10 2 0
       74 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       76 MOVE                             R11 R4
       77 MOVE                             R12 R9
       78 GETIMPORT                        R10 K13 [table.insert]
       80 CALL                             R10 2 0
       81 FORGLOOP                         R5 2 ; [-14]
       83 GETIMPORT                        R5 K15 [table.sort]
       85 MOVE                             R6 R4
       86 GETUPVAL                         R7 2
       87 CALL                             R5 2 0
       88 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 DUPTABLE                         R1 K1 [{"categorizeProperties"}]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R1 K0 ["categorizeProperties"]
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["PropertiesTabsTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["PropertyInteraction"]
       25 GETTABLEKS                       R4 R4 K10 ["createStudioReflection"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["PropertyTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Util"]
       37 GETTABLEKS                       R6 R6 K13 ["createNextOrder"]
       39 CALL                             R5 1 1
       40 NEWTABLE                         R6 0 0
       42 DUPCLOSURE                       R7 K14 [PROTO_0]
       43 DUPCLOSURE                       R8 K15 [PROTO_1]
       44 CAPTURE                          VAL R6
       45 DUPCLOSURE                       R9 K16 [PROTO_2]
       46 DUPCLOSURE                       R10 K17 [PROTO_3]
       47 MOVE                             R11 R5
       48 CALL                             R11 0 1
       49 GETIMPORT                        R12 K20 [table.freeze]
       51 DUPTABLE                         R13 K31 [{"Appearance", "Data", "Transform", "Pivot", "Behavior", "Collision", "Part", "Default", "Tags", "Attributes"}]
       52 MOVE                             R14 R11
       53 CALL                             R14 0 1
       54 SETTABLEKS                       R14 R13 K21 ["Appearance"]
       56 MOVE                             R14 R11
       57 CALL                             R14 0 1
       58 SETTABLEKS                       R14 R13 K22 ["Data"]
       60 MOVE                             R14 R11
       61 CALL                             R14 0 1
       62 SETTABLEKS                       R14 R13 K23 ["Transform"]
       64 MOVE                             R14 R11
       65 CALL                             R14 0 1
       66 SETTABLEKS                       R14 R13 K24 ["Pivot"]
       68 MOVE                             R14 R11
       69 CALL                             R14 0 1
       70 SETTABLEKS                       R14 R13 K25 ["Behavior"]
       72 MOVE                             R14 R11
       73 CALL                             R14 0 1
       74 SETTABLEKS                       R14 R13 K26 ["Collision"]
       76 MOVE                             R14 R11
       77 CALL                             R14 0 1
       78 SETTABLEKS                       R14 R13 K27 ["Part"]
       80 MOVE                             R14 R11
       81 CALL                             R14 0 1
       82 SETTABLEKS                       R14 R13 K28 ["Default"]
       84 MOVE                             R14 R11
       85 CALL                             R14 0 1
       86 SETTABLEKS                       R14 R13 K29 ["Tags"]
       88 MOVE                             R14 R11
       89 CALL                             R14 0 1
       90 SETTABLEKS                       R14 R13 K30 ["Attributes"]
       92 CALL                             R12 1 1
       93 DUPCLOSURE                       R13 K32 [PROTO_4]
       94 CAPTURE                          VAL R12
       95 DUPCLOSURE                       R14 K33 [PROTO_5]
       96 DUPCLOSURE                       R15 K34 [PROTO_6]
       97 CAPTURE                          VAL R12
       98 DUPCLOSURE                       R16 K35 [PROTO_7]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R15
      102 DUPCLOSURE                       R17 K36 [PROTO_9]
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R16
      105 RETURN                           R17 1
