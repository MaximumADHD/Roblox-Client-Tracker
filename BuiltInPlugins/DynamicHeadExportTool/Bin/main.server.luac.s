PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["createElement"]
       10 GETUPVAL                         R1 2
       11 DUPTABLE                         R2 K5 [{"Plugin"}]
       12 GETIMPORT                        R3 K1 [plugin]
       14 SETTABLEKS                       R3 R2 K4 ["Plugin"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R1 K6 ["createRoot"]
       20 GETIMPORT                        R2 K9 [Instance.new]
       22 LOADK                            R3 K10 ["Frame"]
       23 CALL                             R2 1 -1
       24 CALL                             R1 -1 1
       25 SETUPVAL                         R1 3
       26 GETUPVAL                         R1 3
       27 MOVE                             R3 R0
       28 NAMECALL                         R1 R1 K11 ["render"]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 5
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETUPVAL                         R1 5
       34 LOADK                            R3 K12 ["Roact tree"]
       35 GETUPVAL                         R4 3
       36 NAMECALL                         R1 R1 K13 ["addRoactTree"]
       38 CALL                             R1 3 0
       39 RETURN                           R0 0

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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        9 CALL                             R0 1 1
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R0 K6 [plugin]
       14 JUMPIF                           R0 ; [+1]
       15 RETURN                           R0 0
       16 GETIMPORT                        R0 K8 [require]
       18 GETIMPORT                        R1 K10 [script]
       20 GETTABLEKS                       R1 R1 K11 ["Parent"]
       22 GETTABLEKS                       R1 R1 K12 ["defineLuaFlags"]
       24 CALL                             R0 1 0
       25 GETIMPORT                        R0 K8 [require]
       27 GETIMPORT                        R1 K10 [script]
       29 GETTABLEKS                       R1 R1 K11 ["Parent"]
       31 GETTABLEKS                       R1 R1 K13 ["commonInit"]
       33 CALL                             R0 1 1
       34 MOVE                             R1 R0
       35 CALL                             R1 0 0
       36 GETIMPORT                        R1 K10 [script]
       38 GETTABLEKS                       R1 R1 K11 ["Parent"]
       40 GETTABLEKS                       R1 R1 K11 ["Parent"]
       42 GETIMPORT                        R2 K8 [require]
       44 GETTABLEKS                       R3 R1 K14 ["Packages"]
       46 GETTABLEKS                       R3 R3 K15 ["TestLoader"]
       48 CALL                             R2 1 1
       49 GETTABLEKS                       R3 R2 K16 ["launch"]
       51 LOADK                            R4 K17 ["DynamicHeadExportTool"]
       52 GETTABLEKS                       R5 R1 K18 ["Src"]
       54 CALL                             R3 2 0
       55 GETTABLEKS                       R3 R2 K19 ["isCli"]
       57 CALL                             R3 0 1
       58 JUMPIFNOT                        R3 ; [+1]
       59 RETURN                           R0 0
       60 GETIMPORT                        R3 K1 [game]
       62 LOADK                            R5 K20 ["DebugDynamicHeadExportTool"]
       63 NAMECALL                         R3 R3 K21 ["GetFastFlag"]
       65 CALL                             R3 2 1
       66 JUMPIF                           R3 ; [+1]
       67 RETURN                           R0 0
       68 GETIMPORT                        R3 K8 [require]
       70 GETTABLEKS                       R4 R1 K14 ["Packages"]
       72 GETTABLEKS                       R4 R4 K22 ["React"]
       74 CALL                             R3 1 1
       75 GETIMPORT                        R4 K8 [require]
       77 GETTABLEKS                       R5 R1 K14 ["Packages"]
       79 GETTABLEKS                       R5 R5 K23 ["ReactRoblox"]
       81 CALL                             R4 1 1
       82 GETIMPORT                        R5 K8 [require]
       84 GETTABLEKS                       R6 R1 K14 ["Packages"]
       86 GETTABLEKS                       R6 R6 K24 ["Framework"]
       88 CALL                             R5 1 1
       89 GETIMPORT                        R6 K8 [require]
       91 GETTABLEKS                       R7 R1 K18 ["Src"]
       93 GETTABLEKS                       R7 R7 K25 ["PluginWrapper"]
       95 CALL                             R6 1 1
       96 LOADNIL                          R7
       97 LOADNIL                          R8
       98 GETTABLEKS                       R9 R2 K26 ["hasInternalPermission"]
      100 CALL                             R9 0 1
      101 JUMPIFNOT                        R9 ; [+15]
      102 GETIMPORT                        R9 K8 [require]
      104 GETTABLEKS                       R10 R1 K14 ["Packages"]
      106 GETTABLEKS                       R10 R10 K27 ["DeveloperTools"]
      108 CALL                             R9 1 1
      109 GETTABLEKS                       R9 R9 K28 ["forPlugin"]
      111 GETTABLEKS                       R10 R1 K29 ["Name"]
      113 GETIMPORT                        R11 K6 [plugin]
      115 CALL                             R9 2 1
      116 MOVE                             R8 R9
      117 NEWCLOSURE                       R9 P0
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R6
      121 CAPTURE                          REF R7
      122 CAPTURE                          VAL R4
      123 CAPTURE                          REF R8
      124 GETIMPORT                        R10 K6 [plugin]
      126 GETTABLEKS                       R10 R10 K30 ["Unloading"]
      128 NEWCLOSURE                       R12 P1
      129 CAPTURE                          REF R8
      130 CAPTURE                          REF R7
      131 NAMECALL                         R10 R10 K31 ["Connect"]
      133 CALL                             R10 2 0
      134 MOVE                             R10 R9
      135 CALL                             R10 0 0
      136 CLOSEUPVALS                      R7
      137 RETURN                           R0 0
