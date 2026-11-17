PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginActions"]
        4 NEWTABLE                         R2 0 2
        6 LOADK                            R5 K2 ["ClearTangent"]
        7 NAMECALL                         R3 R1 K3 ["get"]
        9 CALL                             R3 2 1
       10 LOADK                            R6 K4 ["ZeroTangent"]
       11 NAMECALL                         R4 R1 K3 ["get"]
       13 CALL                             R4 2 -1
       14 SETLIST                          R2 R3 -1 [1]
       16 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+23]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R1 K0 ["Enabled"]
        4 GETTABLEKS                       R4 R0 K1 ["Actions"]
        6 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R3 K4 [table.insert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R4 R0 K5 ["Connections"]
       14 GETTABLEKS                       R5 R1 K6 ["Triggered"]
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R5 K7 ["Connect"]
       19 CALL                             R5 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnSetTangent"]
        5 GETTABLEKS                       R2 R0 K2 ["InstanceName"]
        7 GETTABLEKS                       R3 R0 K3 ["Path"]
        9 GETTABLEKS                       R4 R0 K4 ["Tick"]
       11 GETTABLEKS                       R5 R0 K5 ["Side"]
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnSetTangent"]
        5 GETTABLEKS                       R2 R0 K2 ["InstanceName"]
        7 GETTABLEKS                       R3 R0 K3 ["Path"]
        9 GETTABLEKS                       R4 R0 K4 ["Tick"]
       11 GETTABLEKS                       R5 R0 K5 ["Side"]
       13 LOADN                            R6 0
       14 CALL                             R1 5 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginActions"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K2 ["Connections"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R0 K3 ["Actions"]
       12 LOADK                            R6 K4 ["ClearTangent"]
       13 NAMECALL                         R4 R1 K5 ["get"]
       15 CALL                             R4 2 1
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R2 R0 K6 ["addAction"]
       20 CALL                             R2 3 0
       21 LOADK                            R6 K7 ["ZeroTangent"]
       22 NAMECALL                         R4 R1 K5 ["get"]
       24 CALL                             R4 2 1
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R2 R0 K6 ["addAction"]
       29 CALL                             R2 3 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ShowMenu"]
        4 GETTABLEKS                       R3 R0 K2 ["Actions"]
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K3 ["PluginActions"]
       10 GETUPVAL                         R5 0
       11 MOVE                             R6 R4
       12 CALL                             R5 1 1
       13 JUMPIF                           R5 ; [+26]
       14 JUMPIFEQKNIL                     R3 ; [+25]
       16 GETIMPORT                        R5 K5 [ipairs]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 3
       20 FORGPREP_INEXT                   R5
       21 LOADB                            R10 0
       22 SETTABLEKS                       R10 R9 K6 ["Enabled"]
       24 FORGLOOP                         R5 2 [inext] ; [-4]
       26 LOADK                            R7 K7 ["ClearTangent"]
       27 NAMECALL                         R5 R4 K8 ["get"]
       29 CALL                             R5 2 1
       30 LOADB                            R6 1
       31 SETTABLEKS                       R6 R5 K6 ["Enabled"]
       33 LOADK                            R7 K9 ["ZeroTangent"]
       34 NAMECALL                         R5 R4 K8 ["get"]
       36 CALL                             R5 2 1
       37 LOADB                            R6 1
       38 SETTABLEKS                       R6 R5 K6 ["Enabled"]
       40 JUMPIFNOT                        R2 ; [+16]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K10 ["createElement"]
       44 GETUPVAL                         R6 2
       45 DUPTABLE                         R7 K12 [{"Actions", "OnMenuOpened"}]
       46 NAMECALL                         R8 R0 K13 ["makeMenuActions"]
       48 CALL                             R8 1 1
       49 SETTABLEKS                       R8 R7 K2 ["Actions"]
       51 GETTABLEKS                       R8 R1 K11 ["OnMenuOpened"]
       53 SETTABLEKS                       R8 R7 K11 ["OnMenuOpened"]
       55 CALL                             R5 2 1
       56 JUMPIF                           R5 ; [+1]
       57 LOADNIL                          R5
       58 RETURN                           R5 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Connections"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETIMPORT                        R1 K2 [ipairs]
        5 GETTABLEKS                       R2 R0 K0 ["Connections"]
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 NAMECALL                         R6 R5 K3 ["Disconnect"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 [inext] ; [-4]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K0 ["Connections"]
       18 GETTABLEKS                       R1 R0 K4 ["Actions"]
       20 JUMPIFNOT                        R1 ; [+11]
       21 GETIMPORT                        R1 K2 [ipairs]
       23 GETTABLEKS                       R2 R0 K4 ["Actions"]
       25 CALL                             R1 1 3
       26 FORGPREP_INEXT                   R1
       27 LOADB                            R6 0
       28 SETTABLEKS                       R6 R5 K5 ["Enabled"]
       30 FORGLOOP                         R1 2 [inext] ; [-4]
       32 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Status"]
        2 DUPTABLE                         R2 K5 [{"InstanceName", "Path", "Tick", "Side"}]
        3 GETTABLEKS                       R3 R1 K6 ["RightClickContextInfo"]
        5 GETTABLEKS                       R3 R3 K1 ["InstanceName"]
        7 SETTABLEKS                       R3 R2 K1 ["InstanceName"]
        9 GETTABLEKS                       R3 R1 K6 ["RightClickContextInfo"]
       11 GETTABLEKS                       R3 R3 K2 ["Path"]
       13 SETTABLEKS                       R3 R2 K2 ["Path"]
       15 GETTABLEKS                       R3 R1 K6 ["RightClickContextInfo"]
       17 GETTABLEKS                       R3 R3 K3 ["Tick"]
       19 SETTABLEKS                       R3 R2 K3 ["Tick"]
       21 GETTABLEKS                       R3 R1 K6 ["RightClickContextInfo"]
       23 GETTABLEKS                       R3 R3 K4 ["Side"]
       25 SETTABLEKS                       R3 R2 K4 ["Side"]
       27 RETURN                           R2 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["isEmpty"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Components"]
       36 GETTABLEKS                       R5 R5 K13 ["ContextMenu"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R6 K14 ["Framework"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       48 GETTABLEKS                       R7 R6 K16 ["withContext"]
       50 GETTABLEKS                       R8 R1 K17 ["PureComponent"]
       52 LOADK                            R10 K18 ["TangentActions"]
       53 NAMECALL                         R8 R8 K19 ["extend"]
       55 CALL                             R8 2 1
       56 DUPCLOSURE                       R9 K20 [PROTO_0]
       57 SETTABLEKS                       R9 R8 K21 ["makeMenuActions"]
       59 DUPCLOSURE                       R9 K22 [PROTO_1]
       60 SETTABLEKS                       R9 R8 K23 ["addAction"]
       62 DUPCLOSURE                       R9 K24 [PROTO_4]
       63 SETTABLEKS                       R9 R8 K25 ["didMount"]
       65 DUPCLOSURE                       R9 K26 [PROTO_5]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R9 R8 K27 ["render"]
       71 DUPCLOSURE                       R9 K28 [PROTO_6]
       72 SETTABLEKS                       R9 R8 K29 ["willUnmount"]
       74 MOVE                             R9 R7
       75 DUPTABLE                         R10 K31 [{"PluginActions"}]
       76 GETTABLEKS                       R11 R6 K30 ["PluginActions"]
       78 SETTABLEKS                       R11 R10 K30 ["PluginActions"]
       80 CALL                             R9 1 1
       81 MOVE                             R10 R8
       82 CALL                             R9 1 1
       83 MOVE                             R8 R9
       84 DUPCLOSURE                       R9 K32 [PROTO_7]
       85 DUPCLOSURE                       R10 K33 [PROTO_8]
       86 GETTABLEKS                       R11 R2 K34 ["connect"]
       88 MOVE                             R12 R9
       89 MOVE                             R13 R10
       90 CALL                             R11 2 1
       91 MOVE                             R12 R8
       92 CALL                             R11 1 -1
       93 RETURN                           R11 -1
