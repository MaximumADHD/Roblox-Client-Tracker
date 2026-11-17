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
       46 GETIMPORT                        R7 K8 [game]
       48 LOADK                            R9 K14 ["EnableMaterialGenerator"]
       49 NAMECALL                         R7 R7 K15 ["GetFastFlag"]
       51 CALL                             R7 2 1
       52 JUMPIF                           R7 ; [+1]
       53 RETURN                           R0 0
       54 GETIMPORT                        R7 K1 [require]
       56 GETTABLEKS                       R8 R3 K11 ["Packages"]
       58 GETTABLEKS                       R8 R8 K16 ["React"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K1 [require]
       63 GETTABLEKS                       R9 R3 K11 ["Packages"]
       65 GETTABLEKS                       R9 R9 K17 ["ReactRoblox"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K1 [require]
       70 GETTABLEKS                       R10 R3 K18 ["Src"]
       72 GETTABLEKS                       R10 R10 K19 ["MainPlugin"]
       74 CALL                             R9 1 1
       75 LOADNIL                          R10
       76 LOADNIL                          R11
       77 GETTABLEKS                       R12 R5 K20 ["hasInternalPermission"]
       79 CALL                             R12 0 1
       80 JUMPIFNOT                        R12 ; [+16]
       81 GETIMPORT                        R12 K1 [require]
       83 GETTABLEKS                       R13 R3 K11 ["Packages"]
       85 GETTABLEKS                       R13 R13 K21 ["Dev"]
       87 GETTABLEKS                       R13 R13 K22 ["DeveloperTools"]
       89 CALL                             R12 1 1
       90 GETTABLEKS                       R13 R12 K23 ["forPlugin"]
       92 GETTABLEKS                       R14 R3 K24 ["Name"]
       94 MOVE                             R15 R0
       95 CALL                             R13 2 1
       96 MOVE                             R11 R13
       97 NEWCLOSURE                       R12 P0
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R1
      103 CAPTURE                          REF R10
      104 CAPTURE                          VAL R8
      105 CAPTURE                          REF R11
      106 GETTABLEKS                       R13 R0 K25 ["Unloading"]
      108 NEWCLOSURE                       R15 P1
      109 CAPTURE                          REF R11
      110 CAPTURE                          REF R10
      111 NAMECALL                         R13 R13 K26 ["Connect"]
      113 CALL                             R13 2 0
      114 GETTABLEKS                       R14 R1 K27 ["signals"]
      116 LOADK                            R16 K28 ["MemStorageService."]
      117 GETTABLEKS                       R17 R6 K29 ["LOAD_MATERIAL_GENERATOR"]
      119 CONCAT                           R15 R16 R17
      120 GETTABLE                         R13 R14 R15
      121 NEWCLOSURE                       R15 P2
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R6
      124 NAMECALL                         R13 R13 K26 ["Connect"]
      126 CALL                             R13 2 0
      127 MOVE                             R13 R12
      128 CALL                             R13 0 0
      129 CLOSEUPVALS                      R10
      130 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
