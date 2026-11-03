PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["Folder"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+35]
        9 GETTABLEKS                       R7 R6 K3 ["Name"]
       11 JUMPIFNOTEQKS                    R7 K4 ["RpcCall"] ; [+32]
       13 NAMECALL                         R7 R6 K5 ["GetChildren"]
       15 CALL                             R7 1 3
       16 FORGPREP                         R7
       17 LOADK                            R14 K6 ["ModuleScript"]
       18 NAMECALL                         R12 R11 K2 ["IsA"]
       20 CALL                             R12 2 1
       21 JUMPIFNOT                        R12 ; [+20]
       22 GETIMPORT                        R12 K8 [require]
       24 MOVE                             R13 R11
       25 CALL                             R12 1 1
       26 GETTABLEKS                       R13 R12 K9 ["Init"]
       28 JUMPIFEQKNIL                     R13 ; [+6]
       30 MOVE                             R15 R1
       31 NAMECALL                         R13 R12 K9 ["Init"]
       33 CALL                             R13 2 0
       34 JUMP                             ; [+7]
       35 GETIMPORT                        R13 K11 [warn]
       37 LOADK                            R14 K12 ["RpcCall module missing Init function"]
       38 NAMECALL                         R15 R11 K13 ["GetFullName"]
       40 CALL                             R15 1 -1
       41 CALL                             R13 -1 0
       42 FORGLOOP                         R7 2 ; [-26]
       44 FORGLOOP                         R2 2 ; [-41]
       46 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["new"]
       11 GETIMPORT                        R1 K3 [plugin]
       13 CALL                             R0 1 1
       14 SETUPVAL                         R0 0
       15 GETUPVAL                         R0 2
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K4 ["Src"]
       19 GETTABLEKS                       R1 R1 K5 ["Queries"]
       21 GETUPVAL                         R2 0
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKB                    R0 TRUE ; [+6]
        3 GETIMPORT                        R0 K2 [task.wait]
        5 LOADN                            R1 1
        6 CALL                             R0 1 0
        7 JUMPBACK                         ; [-8]
        8 RETURN                           R0 0

PROTO_3:
        0 SETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETUPVAL                         R1 1
        3 GETIMPORT                        R1 K2 [task.spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R1 2
       11 NAMECALL                         R1 R1 K3 ["Disconnect"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETUPVAL                         R1 2
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K4 ["new"]
       19 GETIMPORT                        R2 K6 [plugin]
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 2
       23 GETUPVAL                         R1 4
       24 GETUPVAL                         R2 5
       25 GETTABLEKS                       R2 R2 K7 ["Src"]
       27 GETTABLEKS                       R2 R2 K8 ["Queries"]
       29 GETUPVAL                         R3 2
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 2
       12 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 LOADNIL                          R1
        3 SETUPVAL                         R1 1
        4 GETUPVAL                         R1 2
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 2
        7 NAMECALL                         R1 R1 K0 ["Disconnect"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 2
       12 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIFNOT                        R0 ; [+32]
        5 GETUPVAL                         R0 0
        6 SETUPVAL                         R0 1
        7 LOADB                            R1 1
        8 SETUPVAL                         R1 2
        9 GETIMPORT                        R1 K5 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 3
       15 JUMPIFNOT                        R1 ; [+6]
       16 GETUPVAL                         R1 3
       17 NAMECALL                         R1 R1 K6 ["Disconnect"]
       19 CALL                             R1 1 0
       20 LOADNIL                          R1
       21 SETUPVAL                         R1 3
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K7 ["new"]
       25 GETIMPORT                        R2 K1 [plugin]
       27 CALL                             R1 1 1
       28 SETUPVAL                         R1 3
       29 GETUPVAL                         R1 5
       30 GETUPVAL                         R2 6
       31 GETTABLEKS                       R2 R2 K8 ["Src"]
       33 GETTABLEKS                       R2 R2 K9 ["Queries"]
       35 GETUPVAL                         R3 3
       36 CALL                             R1 2 0
       37 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["CurrentDataModelTypeAboutToChange"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 0
       11 GETTABLEKS                       R1 R0 K2 ["CurrentDataModelTypeChanged"]
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 NAMECALL                         R1 R1 K1 ["Connect"]
       23 CALL                             R1 2 0
       24 GETIMPORT                        R1 K4 [plugin]
       26 GETTABLEKS                       R1 R1 K5 ["HostDataModelTypeIsCurrent"]
       28 JUMPIFNOT                        R1 ; [+31]
       29 SETUPVAL                         R0 1
       30 LOADB                            R1 1
       31 SETUPVAL                         R1 0
       32 GETIMPORT                        R1 K8 [task.spawn]
       34 NEWCLOSURE                       R2 P2
       35 CAPTURE                          UPVAL U0
       36 CALL                             R1 1 0
       37 GETUPVAL                         R1 2
       38 JUMPIFNOT                        R1 ; [+6]
       39 GETUPVAL                         R1 2
       40 NAMECALL                         R1 R1 K9 ["Disconnect"]
       42 CALL                             R1 1 0
       43 LOADNIL                          R1
       44 SETUPVAL                         R1 2
       45 GETUPVAL                         R1 3
       46 GETTABLEKS                       R1 R1 K10 ["new"]
       48 GETIMPORT                        R2 K4 [plugin]
       50 CALL                             R1 1 1
       51 SETUPVAL                         R1 2
       52 GETUPVAL                         R1 4
       53 GETUPVAL                         R2 5
       54 GETTABLEKS                       R2 R2 K11 ["Src"]
       56 GETTABLEKS                       R2 R2 K12 ["Queries"]
       58 GETUPVAL                         R3 2
       59 CALL                             R1 2 0
       60 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 2
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["SceneAnalysis"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["SceneAnalysis"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K11 ["Src"]
       33 GETTABLEKS                       R3 R3 K13 ["Util"]
       35 GETTABLEKS                       R3 R3 K14 ["RpcCallServer"]
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K7 [require]
       40 GETTABLEKS                       R4 R0 K15 ["Bin"]
       42 GETTABLEKS                       R4 R4 K16 ["Common"]
       44 GETTABLEKS                       R4 R4 K17 ["defineLuaFlags"]
       46 CALL                             R3 1 1
       47 LOADNIL                          R4
       48 GETTABLEKS                       R5 R3 K18 ["getFFlagSceneAnalysisRemovePerformanceToolsBridge"]
       50 CALL                             R5 0 1
       51 JUMPIF                           R5 ; [+7]
       52 GETIMPORT                        R5 K1 [plugin]
       54 LOADK                            R7 K19 ["PerformanceToolsBridge"]
       55 NAMECALL                         R5 R5 K20 ["GetPluginComponent"]
       57 CALL                             R5 2 1
       58 MOVE                             R4 R5
       59 GETTABLEKS                       R5 R3 K21 ["getFFlagEnableRIDE11651"]
       61 CALL                             R5 0 1
       62 JUMPIF                           R5 ; [+1]
       63 RETURN                           R0 0
       64 LOADNIL                          R5
       65 LOADNIL                          R6
       66 DUPCLOSURE                       R7 K22 [PROTO_0]
       67 NEWCLOSURE                       R8 P1
       68 CAPTURE                          REF R6
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R0
       72 LOADB                            R9 0
       73 NEWCLOSURE                       R10 P2
       74 CAPTURE                          REF R5
       75 CAPTURE                          REF R9
       76 CAPTURE                          REF R6
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R0
       80 NEWCLOSURE                       R11 P3
       81 CAPTURE                          REF R9
       82 CAPTURE                          REF R5
       83 CAPTURE                          REF R6
       84 NEWCLOSURE                       R12 P4
       85 CAPTURE                          REF R9
       86 CAPTURE                          REF R5
       87 CAPTURE                          REF R6
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R0
       91 GETTABLEKS                       R13 R3 K23 ["getFFlagSceneAnalysisMdiDataModelPicker"]
       93 CALL                             R13 0 1
       94 JUMPIFNOT                        R13 ; [+30]
       95 JUMPIFNOT                        R6 ; [+4]
       96 NAMECALL                         R13 R6 K24 ["Disconnect"]
       98 CALL                             R13 1 0
       99 LOADNIL                          R6
      100 GETTABLEKS                       R13 R2 K25 ["new"]
      102 GETIMPORT                        R14 K1 [plugin]
      104 CALL                             R13 1 1
      105 MOVE                             R6 R13
      106 MOVE                             R13 R7
      107 GETTABLEKS                       R14 R0 K11 ["Src"]
      109 GETTABLEKS                       R14 R14 K26 ["Queries"]
      111 MOVE                             R15 R6
      112 CALL                             R13 2 0
      113 GETIMPORT                        R13 K1 [plugin]
      115 GETTABLEKS                       R13 R13 K27 ["Unloading"]
      117 NEWCLOSURE                       R15 P5
      118 CAPTURE                          REF R9
      119 CAPTURE                          REF R5
      120 CAPTURE                          REF R6
      121 NAMECALL                         R13 R13 K28 ["Connect"]
      123 CALL                             R13 2 0
      124 JUMP                             ; [+8]
      125 GETIMPORT                        R13 K1 [plugin]
      127 GETTABLEKS                       R13 R13 K29 ["MultipleDocumentInterfaceInstance"]
      129 MOVE                             R14 R12
      130 GETTABLEKS                       R15 R13 K30 ["FocusedDataModelSession"]
      132 CALL                             R14 1 0
      133 GETIMPORT                        R13 K7 [require]
      135 GETTABLEKS                       R14 R0 K15 ["Bin"]
      137 GETTABLEKS                       R14 R14 K16 ["Common"]
      139 GETTABLEKS                       R14 R14 K31 ["pluginType"]
      141 CALL                             R13 1 1
      142 GETTABLEKS                       R14 R13 K32 ["get"]
      144 CALL                             R14 0 1
      145 GETTABLEKS                       R15 R13 K33 ["Asset"]
      147 JUMPIFEQ                         R14 R15 ; [+3]
      149 CLOSEUPVALS                      R5
      150 RETURN                           R0 0
      151 GETIMPORT                        R14 K7 [require]
      153 GETTABLEKS                       R15 R0 K15 ["Bin"]
      155 GETTABLEKS                       R15 R15 K16 ["Common"]
      157 GETTABLEKS                       R15 R15 K34 ["setup"]
      159 CALL                             R14 1 1
      160 GETIMPORT                        R15 K7 [require]
      162 GETTABLEKS                       R16 R0 K15 ["Bin"]
      164 GETTABLEKS                       R16 R16 K16 ["Common"]
      166 GETTABLEKS                       R16 R16 K35 ["setupMain"]
      168 CALL                             R15 1 1
      169 MOVE                             R16 R14
      170 GETIMPORT                        R17 K1 [plugin]
      172 MOVE                             R18 R15
      173 CALL                             R16 2 0
      174 CLOSEUPVALS                      R5
      175 RETURN                           R0 0
