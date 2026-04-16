PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["FastFlag"]
        8 JUMPIFNOT                        R7 ; [+15]
        9 GETUPVAL                         R7 0
       10 MOVE                             R8 R6
       11 CALL                             R7 1 1
       12 JUMPIF                           R7 ; [+8]
       13 LOADN                            R10 1
       14 FASTCALL3                        TABLE_INSERT R1 R10 R5
       16 MOVE                             R9 R1
       17 MOVE                             R11 R5
       18 GETIMPORT                        R8 K3 [table.insert]
       20 CALL                             R8 3 0
       21 LOADNIL                          R8
       22 SETTABLEKS                       R8 R6 K0 ["FastFlag"]
       24 GETTABLEKS                       R7 R6 K4 ["Children"]
       26 JUMPIFNOT                        R7 ; [+4]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R8 R6 K4 ["Children"]
       30 CALL                             R7 1 0
       31 FORGLOOP                         R2 2 ; [-26]
       33 MOVE                             R2 R1
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 GETIMPORT                        R7 K6 [table.remove]
       39 MOVE                             R8 R0
       40 MOVE                             R9 R6
       41 CALL                             R7 2 0
       42 FORGLOOP                         R2 2 ; [-6]
       44 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Layout"]
        4 GETTABLEKS                       R2 R3 K1 ["TabLayout"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["RibbonConfiguration"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R0 R0 K2 ["ReloadAndGetRibbonDefinitionAsync"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 3
       13 MOVE                             R3 R0
       14 CALL                             R1 2 1
       15 MOVE                             R0 R1
       16 GETTABLEKS                       R1 R0 K3 ["TabControls"]
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 FORGPREP                         R1
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R7 R5 K4 ["Controls"]
       24 GETUPVAL                         R9 5
       25 GETTABLEKS                       R8 R9 K5 ["wrap"]
       27 CALL                             R6 2 0
       28 GETUPVAL                         R6 6
       29 CALL                             R6 0 1
       30 JUMPIFNOT                        R6 ; [+6]
       31 GETUPVAL                         R6 7
       32 GETTABLEKS                       R8 R5 K4 ["Controls"]
       34 NAMECALL                         R6 R6 K6 ["watchControls"]
       36 CALL                             R6 2 0
       37 FORGLOOP                         R1 2 ; [-17]
       39 GETTABLEKS                       R1 R0 K7 ["MezzanineControls"]
       41 LOADNIL                          R2
       42 LOADNIL                          R3
       43 FORGPREP                         R1
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R7 R5 K4 ["Controls"]
       47 GETUPVAL                         R9 5
       48 GETTABLEKS                       R8 R9 K5 ["wrap"]
       50 CALL                             R6 2 0
       51 GETUPVAL                         R6 6
       52 CALL                             R6 0 1
       53 JUMPIFNOT                        R6 ; [+6]
       54 GETUPVAL                         R6 7
       55 GETTABLEKS                       R8 R5 K4 ["Controls"]
       57 NAMECALL                         R6 R6 K6 ["watchControls"]
       59 CALL                             R6 2 0
       60 FORGLOOP                         R1 2 ; [-17]
       62 GETUPVAL                         R1 8
       63 MOVE                             R2 R0
       64 CALL                             R1 1 1
       65 GETUPVAL                         R3 9
       66 GETTABLEKS                       R2 R3 K8 ["OnDefinitionLoad"]
       68 JUMPIFNOT                        R2 ; [+5]
       69 GETUPVAL                         R3 9
       70 GETTABLEKS                       R2 R3 K8 ["OnDefinitionLoad"]
       72 MOVE                             R3 R1
       73 CALL                             R2 1 0
       74 GETUPVAL                         R2 10
       75 MOVE                             R3 R1
       76 CALL                             R2 1 0
       77 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CustomTools"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R0 R3 K0 ["CustomTools"]
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 FORGPREP                         R0
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R6 R4 K1 ["Controls"]
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R7 R8 K2 ["wrap"]
       17 CALL                             R5 2 0
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R7 R4 K1 ["Controls"]
       21 NAMECALL                         R5 R5 K3 ["watchControls"]
       23 CALL                             R5 2 0
       24 FORGLOOP                         R0 2 ; [-14]
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["Thread"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 GETTABLEKS                       R0 R1 K2 ["LatestDefinition"]
       11 GETUPVAL                         R1 1
       12 LOADK                            R3 K3 ["RibbonConfiguration"]
       13 NAMECALL                         R1 R1 K4 ["GetPluginComponent"]
       15 CALL                             R1 2 1
       16 MOVE                             R3 R0
       17 NAMECALL                         R1 R1 K5 ["SaveRibbonDefinitionAsync"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 SETTABLEKS                       R0 R1 K1 ["LatestDefinition"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 GETTABLEKS                       R1 R2 K2 ["Thread"]
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["current"]
       15 GETIMPORT                        R2 K5 [task.delay]
       17 GETUPVAL                         R3 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U2
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K2 ["Thread"]
       24 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 GETTABLEKS                       R0 R1 K1 ["Thread"]
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R0 1
        7 LOADK                            R2 K2 ["RibbonConfiguration"]
        8 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["current"]
       14 GETTABLEKS                       R2 R3 K4 ["LatestDefinition"]
       16 NAMECALL                         R0 R0 K5 ["SaveRibbonDefinitionAsync"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 GETTABLEKS                       R0 R1 K1 ["Thread"]
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETIMPORT                        R0 K4 [task.cancel]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["current"]
       11 GETTABLEKS                       R1 R2 K1 ["Thread"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 NAMECALL                         R0 R0 K5 ["Disconnect"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Unloading"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["Once"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Unloading"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Once"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_15:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["TabControls"]
       10 GETTABLE                         R3 R4 R2
       11 JUMPIFEQKNIL                     R3 ; [+5]
       13 GETTABLEKS                       R3 R0 K2 ["Type"]
       15 JUMPIFEQKS                       R3 K3 ["Custom"] ; [+11]
       17 GETIMPORT                        R3 K5 [warn]
       19 LOADK                            R5 K6 ["Cannot add control to tab %*"]
       20 MOVE                             R7 R2
       21 NAMECALL                         R5 R5 K7 ["format"]
       23 CALL                             R5 2 1
       24 MOVE                             R4 R5
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 2
       28 GETUPVAL                         R4 1
       29 DUPTABLE                         R5 K8 [{"TabControls"}]
       30 NEWTABLE                         R6 1 0
       32 DUPTABLE                         R7 K10 [{"Controls"}]
       33 GETUPVAL                         R8 3
       34 NEWTABLE                         R9 0 0
       36 GETUPVAL                         R13 1
       37 GETTABLEKS                       R12 R13 K1 ["TabControls"]
       39 GETTABLE                         R11 R12 R2
       40 GETTABLEKS                       R10 R11 K9 ["Controls"]
       42 MOVE                             R11 R1
       43 CALL                             R8 3 1
       44 SETTABLEKS                       R8 R7 K9 ["Controls"]
       46 SETTABLE                         R7 R6 R2
       47 SETTABLEKS                       R6 R5 K1 ["TabControls"]
       49 CALL                             R3 2 1
       50 GETUPVAL                         R4 4
       51 MOVE                             R5 R3
       52 CALL                             R4 1 0
       53 GETUPVAL                         R4 5
       54 MOVE                             R5 R3
       55 CALL                             R4 1 0
       56 GETUPVAL                         R4 6
       57 MOVE                             R5 R3
       58 CALL                             R4 1 0
       59 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R0 K2 [{"Identifier", "VisibleTabIndex"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Identifier"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K3 ["Layout"]
        7 GETTABLEKS                       R2 R3 K4 ["TabLayout"]
        9 LENGTH                           R1 R2
       10 SETTABLEKS                       R1 R0 K1 ["VisibleTabIndex"]
       12 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 2
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R6 R2 K0 ["Layout"]
        8 GETTABLEKS                       R5 R6 K1 ["TabLayout"]
       10 DUPTABLE                         R6 K4 [{"Identifier", "Visible"}]
       11 SETTABLEKS                       R3 R6 K2 ["Identifier"]
       13 LOADB                            R7 1
       14 SETTABLEKS                       R7 R6 K3 ["Visible"]
       16 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       18 GETIMPORT                        R4 K7 [table.insert]
       20 CALL                             R4 2 0
       21 GETTABLEKS                       R4 R2 K8 ["TabControls"]
       23 GETUPVAL                         R5 3
       24 MOVE                             R6 R3
       25 CALL                             R5 1 1
       26 DUPTABLE                         R6 K11 [{"Controls", "Name"}]
       27 MOVE                             R7 R1
       28 JUMPIF                           R7 ; [+2]
       29 NEWTABLE                         R7 0 0
       31 SETTABLEKS                       R7 R6 K9 ["Controls"]
       33 SETTABLEKS                       R0 R6 K10 ["Name"]
       35 SETTABLE                         R6 R4 R5
       36 GETIMPORT                        R4 K13 [table.freeze]
       38 MOVE                             R5 R2
       39 CALL                             R4 1 0
       40 GETUPVAL                         R4 4
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CALL                             R4 1 0
       45 GETUPVAL                         R4 5
       46 MOVE                             R5 R2
       47 CALL                             R4 1 0
       48 GETUPVAL                         R4 6
       49 MOVE                             R5 R2
       50 CALL                             R4 1 0
       51 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R8 2
        5 GETTABLEKS                       R7 R8 K0 ["TabControls"]
        7 GETTABLE                         R6 R7 R3
        8 GETTABLEKS                       R5 R6 K1 ["Controls"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 3
       12 MOVE                             R6 R4
       13 CALL                             R5 1 0
       14 JUMPIFNOT                        R2 ; [+22]
       15 GETUPVAL                         R6 4
       16 GETTABLEKS                       R5 R6 K2 ["CustomTools"]
       18 JUMPIFNOT                        R5 ; [+18]
       19 GETUPVAL                         R5 5
       20 GETUPVAL                         R7 6
       21 GETTABLEKS                       R6 R7 K3 ["wrap"]
       23 GETUPVAL                         R7 7
       24 NAMECALL                         R7 R7 K4 ["GetUri"]
       26 CALL                             R7 1 -1
       27 CALL                             R6 -1 1
       28 MOVE                             R7 R3
       29 MOVE                             R8 R4
       30 GETIMPORT                        R9 K7 [table.clone]
       32 GETUPVAL                         R11 4
       33 GETTABLEKS                       R10 R11 K2 ["CustomTools"]
       35 CALL                             R9 1 -1
       36 CALL                             R5 -1 0
       37 GETUPVAL                         R5 8
       38 MOVE                             R6 R1
       39 MOVE                             R7 R4
       40 CALL                             R5 2 0
       41 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 CALL                             R2 1 1
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R1
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 3
        8 MOVE                             R6 R4
        9 CALL                             R5 1 1
       10 GETTABLEKS                       R9 R2 K0 ["Layout"]
       12 GETTABLEKS                       R6 R9 K1 ["TabLayout"]
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 GETTABLEKS                       R12 R10 K2 ["Identifier"]
       19 GETTABLEKS                       R11 R12 K3 ["Type"]
       21 JUMPIFNOTEQKS                    R11 K4 ["Custom"] ; [+15]
       23 GETTABLEKS                       R12 R10 K2 ["Identifier"]
       25 GETTABLEKS                       R11 R12 K5 ["Filename"]
       27 JUMPIFNOTEQ                      R11 R0 ; [+9]
       29 GETUPVAL                         R11 3
       30 GETTABLEKS                       R12 R10 K2 ["Identifier"]
       32 CALL                             R11 1 1
       33 MOVE                             R3 R11
       34 SETTABLEKS                       R4 R10 K2 ["Identifier"]
       36 JUMP                             ; [+2]
       37 FORGLOOP                         R6 2 ; [-21]
       39 JUMPIF                           R3 ; [+2]
       40 LOADNIL                          R6
       41 RETURN                           R6 1
       42 GETTABLEKS                       R6 R2 K6 ["TabControls"]
       44 GETTABLEKS                       R8 R2 K6 ["TabControls"]
       46 GETTABLE                         R7 R8 R3
       47 SETTABLE                         R7 R6 R5
       48 GETTABLEKS                       R7 R2 K6 ["TabControls"]
       50 GETTABLE                         R6 R7 R5
       51 SETTABLEKS                       R1 R6 K7 ["Name"]
       53 GETTABLEKS                       R6 R2 K6 ["TabControls"]
       55 LOADNIL                          R7
       56 SETTABLE                         R7 R6 R3
       57 GETIMPORT                        R6 K10 [table.freeze]
       59 MOVE                             R7 R2
       60 CALL                             R6 1 0
       61 GETUPVAL                         R6 4
       62 MOVE                             R7 R2
       63 CALL                             R6 1 0
       64 GETUPVAL                         R6 5
       65 MOVE                             R7 R2
       66 CALL                             R6 1 0
       67 RETURN                           R4 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["TabControls"]
        6 GETTABLE                         R3 R4 R2
        7 JUMPIFEQKNIL                     R3 ; [+5]
        9 GETTABLEKS                       R3 R0 K1 ["Type"]
       11 JUMPIFEQKS                       R3 K2 ["Custom"] ; [+11]
       13 GETIMPORT                        R3 K4 [warn]
       15 LOADK                            R5 K5 ["Cannot remove control from tab %*"]
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R5 K6 ["format"]
       19 CALL                             R5 2 1
       20 MOVE                             R4 R5
       21 CALL                             R3 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 2
       24 GETUPVAL                         R4 1
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [table.remove]
       28 GETTABLEKS                       R7 R3 K0 ["TabControls"]
       30 GETTABLE                         R6 R7 R2
       31 GETTABLEKS                       R5 R6 K10 ["Controls"]
       33 MOVE                             R6 R1
       34 CALL                             R4 2 0
       35 GETUPVAL                         R4 3
       36 MOVE                             R5 R3
       37 CALL                             R4 1 0
       38 GETUPVAL                         R4 4
       39 MOVE                             R5 R3
       40 CALL                             R4 1 0
       41 GETUPVAL                         R4 5
       42 MOVE                             R5 R3
       43 CALL                             R4 1 0
       44 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["Type"]
        4 JUMPIFNOTEQKS                    R2 K1 ["IconButton"] ; [+13]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["Action"]
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K3 ["equals"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K2 ["Action"]
       16 MOVE                             R3 R0
       17 CALL                             R1 2 1
       18 RETURN                           R1 1

PROTO_22:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["TabControls"]
       10 GETTABLE                         R3 R4 R2
       11 JUMPIFEQKNIL                     R3 ; [+5]
       13 GETTABLEKS                       R3 R0 K2 ["Type"]
       15 JUMPIFEQKS                       R3 K3 ["Custom"] ; [+11]
       17 GETIMPORT                        R3 K5 [warn]
       19 LOADK                            R5 K6 ["Cannot remove control from tab %*"]
       20 MOVE                             R7 R2
       21 NAMECALL                         R5 R5 K7 ["format"]
       23 CALL                             R5 2 1
       24 MOVE                             R4 R5
       25 CALL                             R3 1 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 2
       28 GETUPVAL                         R4 1
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R6 R3 K1 ["TabControls"]
       32 GETTABLE                         R5 R6 R2
       33 GETTABLEKS                       R4 R5 K8 ["Controls"]
       35 LENGTH                           R5 R4
       36 JUMPIFNOTEQKN                    R5 K0 [0] ; [+2]
       38 RETURN                           R0 0
       39 LENGTH                           R7 R4
       40 LOADN                            R5 1
       41 LOADN                            R6 255
       42 FORNPREP                         R5
       43 GETTABLE                         R8 R4 R7
       44 GETUPVAL                         R9 3
       45 MOVE                             R10 R1
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          VAL R8
       48 CAPTURE                          UPVAL U4
       49 CALL                             R9 2 1
       50 JUMPIFNOT                        R9 ; [+5]
       51 GETIMPORT                        R9 K11 [table.remove]
       53 MOVE                             R10 R4
       54 MOVE                             R11 R7
       55 CALL                             R9 2 0
       56 FORNLOOP                         R5
       57 GETUPVAL                         R5 5
       58 MOVE                             R6 R3
       59 CALL                             R5 1 0
       60 GETUPVAL                         R5 6
       61 MOVE                             R6 R3
       62 CALL                             R5 1 0
       63 GETUPVAL                         R5 7
       64 MOVE                             R6 R3
       65 CALL                             R5 1 0
       66 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K0 ["TabControls"]
        6 GETTABLE                         R4 R5 R3
        7 JUMPIFEQKNIL                     R4 ; [+5]
        9 GETTABLEKS                       R4 R0 K1 ["Type"]
       11 JUMPIFEQKS                       R4 K2 ["Custom"] ; [+11]
       13 GETIMPORT                        R4 K4 [warn]
       15 LOADK                            R6 K5 ["Cannot move control on tab %*"]
       16 MOVE                             R8 R3
       17 NAMECALL                         R6 R6 K6 ["format"]
       19 CALL                             R6 2 1
       20 MOVE                             R5 R6
       21 CALL                             R4 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R4 2
       24 GETUPVAL                         R5 1
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R7 R4 K0 ["TabControls"]
       28 GETTABLE                         R6 R7 R3
       29 GETTABLEKS                       R5 R6 K7 ["Controls"]
       31 LOADN                            R6 1
       32 JUMPIFLT                         R1 R6 ; [+4]
       34 LENGTH                           R6 R5
       35 JUMPIFNOTLT                      R6 R1 ; [+12]
       37 GETIMPORT                        R6 K4 [warn]
       39 LOADK                            R8 K8 ["Invalid old control index %* for tab %*"]
       40 MOVE                             R10 R1
       41 MOVE                             R11 R3
       42 NAMECALL                         R8 R8 K6 ["format"]
       44 CALL                             R8 3 1
       45 MOVE                             R7 R8
       46 CALL                             R6 1 0
       47 RETURN                           R0 0
       48 LOADN                            R6 1
       49 JUMPIFLT                         R2 R6 ; [+4]
       51 LENGTH                           R6 R5
       52 JUMPIFNOTLT                      R6 R2 ; [+12]
       54 GETIMPORT                        R6 K4 [warn]
       56 LOADK                            R8 K9 ["Invalid new control index %* for tab %*"]
       57 MOVE                             R10 R2
       58 MOVE                             R11 R3
       59 NAMECALL                         R8 R8 K6 ["format"]
       61 CALL                             R8 3 1
       62 MOVE                             R7 R8
       63 CALL                             R6 1 0
       64 RETURN                           R0 0
       65 GETIMPORT                        R6 K12 [table.remove]
       67 GETTABLEKS                       R9 R4 K0 ["TabControls"]
       69 GETTABLE                         R8 R9 R3
       70 GETTABLEKS                       R7 R8 K7 ["Controls"]
       72 MOVE                             R8 R1
       73 CALL                             R6 2 1
       74 FASTCALL2K                       ASSERT R6 K13 ; [+5]
       76 MOVE                             R8 R6
       77 LOADK                            R9 K13 ["Control is guaranteed to exist at this point, per the index checks above"]
       78 GETIMPORT                        R7 K15 [assert]
       80 CALL                             R7 2 0
       81 GETTABLEKS                       R10 R4 K0 ["TabControls"]
       83 GETTABLE                         R9 R10 R3
       84 GETTABLEKS                       R8 R9 K7 ["Controls"]
       86 FASTCALL3                        TABLE_INSERT R8 R2 R6
       88 MOVE                             R9 R2
       89 MOVE                             R10 R6
       90 GETIMPORT                        R7 K17 [table.insert]
       92 CALL                             R7 3 0
       93 GETUPVAL                         R7 3
       94 MOVE                             R8 R4
       95 CALL                             R7 1 0
       96 GETUPVAL                         R7 4
       97 MOVE                             R8 R4
       98 CALL                             R7 1 0
       99 GETUPVAL                         R7 5
      100 MOVE                             R8 R4
      101 CALL                             R7 1 0
      102 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R5 R1 K0 ["Layout"]
        5 GETTABLEKS                       R2 R5 K1 ["TabLayout"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R8 R6 K2 ["Identifier"]
       12 GETTABLEKS                       R7 R8 K3 ["Filename"]
       14 GETTABLEKS                       R8 R0 K3 ["Filename"]
       16 JUMPIFNOTEQ                      R7 R8 ; [+15]
       18 GETTABLEKS                       R8 R6 K2 ["Identifier"]
       20 GETTABLEKS                       R7 R8 K4 ["Type"]
       22 GETTABLEKS                       R8 R0 K4 ["Type"]
       24 JUMPIFNOTEQ                      R7 R8 ; [+7]
       26 GETTABLEKS                       R8 R6 K5 ["Visible"]
       28 NOT                              R7 R8
       29 SETTABLEKS                       R7 R6 K5 ["Visible"]
       31 JUMP                             ; [+2]
       32 FORGLOOP                         R2 2 ; [-23]
       34 GETUPVAL                         R2 2
       35 MOVE                             R3 R1
       36 CALL                             R2 1 0
       37 GETUPVAL                         R2 3
       38 MOVE                             R3 R1
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 4
       41 MOVE                             R3 R1
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 CALL                             R2 1 1
        3 LOADN                            R3 255
        4 GETTABLEKS                       R7 R2 K0 ["Layout"]
        6 GETTABLEKS                       R4 R7 K1 ["TabLayout"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R10 R8 K2 ["Identifier"]
       13 GETTABLEKS                       R9 R10 K3 ["Filename"]
       15 GETTABLEKS                       R10 R0 K3 ["Filename"]
       17 JUMPIFNOTEQ                      R9 R10 ; [+11]
       19 GETTABLEKS                       R10 R8 K2 ["Identifier"]
       21 GETTABLEKS                       R9 R10 K4 ["Type"]
       23 GETTABLEKS                       R10 R0 K4 ["Type"]
       25 JUMPIFNOTEQ                      R9 R10 ; [+3]
       27 MOVE                             R3 R7
       28 JUMP                             ; [+2]
       29 FORGLOOP                         R4 2 ; [-19]
       31 JUMPIFNOTEQKN                    R3 K5 [-1] ; [+12]
       33 GETIMPORT                        R4 K7 [warn]
       35 LOADK                            R6 K8 ["Unable to find tab %*"]
       36 GETTABLEKS                       R8 R0 K3 ["Filename"]
       38 NAMECALL                         R6 R6 K9 ["format"]
       40 CALL                             R6 2 1
       41 MOVE                             R5 R6
       42 CALL                             R4 1 0
       43 RETURN                           R0 0
       44 GETIMPORT                        R4 K12 [table.remove]
       46 GETTABLEKS                       R6 R2 K0 ["Layout"]
       48 GETTABLEKS                       R5 R6 K1 ["TabLayout"]
       50 MOVE                             R6 R3
       51 CALL                             R4 2 1
       52 JUMPIFNOTEQKNIL                  R4 ; [+12]
       54 GETIMPORT                        R5 K7 [warn]
       56 LOADK                            R7 K13 ["Unable to move tab %*"]
       57 GETTABLEKS                       R9 R0 K3 ["Filename"]
       59 NAMECALL                         R7 R7 K9 ["format"]
       61 CALL                             R7 2 1
       62 MOVE                             R6 R7
       63 CALL                             R5 1 0
       64 RETURN                           R0 0
       65 MOVE                             R5 R3
       66 JUMPIFNOTEQKS                    R1 K14 ["Left"] ; [+6]
       68 LOADN                            R6 1
       69 JUMPIFNOTLT                      R6 R3 ; [+3]
       71 SUBK                             R5 R5 K15 [1]
       72 JUMP                             ; [+10]
       73 JUMPIFNOTEQKS                    R1 K16 ["Right"] ; [+9]
       75 GETTABLEKS                       R8 R2 K0 ["Layout"]
       77 GETTABLEKS                       R7 R8 K1 ["TabLayout"]
       79 LENGTH                           R6 R7
       80 JUMPIFNOTLE                      R3 R6 ; [+2]
       82 ADDK                             R5 R5 K15 [1]
       83 GETTABLEKS                       R8 R2 K0 ["Layout"]
       85 GETTABLEKS                       R7 R8 K1 ["TabLayout"]
       87 FASTCALL3                        TABLE_INSERT R7 R5 R4
       89 MOVE                             R8 R5
       90 MOVE                             R9 R4
       91 GETIMPORT                        R6 K18 [table.insert]
       93 CALL                             R6 3 0
       94 GETUPVAL                         R6 2
       95 MOVE                             R7 R2
       96 CALL                             R6 1 0
       97 GETUPVAL                         R6 3
       98 MOVE                             R7 R2
       99 CALL                             R6 1 0
      100 GETUPVAL                         R6 4
      101 MOVE                             R7 R2
      102 CALL                             R6 1 0
      103 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 2
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 LOADN                            R3 255
        7 GETTABLEKS                       R7 R1 K0 ["Layout"]
        9 GETTABLEKS                       R4 R7 K1 ["TabLayout"]
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R10 R8 K2 ["Identifier"]
       16 GETTABLEKS                       R9 R10 K3 ["Filename"]
       18 GETTABLEKS                       R10 R0 K3 ["Filename"]
       20 JUMPIFNOTEQ                      R9 R10 ; [+11]
       22 GETTABLEKS                       R10 R8 K2 ["Identifier"]
       24 GETTABLEKS                       R9 R10 K4 ["Type"]
       26 GETTABLEKS                       R10 R0 K4 ["Type"]
       28 JUMPIFNOTEQ                      R9 R10 ; [+3]
       30 MOVE                             R3 R7
       31 JUMP                             ; [+2]
       32 FORGLOOP                         R4 2 ; [-19]
       34 JUMPIFEQKN                       R3 K5 [-1] ; [+5]
       36 GETTABLEKS                       R4 R0 K4 ["Type"]
       38 JUMPIFEQKS                       R4 K6 ["Custom"] ; [+11]
       40 GETIMPORT                        R4 K8 [warn]
       42 LOADK                            R6 K9 ["Unable to remove tab %*"]
       43 MOVE                             R8 R2
       44 NAMECALL                         R6 R6 K10 ["format"]
       46 CALL                             R6 2 1
       47 MOVE                             R5 R6
       48 CALL                             R4 1 0
       49 RETURN                           R0 0
       50 GETIMPORT                        R4 K13 [table.remove]
       52 GETTABLEKS                       R6 R1 K0 ["Layout"]
       54 GETTABLEKS                       R5 R6 K1 ["TabLayout"]
       56 MOVE                             R6 R3
       57 CALL                             R4 2 0
       58 GETTABLEKS                       R4 R1 K14 ["TabControls"]
       60 LOADNIL                          R5
       61 SETTABLE                         R5 R4 R2
       62 GETUPVAL                         R4 3
       63 MOVE                             R5 R1
       64 CALL                             R4 1 0
       65 GETUPVAL                         R4 4
       66 MOVE                             R5 R1
       67 CALL                             R4 1 0
       68 GETUPVAL                         R4 5
       69 MOVE                             R5 R1
       70 CALL                             R4 1 0
       71 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 0 0
        7 GETTABLEKS                       R6 R0 K0 ["Layout"]
        9 GETTABLEKS                       R3 R6 K1 ["TabLayout"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R9 R7 K2 ["Identifier"]
       16 GETTABLEKS                       R8 R9 K3 ["Type"]
       18 JUMPIFNOTEQKS                    R8 K4 ["Custom"] ; [+17]
       20 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       22 MOVE                             R9 R1
       23 MOVE                             R10 R6
       24 GETIMPORT                        R8 K7 [table.insert]
       26 CALL                             R8 2 0
       27 GETTABLEKS                       R10 R7 K2 ["Identifier"]
       29 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       31 MOVE                             R9 R2
       32 GETIMPORT                        R8 K7 [table.insert]
       34 CALL                             R8 2 0
       35 JUMP                             ; [+3]
       36 LOADB                            R8 1
       37 SETTABLEKS                       R8 R7 K8 ["Visible"]
       39 FORGLOOP                         R3 2 ; [-26]
       41 LENGTH                           R5 R1
       42 LOADN                            R3 1
       43 LOADN                            R4 255
       44 FORNPREP                         R3
       45 GETTABLE                         R6 R1 R5
       46 GETIMPORT                        R7 K10 [table.remove]
       48 GETTABLEKS                       R9 R0 K0 ["Layout"]
       50 GETTABLEKS                       R8 R9 K1 ["TabLayout"]
       52 MOVE                             R9 R6
       53 CALL                             R7 2 0
       54 FORNLOOP                         R3
       55 MOVE                             R3 R2
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 GETTABLEKS                       R8 R0 K11 ["TabControls"]
       61 GETUPVAL                         R9 2
       62 MOVE                             R10 R7
       63 CALL                             R9 1 1
       64 LOADNIL                          R10
       65 SETTABLE                         R10 R8 R9
       66 FORGLOOP                         R3 2 ; [-8]
       68 GETUPVAL                         R3 3
       69 MOVE                             R4 R0
       70 CALL                             R3 1 0
       71 GETUPVAL                         R3 4
       72 MOVE                             R4 R0
       73 CALL                             R3 1 0
       74 GETUPVAL                         R3 5
       75 MOVE                             R4 R0
       76 CALL                             R3 1 0
       77 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["InteractionTelemetry"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 DUPTABLE                         R3 K5 [{"functionType", "sourceType", "sourceData"}]
        6 LOADK                            R4 K6 ["Navigation"]
        7 SETTABLEKS                       R4 R3 K2 ["functionType"]
        9 LOADK                            R4 K7 ["Widget"]
       10 SETTABLEKS                       R4 R3 K3 ["sourceType"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K8 ["toString"]
       15 GETUPVAL                         R5 2
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K4 ["sourceData"]
       19 NAMECALL                         R1 R0 K9 ["ReportInteractionAsync"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_29:
        0 JUMPIFNOT                        R0 ; [+31]
        1 GETTABLEKS                       R2 R0 K0 ["Identifier"]
        3 GETTABLEKS                       R1 R2 K1 ["Filename"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["Identifier"]
        8 GETTABLEKS                       R2 R3 K1 ["Filename"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+12]
       12 GETTABLEKS                       R2 R0 K0 ["Identifier"]
       14 GETTABLEKS                       R1 R2 K2 ["Type"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["Identifier"]
       19 GETTABLEKS                       R2 R3 K2 ["Type"]
       21 JUMPIFEQ                         R1 R2 ; [+10]
       23 GETIMPORT                        R1 K5 [task.defer]
       25 GETIMPORT                        R2 K7 [pcall]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 CALL                             R1 2 0
       32 GETUPVAL                         R1 0
       33 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 1
       11 LOADNIL                          R5
       12 CALL                             R4 1 2
       13 GETUPVAL                         R6 3
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R5
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R8 0 2
       20 MOVE                             R9 R5
       21 MOVE                             R10 R3
       22 SETLIST                          R8 R9 2 [1]
       24 CALL                             R6 2 1
       25 LOADNIL                          R7
       26 GETUPVAL                         R8 5
       27 CALL                             R8 0 1
       28 JUMPIFNOT                        R8 ; [+6]
       29 GETUPVAL                         R9 6
       30 GETTABLEKS                       R8 R9 K2 ["useContext"]
       32 GETUPVAL                         R9 7
       33 CALL                             R8 1 1
       34 MOVE                             R7 R8
       35 GETUPVAL                         R8 3
       36 NEWCLOSURE                       R9 P1
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          UPVAL U10
       41 CAPTURE                          UPVAL U11
       42 CAPTURE                          UPVAL U12
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          REF R7
       45 CAPTURE                          UPVAL U13
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R6
       48 NEWTABLE                         R10 0 5
       50 MOVE                             R11 R1
       51 GETUPVAL                         R13 5
       52 CALL                             R13 0 1
       53 JUMPIFNOT                        R13 ; [+2]
       54 MOVE                             R12 R7
       55 JUMP                             ; [+1]
       56 LOADNIL                          R12
       57 GETTABLEKS                       R13 R0 K3 ["OnDefinitionLoad"]
       59 MOVE                             R14 R5
       60 MOVE                             R15 R6
       61 SETLIST                          R10 R11 5 [1]
       63 CALL                             R8 2 1
       64 GETUPVAL                         R9 14
       65 NEWCLOSURE                       R10 P2
       66 CAPTURE                          VAL R8
       67 NEWTABLE                         R11 0 1
       69 MOVE                             R12 R8
       70 SETLIST                          R11 R12 1 [1]
       72 CALL                             R9 2 0
       73 GETUPVAL                         R9 5
       74 CALL                             R9 0 1
       75 JUMPIFNOT                        R9 ; [+14]
       76 GETUPVAL                         R9 14
       77 NEWCLOSURE                       R10 P3
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U11
       80 CAPTURE                          UPVAL U12
       81 CAPTURE                          REF R7
       82 NEWTABLE                         R11 0 2
       84 GETTABLEKS                       R12 R0 K4 ["CustomTools"]
       86 MOVE                             R13 R7
       87 SETLIST                          R11 R12 2 [1]
       89 CALL                             R9 2 0
       90 GETTABLEKS                       R10 R0 K5 ["SaveDelay"]
       92 JUMPIFNOT                        R10 ; [+3]
       93 GETTABLEKS                       R9 R0 K5 ["SaveDelay"]
       95 JUMP                             ; [+3]
       96 GETUPVAL                         R10 15
       97 CALL                             R10 0 1
       98 DIVK                             R9 R10 K6 [1000]
       99 GETUPVAL                         R10 16
      100 DUPTABLE                         R11 K8 [{"LatestDefinition"}]
      101 SETTABLEKS                       R2 R11 K7 ["LatestDefinition"]
      103 CALL                             R10 1 1
      104 GETUPVAL                         R11 3
      105 NEWCLOSURE                       R12 P4
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R1
      109 NEWTABLE                         R13 0 3
      111 MOVE                             R14 R10
      112 MOVE                             R15 R1
      113 MOVE                             R16 R9
      114 SETLIST                          R13 R14 3 [1]
      116 CALL                             R11 2 1
      117 GETUPVAL                         R12 14
      118 NEWCLOSURE                       R13 P5
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R10
      121 NEWTABLE                         R14 0 2
      123 MOVE                             R15 R1
      124 MOVE                             R16 R10
      125 SETLIST                          R14 R15 2 [1]
      127 CALL                             R12 2 0
      128 GETUPVAL                         R12 14
      129 NEWCLOSURE                       R13 P6
      130 CAPTURE                          VAL R1
      131 CAPTURE                          UPVAL U17
      132 CAPTURE                          VAL R2
      133 NEWTABLE                         R14 0 2
      135 MOVE                             R15 R1
      136 MOVE                             R16 R2
      137 SETLIST                          R14 R15 2 [1]
      139 CALL                             R12 2 0
      140 GETUPVAL                         R12 3
      141 NEWCLOSURE                       R13 P7
      142 CAPTURE                          UPVAL U18
      143 CAPTURE                          VAL R2
      144 CAPTURE                          UPVAL U9
      145 CAPTURE                          UPVAL U19
      146 CAPTURE                          UPVAL U13
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R11
      149 NEWTABLE                         R14 0 3
      151 MOVE                             R15 R2
      152 MOVE                             R16 R6
      153 MOVE                             R17 R11
      154 SETLIST                          R14 R15 3 [1]
      156 CALL                             R12 2 1
      157 GETUPVAL                         R13 3
      158 NEWCLOSURE                       R14 P8
      159 CAPTURE                          UPVAL U20
      160 CAPTURE                          VAL R2
      161 CAPTURE                          UPVAL U21
      162 CAPTURE                          UPVAL U18
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R11
      166 NEWTABLE                         R15 0 3
      168 MOVE                             R16 R2
      169 MOVE                             R17 R6
      170 MOVE                             R18 R11
      171 SETLIST                          R15 R16 3 [1]
      173 CALL                             R13 2 1
      174 GETUPVAL                         R14 3
      175 NEWCLOSURE                       R15 P9
      176 CAPTURE                          UPVAL U18
      177 CAPTURE                          UPVAL U20
      178 CAPTURE                          VAL R2
      179 CAPTURE                          UPVAL U22
      180 CAPTURE                          VAL R0
      181 CAPTURE                          UPVAL U23
      182 CAPTURE                          UPVAL U12
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R13
      185 NEWTABLE                         R16 0 1
      187 MOVE                             R17 R2
      188 SETLIST                          R16 R17 1 [1]
      190 CALL                             R14 2 1
      191 GETUPVAL                         R15 3
      192 NEWCLOSURE                       R16 P10
      193 CAPTURE                          UPVAL U20
      194 CAPTURE                          VAL R2
      195 CAPTURE                          UPVAL U21
      196 CAPTURE                          UPVAL U18
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R11
      199 NEWTABLE                         R17 0 3
      201 MOVE                             R18 R2
      202 MOVE                             R19 R6
      203 MOVE                             R20 R11
      204 SETLIST                          R17 R18 3 [1]
      206 CALL                             R15 2 1
      207 GETUPVAL                         R16 3
      208 NEWCLOSURE                       R17 P11
      209 CAPTURE                          UPVAL U18
      210 CAPTURE                          VAL R2
      211 CAPTURE                          UPVAL U20
      212 CAPTURE                          UPVAL U13
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R11
      215 NEWTABLE                         R18 0 3
      217 MOVE                             R19 R2
      218 MOVE                             R20 R6
      219 MOVE                             R21 R11
      220 SETLIST                          R18 R19 3 [1]
      222 CALL                             R16 2 1
      223 GETUPVAL                         R17 3
      224 NEWCLOSURE                       R18 P12
      225 CAPTURE                          UPVAL U18
      226 CAPTURE                          VAL R2
      227 CAPTURE                          UPVAL U20
      228 CAPTURE                          UPVAL U24
      229 CAPTURE                          UPVAL U12
      230 CAPTURE                          UPVAL U13
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R11
      233 NEWTABLE                         R19 0 3
      235 MOVE                             R20 R2
      236 MOVE                             R21 R6
      237 MOVE                             R22 R11
      238 SETLIST                          R19 R20 3 [1]
      240 CALL                             R17 2 1
      241 GETUPVAL                         R18 3
      242 NEWCLOSURE                       R19 P13
      243 CAPTURE                          UPVAL U18
      244 CAPTURE                          VAL R2
      245 CAPTURE                          UPVAL U20
      246 CAPTURE                          UPVAL U13
      247 CAPTURE                          VAL R6
      248 CAPTURE                          VAL R11
      249 NEWTABLE                         R20 0 3
      251 MOVE                             R21 R2
      252 MOVE                             R22 R6
      253 MOVE                             R23 R11
      254 SETLIST                          R20 R21 3 [1]
      256 CALL                             R18 2 1
      257 GETUPVAL                         R19 3
      258 NEWCLOSURE                       R20 P14
      259 CAPTURE                          UPVAL U20
      260 CAPTURE                          VAL R2
      261 CAPTURE                          UPVAL U13
      262 CAPTURE                          VAL R6
      263 CAPTURE                          VAL R11
      264 NEWTABLE                         R21 0 3
      266 MOVE                             R22 R2
      267 MOVE                             R23 R6
      268 MOVE                             R24 R11
      269 SETLIST                          R21 R22 3 [1]
      271 CALL                             R19 2 1
      272 GETUPVAL                         R20 3
      273 NEWCLOSURE                       R21 P15
      274 CAPTURE                          UPVAL U20
      275 CAPTURE                          VAL R2
      276 CAPTURE                          UPVAL U13
      277 CAPTURE                          VAL R6
      278 CAPTURE                          VAL R11
      279 NEWTABLE                         R22 0 3
      281 MOVE                             R23 R2
      282 MOVE                             R24 R6
      283 MOVE                             R25 R11
      284 SETLIST                          R22 R23 3 [1]
      286 CALL                             R20 2 1
      287 GETUPVAL                         R21 3
      288 NEWCLOSURE                       R22 P16
      289 CAPTURE                          UPVAL U20
      290 CAPTURE                          VAL R2
      291 CAPTURE                          UPVAL U18
      292 CAPTURE                          UPVAL U13
      293 CAPTURE                          VAL R6
      294 CAPTURE                          VAL R11
      295 NEWTABLE                         R23 0 3
      297 MOVE                             R24 R2
      298 MOVE                             R25 R6
      299 MOVE                             R26 R11
      300 SETLIST                          R23 R24 3 [1]
      302 CALL                             R21 2 1
      303 GETUPVAL                         R22 3
      304 NEWCLOSURE                       R23 P17
      305 CAPTURE                          UPVAL U20
      306 CAPTURE                          VAL R2
      307 CAPTURE                          UPVAL U18
      308 CAPTURE                          UPVAL U13
      309 CAPTURE                          VAL R6
      310 CAPTURE                          VAL R11
      311 NEWTABLE                         R24 0 3
      313 MOVE                             R25 R2
      314 MOVE                             R26 R6
      315 MOVE                             R27 R11
      316 SETLIST                          R24 R25 3 [1]
      318 CALL                             R22 2 1
      319 GETUPVAL                         R23 3
      320 NEWCLOSURE                       R24 P18
      321 CAPTURE                          VAL R5
      322 CAPTURE                          VAL R1
      323 CAPTURE                          UPVAL U12
      324 NEWTABLE                         R25 0 2
      326 MOVE                             R26 R1
      327 MOVE                             R27 R5
      328 SETLIST                          R25 R26 2 [1]
      330 CALL                             R23 2 1
      331 DUPTABLE                         R24 K24 [{"Definition", "ReloadDefinition", "AddTab", "RenameTab", "AddControlsToTab", "RemoveControlFromTab", "RemoveControlsFromTab", "MoveControl", "ToggleTabVisibility", "MoveTab", "DeleteTab", "ResetAllTabs", "DuplicateTab", "ActiveTabState", "SelectTab"}]
      332 SETTABLEKS                       R2 R24 K9 ["Definition"]
      334 SETTABLEKS                       R8 R24 K10 ["ReloadDefinition"]
      336 SETTABLEKS                       R13 R24 K11 ["AddTab"]
      338 SETTABLEKS                       R15 R24 K12 ["RenameTab"]
      340 SETTABLEKS                       R12 R24 K13 ["AddControlsToTab"]
      342 SETTABLEKS                       R16 R24 K14 ["RemoveControlFromTab"]
      344 SETTABLEKS                       R17 R24 K15 ["RemoveControlsFromTab"]
      346 SETTABLEKS                       R18 R24 K16 ["MoveControl"]
      348 SETTABLEKS                       R19 R24 K17 ["ToggleTabVisibility"]
      350 SETTABLEKS                       R20 R24 K18 ["MoveTab"]
      352 SETTABLEKS                       R21 R24 K19 ["DeleteTab"]
      354 SETTABLEKS                       R22 R24 K20 ["ResetAllTabs"]
      356 SETTABLEKS                       R14 R24 K21 ["DuplicateTab"]
      358 SETTABLEKS                       R4 R24 K22 ["ActiveTabState"]
      360 SETTABLEKS                       R23 R24 K23 ["SelectTab"]
      362 GETUPVAL                         R26 6
      363 GETTABLEKS                       R25 R26 K25 ["createElement"]
      365 GETUPVAL                         R27 25
      366 GETTABLEKS                       R26 R27 K26 ["Provider"]
      368 DUPTABLE                         R27 K28 [{"value"}]
      369 SETTABLEKS                       R24 R27 K27 ["value"]
      371 GETTABLEKS                       R28 R0 K29 ["children"]
      373 CALL                             R25 3 -1
      374 CLOSEUPVALS                      R7
      375 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["RibbonDefinition"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Dash"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["append"]
       39 GETTABLEKS                       R6 R4 K14 ["joinDeep"]
       41 GETTABLEKS                       R7 R4 K15 ["some"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R11 R0 K9 ["Src"]
       47 GETTABLEKS                       R10 R11 K16 ["Util"]
       49 GETTABLEKS                       R9 R10 K17 ["deepCopy"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R12 R0 K9 ["Src"]
       56 GETTABLEKS                       R11 R12 K16 ["Util"]
       58 GETTABLEKS                       R10 R11 K18 ["deepFreeze"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R13 R0 K9 ["Src"]
       65 GETTABLEKS                       R12 R13 K16 ["Util"]
       67 GETTABLEKS                       R11 R12 K19 ["visitControlUris"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R14 R0 K9 ["Src"]
       74 GETTABLEKS                       R13 R14 K16 ["Util"]
       76 GETTABLEKS                       R12 R13 K20 ["controlsIdentifierToString"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K5 [require]
       81 GETTABLEKS                       R14 R0 K6 ["Packages"]
       83 GETTABLEKS                       R13 R14 K21 ["StudioFoundation"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R14 R12 K16 ["Util"]
       88 GETTABLEKS                       R13 R14 K22 ["StudioUri"]
       90 GETIMPORT                        R14 K5 [require]
       92 GETTABLEKS                       R17 R0 K9 ["Src"]
       94 GETTABLEKS                       R16 R17 K16 ["Util"]
       96 GETTABLEKS                       R15 R16 K23 ["isControlEnabledFromFlags"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETTABLEKS                       R18 R0 K9 ["Src"]
      103 GETTABLEKS                       R17 R18 K16 ["Util"]
      105 GETTABLEKS                       R16 R17 K24 ["generateCustomTabIdentifier"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R19 R0 K9 ["Src"]
      112 GETTABLEKS                       R18 R19 K16 ["Util"]
      114 GETTABLEKS                       R17 R18 K25 ["updateActiveTabState"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R20 R0 K9 ["Src"]
      121 GETTABLEKS                       R19 R20 K16 ["Util"]
      123 GETTABLEKS                       R18 R19 K26 ["addCustomControls"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R22 R0 K9 ["Src"]
      130 GETTABLEKS                       R21 R22 K27 ["Resources"]
      132 GETTABLEKS                       R20 R21 K28 ["ControlDefinitions"]
      134 GETTABLEKS                       R19 R20 K29 ["BuiltInRibbonDefinition"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R22 R0 K9 ["Src"]
      141 GETTABLEKS                       R21 R22 K16 ["Util"]
      143 GETTABLEKS                       R20 R21 K30 ["sendDefinitionTelemetry"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R23 R0 K9 ["Src"]
      150 GETTABLEKS                       R22 R23 K31 ["SharedFlags"]
      152 GETTABLEKS                       R21 R22 K32 ["getFIntRibbonSaveDelayMilliseconds"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R24 R0 K9 ["Src"]
      159 GETTABLEKS                       R23 R24 K31 ["SharedFlags"]
      161 GETTABLEKS                       R22 R23 K33 ["getFeatureRibbonDefineTabsInLuau"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R25 R0 K9 ["Src"]
      168 GETTABLEKS                       R24 R25 K31 ["SharedFlags"]
      170 GETTABLEKS                       R23 R24 K34 ["getFeatureRibbonControlsCaching"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R26 R0 K9 ["Src"]
      177 GETTABLEKS                       R25 R26 K10 ["Contexts"]
      179 GETTABLEKS                       R24 R25 K35 ["ControlSignalStoreContext"]
      181 CALL                             R23 1 1
      182 GETTABLEKS                       R25 R1 K36 ["ContextServices"]
      184 GETTABLEKS                       R24 R25 K37 ["Plugin"]
      186 GETTABLEKS                       R25 R2 K38 ["useCallback"]
      188 GETTABLEKS                       R26 R2 K39 ["useEffect"]
      190 GETTABLEKS                       R27 R2 K40 ["useRef"]
      192 GETTABLEKS                       R28 R2 K41 ["useState"]
      194 GETIMPORT                        R29 K5 [require]
      196 GETTABLEKS                       R31 R0 K9 ["Src"]
      198 GETTABLEKS                       R30 R31 K42 ["Types"]
      200 CALL                             R29 1 1
      201 MOVE                             R30 R9
      202 DUPTABLE                         R31 K46 [{"Layout", "TabControls", "MezzanineControls"}]
      203 DUPTABLE                         R32 K48 [{"TabLayout"}]
      204 NEWTABLE                         R33 0 0
      206 SETTABLEKS                       R33 R32 K47 ["TabLayout"]
      208 SETTABLEKS                       R32 R31 K43 ["Layout"]
      210 NEWTABLE                         R32 0 0
      212 SETTABLEKS                       R32 R31 K44 ["TabControls"]
      214 NEWTABLE                         R32 0 0
      216 SETTABLEKS                       R32 R31 K45 ["MezzanineControls"]
      218 CALL                             R30 1 1
      219 DUPCLOSURE                       R31 K49 [PROTO_0]
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R31
      222 DUPCLOSURE                       R32 K50 [PROTO_31]
      223 CAPTURE                          VAL R24
      224 CAPTURE                          VAL R28
      225 CAPTURE                          VAL R30
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R2
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R21
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R10
      235 CAPTURE                          VAL R13
      236 CAPTURE                          VAL R9
      237 CAPTURE                          VAL R26
      238 CAPTURE                          VAL R20
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R19
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R5
      243 CAPTURE                          VAL R8
      244 CAPTURE                          VAL R15
      245 CAPTURE                          VAL R31
      246 CAPTURE                          VAL R17
      247 CAPTURE                          VAL R7
      248 CAPTURE                          VAL R3
      249 RETURN                           R32 1
