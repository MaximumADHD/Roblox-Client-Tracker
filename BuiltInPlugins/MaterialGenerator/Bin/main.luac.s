PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["createElement"]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K4 [{"Plugin", "pluginLoaderContext"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K2 ["Plugin"]
       14 GETUPVAL                         R3 4
       15 SETTABLEKS                       R3 R2 K3 ["pluginLoaderContext"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R1 6
       19 GETTABLEKS                       R1 R1 K5 ["createRoot"]
       21 GETIMPORT                        R2 K8 [Instance.new]
       23 LOADK                            R3 K9 ["Frame"]
       24 CALL                             R2 1 -1
       25 CALL                             R1 -1 1
       26 SETUPVAL                         R1 5
       27 GETUPVAL                         R1 5
       28 MOVE                             R3 R0
       29 NAMECALL                         R1 R1 K10 ["render"]
       31 CALL                             R1 2 0
       32 GETUPVAL                         R1 7
       33 JUMPIFNOT                        R1 ; [+6]
       34 GETUPVAL                         R1 7
       35 LOADK                            R3 K11 ["Roact tree"]
       36 GETUPVAL                         R4 5
       37 NAMECALL                         R1 R1 K12 ["addRoactTree"]
       39 CALL                             R1 3 0
       40 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 LOADNIL                          R2
       10 NAMECALL                         R0 R0 K1 ["render"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["MATERIAL_GENERATOR_READY"]
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [require]
        4 GETIMPORT                        R3 K3 [script]
        6 GETTABLEKS                       R3 R3 K4 ["Parent"]
        8 GETTABLEKS                       R3 R3 K5 ["defineLuaFlags"]
       10 CALL                             R2 1 0
       11 GETIMPORT                        R2 K1 [require]
       13 GETIMPORT                        R3 K3 [script]
       15 GETTABLEKS                       R3 R3 K4 ["Parent"]
       17 GETTABLEKS                       R3 R3 K6 ["commonInit"]
       19 CALL                             R2 1 1
       20 MOVE                             R3 R2
       21 CALL                             R3 0 0
       22 GETIMPORT                        R3 K3 [script]
       24 GETTABLEKS                       R3 R3 K4 ["Parent"]
       26 GETTABLEKS                       R3 R3 K4 ["Parent"]
       28 GETIMPORT                        R4 K8 [game]
       30 LOADK                            R6 K9 ["MemStorageService"]
       31 NAMECALL                         R4 R4 K10 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K1 [require]
       36 GETTABLEKS                       R6 R3 K11 ["Packages"]
       38 GETTABLEKS                       R6 R6 K12 ["TestLoader"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K1 [require]
       43 GETTABLEKS                       R7 R3 K13 ["SharedPluginConstants"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K1 [require]
       48 GETTABLEKS                       R8 R3 K11 ["Packages"]
       50 GETTABLEKS                       R8 R8 K14 ["React"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K1 [require]
       55 GETTABLEKS                       R9 R3 K11 ["Packages"]
       57 GETTABLEKS                       R9 R9 K15 ["ReactRoblox"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K1 [require]
       62 GETTABLEKS                       R10 R3 K16 ["Src"]
       64 GETTABLEKS                       R10 R10 K17 ["MainPlugin"]
       66 CALL                             R9 1 1
       67 LOADNIL                          R10
       68 LOADNIL                          R11
       69 GETTABLEKS                       R12 R5 K18 ["hasInternalPermission"]
       71 CALL                             R12 0 1
       72 JUMPIFNOT                        R12 ; [+16]
       73 GETIMPORT                        R12 K1 [require]
       75 GETTABLEKS                       R13 R3 K11 ["Packages"]
       77 GETTABLEKS                       R13 R13 K19 ["Dev"]
       79 GETTABLEKS                       R13 R13 K20 ["DeveloperTools"]
       81 CALL                             R12 1 1
       82 GETTABLEKS                       R13 R12 K21 ["forPlugin"]
       84 GETTABLEKS                       R14 R3 K22 ["Name"]
       86 MOVE                             R15 R0
       87 CALL                             R13 2 1
       88 MOVE                             R11 R13
       89 NEWCLOSURE                       R12 P0
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R1
       95 CAPTURE                          REF R10
       96 CAPTURE                          VAL R8
       97 CAPTURE                          REF R11
       98 GETTABLEKS                       R13 R0 K23 ["Unloading"]
      100 NEWCLOSURE                       R15 P1
      101 CAPTURE                          REF R11
      102 CAPTURE                          REF R10
      103 NAMECALL                         R13 R13 K24 ["Connect"]
      105 CALL                             R13 2 0
      106 GETTABLEKS                       R14 R1 K25 ["signals"]
      108 LOADK                            R16 K26 ["MemStorageService."]
      109 GETTABLEKS                       R17 R6 K27 ["LOAD_MATERIAL_GENERATOR"]
      111 CONCAT                           R15 R16 R17
      112 GETTABLE                         R13 R14 R15
      113 NEWCLOSURE                       R15 P2
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R6
      116 NAMECALL                         R13 R13 K24 ["Connect"]
      118 CALL                             R13 2 0
      119 MOVE                             R13 R12
      120 CALL                             R13 0 0
      121 CLOSEUPVALS                      R10
      122 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
