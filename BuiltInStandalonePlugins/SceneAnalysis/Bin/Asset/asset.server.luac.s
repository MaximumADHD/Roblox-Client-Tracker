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
       38 GETIMPORT                        R3 K1 [plugin]
       40 LOADK                            R5 K15 ["PerformanceToolsBridge"]
       41 NAMECALL                         R3 R3 K16 ["GetPluginComponent"]
       43 CALL                             R3 2 1
       44 GETIMPORT                        R4 K7 [require]
       46 GETTABLEKS                       R5 R0 K17 ["Bin"]
       48 GETTABLEKS                       R5 R5 K18 ["Common"]
       50 GETTABLEKS                       R5 R5 K19 ["defineLuaFlags"]
       52 CALL                             R4 1 1
       53 GETTABLEKS                       R5 R4 K20 ["getFFlagEnableRIDE11651"]
       55 CALL                             R5 0 1
       56 JUMPIF                           R5 ; [+1]
       57 RETURN                           R0 0
       58 LOADNIL                          R5
       59 LOADNIL                          R6
       60 DUPCLOSURE                       R7 K21 [PROTO_0]
       61 NEWCLOSURE                       R8 P1
       62 CAPTURE                          REF R6
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R0
       66 LOADB                            R9 0
       67 NEWCLOSURE                       R10 P2
       68 CAPTURE                          REF R5
       69 CAPTURE                          REF R9
       70 CAPTURE                          REF R6
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R0
       74 NEWCLOSURE                       R11 P3
       75 CAPTURE                          REF R9
       76 CAPTURE                          REF R5
       77 CAPTURE                          REF R6
       78 NEWCLOSURE                       R12 P4
       79 CAPTURE                          REF R9
       80 CAPTURE                          REF R5
       81 CAPTURE                          REF R6
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R0
       85 GETIMPORT                        R13 K1 [plugin]
       87 GETTABLEKS                       R13 R13 K22 ["MultipleDocumentInterfaceInstance"]
       89 MOVE                             R14 R12
       90 GETTABLEKS                       R15 R13 K23 ["FocusedDataModelSession"]
       92 CALL                             R14 1 0
       93 GETIMPORT                        R14 K7 [require]
       95 GETTABLEKS                       R15 R0 K17 ["Bin"]
       97 GETTABLEKS                       R15 R15 K18 ["Common"]
       99 GETTABLEKS                       R15 R15 K24 ["pluginType"]
      101 CALL                             R14 1 1
      102 GETTABLEKS                       R15 R14 K25 ["get"]
      104 CALL                             R15 0 1
      105 GETTABLEKS                       R16 R14 K26 ["Asset"]
      107 JUMPIFEQ                         R15 R16 ; [+3]
      109 CLOSEUPVALS                      R5
      110 RETURN                           R0 0
      111 GETIMPORT                        R15 K7 [require]
      113 GETTABLEKS                       R16 R0 K17 ["Bin"]
      115 GETTABLEKS                       R16 R16 K18 ["Common"]
      117 GETTABLEKS                       R16 R16 K27 ["setup"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K7 [require]
      122 GETTABLEKS                       R17 R0 K17 ["Bin"]
      124 GETTABLEKS                       R17 R17 K18 ["Common"]
      126 GETTABLEKS                       R17 R17 K28 ["setupMain"]
      128 CALL                             R16 1 1
      129 MOVE                             R17 R15
      130 GETIMPORT                        R18 K1 [plugin]
      132 MOVE                             R19 R16
      133 CALL                             R17 2 0
      134 CLOSEUPVALS                      R5
      135 RETURN                           R0 0
