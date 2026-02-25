PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Name"]
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["createElement"]
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K4 [{"Plugin", "pluginLoaderContext"}]
       11 GETUPVAL                         R3 0
       12 SETTABLEKS                       R3 R2 K2 ["Plugin"]
       14 GETUPVAL                         R3 4
       15 SETTABLEKS                       R3 R2 K3 ["pluginLoaderContext"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R2 6
       19 GETTABLEKS                       R1 R2 K5 ["createRoot"]
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["MATERIAL_GENERATOR_READY"]
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
        4 GETIMPORT                        R5 K3 [script]
        6 GETTABLEKS                       R4 R5 K4 ["Parent"]
        8 GETTABLEKS                       R3 R4 K5 ["defineLuaFlags"]
       10 CALL                             R2 1 0
       11 GETIMPORT                        R2 K1 [require]
       13 GETIMPORT                        R5 K3 [script]
       15 GETTABLEKS                       R4 R5 K4 ["Parent"]
       17 GETTABLEKS                       R3 R4 K6 ["commonInit"]
       19 CALL                             R2 1 1
       20 MOVE                             R3 R2
       21 CALL                             R3 0 0
       22 GETIMPORT                        R5 K3 [script]
       24 GETTABLEKS                       R4 R5 K4 ["Parent"]
       26 GETTABLEKS                       R3 R4 K4 ["Parent"]
       28 GETIMPORT                        R4 K8 [game]
       30 LOADK                            R6 K9 ["MemStorageService"]
       31 NAMECALL                         R4 R4 K10 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K1 [require]
       36 GETTABLEKS                       R7 R3 K11 ["Packages"]
       38 GETTABLEKS                       R6 R7 K12 ["TestLoader"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K1 [require]
       43 GETTABLEKS                       R7 R3 K13 ["SharedPluginConstants"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K1 [require]
       48 GETTABLEKS                       R10 R3 K14 ["Src"]
       50 GETTABLEKS                       R9 R10 K15 ["Flags"]
       52 GETTABLEKS                       R8 R9 K16 ["getFFlagShowMaterialGeneratorFromElsewhere"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K8 [game]
       57 LOADK                            R10 K17 ["EnableMaterialGenerator"]
       58 NAMECALL                         R8 R8 K18 ["GetFastFlag"]
       60 CALL                             R8 2 1
       61 JUMPIF                           R8 ; [+1]
       62 RETURN                           R0 0
       63 GETIMPORT                        R8 K1 [require]
       65 GETTABLEKS                       R10 R3 K11 ["Packages"]
       67 GETTABLEKS                       R9 R10 K19 ["React"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K1 [require]
       72 GETTABLEKS                       R11 R3 K11 ["Packages"]
       74 GETTABLEKS                       R10 R11 K20 ["ReactRoblox"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K1 [require]
       79 GETTABLEKS                       R12 R3 K14 ["Src"]
       81 GETTABLEKS                       R11 R12 K21 ["MainPlugin"]
       83 CALL                             R10 1 1
       84 LOADNIL                          R11
       85 LOADNIL                          R12
       86 GETTABLEKS                       R13 R5 K22 ["hasInternalPermission"]
       88 CALL                             R13 0 1
       89 JUMPIFNOT                        R13 ; [+16]
       90 GETIMPORT                        R13 K1 [require]
       92 GETTABLEKS                       R16 R3 K11 ["Packages"]
       94 GETTABLEKS                       R15 R16 K23 ["Dev"]
       96 GETTABLEKS                       R14 R15 K24 ["DeveloperTools"]
       98 CALL                             R13 1 1
       99 GETTABLEKS                       R14 R13 K25 ["forPlugin"]
      101 GETTABLEKS                       R15 R3 K26 ["Name"]
      103 MOVE                             R16 R0
      104 CALL                             R14 2 1
      105 MOVE                             R12 R14
      106 NEWCLOSURE                       R13 P0
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R1
      112 CAPTURE                          REF R11
      113 CAPTURE                          VAL R9
      114 CAPTURE                          REF R12
      115 GETTABLEKS                       R14 R0 K27 ["Unloading"]
      117 NEWCLOSURE                       R16 P1
      118 CAPTURE                          REF R12
      119 CAPTURE                          REF R11
      120 NAMECALL                         R14 R14 K28 ["Connect"]
      122 CALL                             R14 2 0
      123 MOVE                             R14 R7
      124 CALL                             R14 0 1
      125 JUMPIFNOT                        R14 ; [+13]
      126 GETTABLEKS                       R15 R1 K29 ["signals"]
      128 LOADK                            R17 K30 ["MemStorageService."]
      129 GETTABLEKS                       R18 R6 K31 ["LOAD_MATERIAL_GENERATOR"]
      131 CONCAT                           R16 R17 R18
      132 GETTABLE                         R14 R15 R16
      133 NEWCLOSURE                       R16 P2
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R6
      136 NAMECALL                         R14 R14 K28 ["Connect"]
      138 CALL                             R14 2 0
      139 MOVE                             R14 R13
      140 CALL                             R14 0 0
      141 CLOSEUPVALS                      R11
      142 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
