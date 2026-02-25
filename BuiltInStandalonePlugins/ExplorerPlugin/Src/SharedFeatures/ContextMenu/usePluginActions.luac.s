PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["key"]
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R4 R2
        1 LOADNIL                          R5
        2 LOADNIL                          R6
        3 FORGPREP                         R4
        4 MOVE                             R9 R8
        5 LOADNIL                          R10
        6 LOADNIL                          R11
        7 FORGPREP                         R9
        8 GETTABLEKS                       R15 R13 K0 ["source"]
       10 GETTABLEKS                       R14 R15 K1 ["type"]
       12 JUMPIFNOTEQKS                    R14 K2 ["submenu"] ; [+11]
       14 GETUPVAL                         R14 0
       15 MOVE                             R15 R0
       16 MOVE                             R16 R1
       17 GETTABLEKS                       R18 R13 K0 ["source"]
       19 GETTABLEKS                       R17 R18 K3 ["submenuCategories"]
       21 MOVE                             R18 R3
       22 CALL                             R14 4 0
       23 JUMP                             ; [+42]
       24 GETTABLEKS                       R15 R13 K0 ["source"]
       26 GETTABLEKS                       R14 R15 K1 ["type"]
       28 JUMPIFNOTEQKS                    R14 K4 ["studioAction"] ; [+31]
       30 LOADK                            R17 K5 ["Explorer_%*_%*"]
       31 GETTABLEKS                       R19 R13 K6 ["key"]
       33 GETUPVAL                         R20 1
       34 NAMECALL                         R20 R20 K7 ["GenerateGUID"]
       36 CALL                             R20 1 1
       37 NAMECALL                         R17 R17 K8 ["format"]
       39 CALL                             R17 3 1
       40 MOVE                             R16 R17
       41 LOADK                            R17 K9 ["TBD: Name"]
       42 LOADK                            R18 K10 [""]
       43 LOADNIL                          R19
       44 LOADB                            R20 0
       45 NAMECALL                         R14 R0 K11 ["CreatePluginAction"]
       47 CALL                             R14 6 1
       48 GETTABLEKS                       R15 R14 K12 ["Triggered"]
       50 NEWCLOSURE                       R17 P0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R13
       53 NAMECALL                         R15 R15 K13 ["Connect"]
       55 CALL                             R15 2 0
       56 GETTABLEKS                       R15 R13 K6 ["key"]
       58 SETTABLE                         R14 R3 R15
       59 JUMP                             ; [+6]
       60 GETUPVAL                         R14 2
       61 GETTABLEKS                       R16 R13 K0 ["source"]
       63 GETTABLEKS                       R15 R16 K1 ["type"]
       65 CALL                             R14 1 0
       66 FORGLOOP                         R9 2 ; [-59]
       68 FORGLOOP                         R4 2 ; [-65]
       70 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 GETIMPORT                        R1 K2 [task.defer]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R5 4
       11 CALL                             R1 4 0
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETIMPORT                        R1 K4 [warn]
       15 LOADK                            R2 K5 ["collectActions yielded, which shouldn't be possible but is what I think is breaking"]
       16 CALL                             R1 1 0
       17 CLOSEUPVALS                      R0
       18 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K4 ["useState"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CALL                             R2 1 1
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ExplorerPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R6 R1 K10 ["Src"]
       17 GETTABLEKS                       R5 R6 K11 ["SharedFeatures"]
       19 GETTABLEKS                       R4 R5 K12 ["ContextMenu"]
       21 GETTABLEKS                       R3 R4 K13 ["ContextMenuActionList"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R5 R1 K14 ["Packages"]
       28 GETTABLEKS                       R4 R5 K15 ["Explorer"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R6 R1 K14 ["Packages"]
       35 GETTABLEKS                       R5 R6 K16 ["Framework"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R7 R1 K14 ["Packages"]
       42 GETTABLEKS                       R6 R7 K17 ["React"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R9 R1 K10 ["Src"]
       49 GETTABLEKS                       R8 R9 K18 ["Util"]
       51 GETTABLEKS                       R7 R8 K19 ["exhaustiveMatch"]
       53 CALL                             R6 1 1
       54 DUPCLOSURE                       R7 K20 [PROTO_1]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R6
       58 DUPCLOSURE                       R8 K21 [PROTO_5]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R2
       63 RETURN                           R8 1
