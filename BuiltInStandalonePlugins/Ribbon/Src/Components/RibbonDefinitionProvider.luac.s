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
        0 LOADB                            R2 0
        1 GETTABLEKS                       R6 R0 K0 ["Layout"]
        3 GETTABLEKS                       R6 R6 K1 ["TabLayout"]
        5 LENGTH                           R5 R6
        6 LOADN                            R3 1
        7 LOADN                            R4 255
        8 FORNPREP                         R3
        9 GETTABLEKS                       R7 R0 K0 ["Layout"]
       11 GETTABLEKS                       R7 R7 K1 ["TabLayout"]
       13 GETTABLE                         R6 R7 R5
       14 GETTABLEKS                       R7 R6 K2 ["Identifier"]
       16 GETTABLEKS                       R7 R7 K3 ["Type"]
       18 JUMPIFNOTEQKS                    R7 K4 ["Custom"] ; [+31]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R8 R6 K2 ["Identifier"]
       23 CALL                             R7 1 1
       24 GETTABLEKS                       R9 R0 K5 ["TabControls"]
       26 GETTABLE                         R8 R9 R7
       27 JUMPIFNOT                        R8 ; [+22]
       28 GETTABLEKS                       R9 R8 K6 ["Name"]
       30 JUMPIFNOTEQ                      R9 R1 ; [+19]
       32 GETTABLEKS                       R10 R8 K7 ["Controls"]
       34 LENGTH                           R9 R10
       35 JUMPIFNOTEQKN                    R9 K8 [0] ; [+14]
       37 GETIMPORT                        R9 K11 [table.remove]
       39 GETTABLEKS                       R10 R0 K0 ["Layout"]
       41 GETTABLEKS                       R10 R10 K1 ["TabLayout"]
       43 MOVE                             R11 R5
       44 CALL                             R9 2 0
       45 GETTABLEKS                       R9 R0 K5 ["TabControls"]
       47 LOADNIL                          R10
       48 SETTABLE                         R10 R9 R7
       49 LOADB                            R2 1
       50 FORNLOOP                         R3
       51 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Layout"]
        4 GETTABLEKS                       R2 R2 K1 ["TabLayout"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
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
       24 GETUPVAL                         R8 5
       25 GETTABLEKS                       R8 R8 K5 ["wrap"]
       27 CALL                             R6 2 0
       28 GETUPVAL                         R6 6
       29 GETTABLEKS                       R8 R5 K4 ["Controls"]
       31 NAMECALL                         R6 R6 K6 ["watchControls"]
       33 CALL                             R6 2 0
       34 FORGLOOP                         R1 2 ; [-14]
       36 GETTABLEKS                       R1 R0 K7 ["MezzanineControls"]
       38 LOADNIL                          R2
       39 LOADNIL                          R3
       40 FORGPREP                         R1
       41 GETUPVAL                         R6 4
       42 GETTABLEKS                       R7 R5 K4 ["Controls"]
       44 GETUPVAL                         R8 5
       45 GETTABLEKS                       R8 R8 K5 ["wrap"]
       47 CALL                             R6 2 0
       48 GETUPVAL                         R6 6
       49 GETTABLEKS                       R8 R5 K4 ["Controls"]
       51 NAMECALL                         R6 R6 K6 ["watchControls"]
       53 CALL                             R6 2 0
       54 FORGLOOP                         R1 2 ; [-14]
       56 GETUPVAL                         R1 7
       57 CALL                             R1 0 1
       58 JUMPIFNOT                        R1 ; [+10]
       59 GETUPVAL                         R1 8
       60 LOADK                            R3 K8 ["Plugin"]
       61 LOADK                            R4 K9 ["Tab_Untitled"]
       62 NAMECALL                         R1 R1 K10 ["getText"]
       64 CALL                             R1 3 1
       65 GETUPVAL                         R2 9
       66 MOVE                             R3 R0
       67 MOVE                             R4 R1
       68 CALL                             R2 2 0
       69 GETUPVAL                         R1 10
       70 MOVE                             R2 R0
       71 CALL                             R1 1 1
       72 GETUPVAL                         R2 11
       73 GETTABLEKS                       R2 R2 K11 ["OnDefinitionLoad"]
       75 JUMPIFNOT                        R2 ; [+5]
       76 GETUPVAL                         R2 11
       77 GETTABLEKS                       R2 R2 K11 ["OnDefinitionLoad"]
       79 MOVE                             R3 R1
       80 CALL                             R2 1 0
       81 GETUPVAL                         R2 12
       82 MOVE                             R3 R1
       83 CALL                             R2 1 0
       84 RETURN                           R0 0

PROTO_5:
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
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CustomTools"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["CustomTools"]
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 FORGPREP                         R0
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R6 R4 K1 ["Controls"]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R7 R7 K2 ["wrap"]
       17 CALL                             R5 2 0
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R7 R4 K1 ["Controls"]
       21 NAMECALL                         R5 R5 K3 ["watchControls"]
       23 CALL                             R5 2 0
       24 FORGLOOP                         R0 2 ; [-14]
       26 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["Thread"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 GETTABLEKS                       R0 R0 K2 ["LatestDefinition"]
       11 GETUPVAL                         R1 1
       12 LOADK                            R3 K3 ["RibbonConfiguration"]
       13 NAMECALL                         R1 R1 K4 ["GetPluginComponent"]
       15 CALL                             R1 2 1
       16 MOVE                             R3 R0
       17 NAMECALL                         R1 R1 K5 ["SaveRibbonDefinitionAsync"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 SETTABLEKS                       R0 R1 K1 ["LatestDefinition"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 GETTABLEKS                       R1 R1 K2 ["Thread"]
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["current"]
       15 GETIMPORT                        R2 K5 [task.delay]
       17 GETUPVAL                         R3 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U2
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K2 ["Thread"]
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["Thread"]
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R0 1
        7 LOADK                            R2 K2 ["RibbonConfiguration"]
        8 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["current"]
       14 GETTABLEKS                       R2 R2 K4 ["LatestDefinition"]
       16 NAMECALL                         R0 R0 K5 ["SaveRibbonDefinitionAsync"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["Thread"]
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETIMPORT                        R0 K4 [task.cancel]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["current"]
       11 GETTABLEKS                       R1 R1 K1 ["Thread"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 NAMECALL                         R0 R0 K5 ["Disconnect"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Unloading"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["Once"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Unloading"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Once"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_16:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["TabControls"]
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
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R11 R11 K1 ["TabControls"]
       39 GETTABLE                         R10 R11 R2
       40 GETTABLEKS                       R10 R10 K9 ["Controls"]
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

PROTO_17:
        0 DUPTABLE                         R0 K2 [{"Identifier", "VisibleTabIndex"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Identifier"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K3 ["Layout"]
        7 GETTABLEKS                       R2 R2 K4 ["TabLayout"]
        9 LENGTH                           R1 R2
       10 SETTABLEKS                       R1 R0 K1 ["VisibleTabIndex"]
       12 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 2
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R5 R2 K0 ["Layout"]
        8 GETTABLEKS                       R5 R5 K1 ["TabLayout"]
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

PROTO_19:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R6 R6 K0 ["TabControls"]
        7 GETTABLE                         R5 R6 R3
        8 GETTABLEKS                       R5 R5 K1 ["Controls"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 3
       12 MOVE                             R6 R4
       13 CALL                             R5 1 0
       14 JUMPIFNOT                        R2 ; [+22]
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R5 R5 K2 ["CustomTools"]
       18 JUMPIFNOT                        R5 ; [+18]
       19 GETUPVAL                         R5 5
       20 GETUPVAL                         R6 6
       21 GETTABLEKS                       R6 R6 K3 ["wrap"]
       23 GETUPVAL                         R7 7
       24 NAMECALL                         R7 R7 K4 ["GetUri"]
       26 CALL                             R7 1 -1
       27 CALL                             R6 -1 1
       28 MOVE                             R7 R3
       29 MOVE                             R8 R4
       30 GETIMPORT                        R9 K7 [table.clone]
       32 GETUPVAL                         R10 4
       33 GETTABLEKS                       R10 R10 K2 ["CustomTools"]
       35 CALL                             R9 1 -1
       36 CALL                             R5 -1 0
       37 GETUPVAL                         R5 8
       38 MOVE                             R6 R1
       39 MOVE                             R7 R4
       40 CALL                             R5 2 0
       41 RETURN                           R0 0

PROTO_20:
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
       10 GETTABLEKS                       R6 R2 K0 ["Layout"]
       12 GETTABLEKS                       R6 R6 K1 ["TabLayout"]
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 GETTABLEKS                       R11 R10 K2 ["Identifier"]
       19 GETTABLEKS                       R11 R11 K3 ["Type"]
       21 JUMPIFNOTEQKS                    R11 K4 ["Custom"] ; [+15]
       23 GETTABLEKS                       R11 R10 K2 ["Identifier"]
       25 GETTABLEKS                       R11 R11 K5 ["Filename"]
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

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["TabControls"]
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
       28 GETTABLEKS                       R6 R3 K0 ["TabControls"]
       30 GETTABLE                         R5 R6 R2
       31 GETTABLEKS                       R5 R5 K10 ["Controls"]
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

PROTO_22:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Type"]
        4 JUMPIFNOTEQKS                    R2 K1 ["IconButton"] ; [+13]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["Action"]
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["equals"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["Action"]
       16 MOVE                             R3 R0
       17 CALL                             R1 2 1
       18 RETURN                           R1 1

PROTO_23:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["TabControls"]
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
       30 GETTABLEKS                       R5 R3 K1 ["TabControls"]
       32 GETTABLE                         R4 R5 R2
       33 GETTABLEKS                       R4 R4 K8 ["Controls"]
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

PROTO_24:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["TabControls"]
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
       26 GETTABLEKS                       R6 R4 K0 ["TabControls"]
       28 GETTABLE                         R5 R6 R3
       29 GETTABLEKS                       R5 R5 K7 ["Controls"]
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
       67 GETTABLEKS                       R8 R4 K0 ["TabControls"]
       69 GETTABLE                         R7 R8 R3
       70 GETTABLEKS                       R7 R7 K7 ["Controls"]
       72 MOVE                             R8 R1
       73 CALL                             R6 2 1
       74 FASTCALL2K                       ASSERT R6 K13 ; [+5]
       76 MOVE                             R8 R6
       77 LOADK                            R9 K13 ["Control is guaranteed to exist at this point, per the index checks above"]
       78 GETIMPORT                        R7 K15 [assert]
       80 CALL                             R7 2 0
       81 GETTABLEKS                       R9 R4 K0 ["TabControls"]
       83 GETTABLE                         R8 R9 R3
       84 GETTABLEKS                       R8 R8 K7 ["Controls"]
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["Layout"]
        5 GETTABLEKS                       R2 R2 K1 ["TabLayout"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K2 ["Identifier"]
       12 GETTABLEKS                       R7 R7 K3 ["Filename"]
       14 GETTABLEKS                       R8 R0 K3 ["Filename"]
       16 JUMPIFNOTEQ                      R7 R8 ; [+15]
       18 GETTABLEKS                       R7 R6 K2 ["Identifier"]
       20 GETTABLEKS                       R7 R7 K4 ["Type"]
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

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 CALL                             R2 1 1
        3 LOADN                            R3 255
        4 GETTABLEKS                       R4 R2 K0 ["Layout"]
        6 GETTABLEKS                       R4 R4 K1 ["TabLayout"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R9 R8 K2 ["Identifier"]
       13 GETTABLEKS                       R9 R9 K3 ["Filename"]
       15 GETTABLEKS                       R10 R0 K3 ["Filename"]
       17 JUMPIFNOTEQ                      R9 R10 ; [+11]
       19 GETTABLEKS                       R9 R8 K2 ["Identifier"]
       21 GETTABLEKS                       R9 R9 K4 ["Type"]
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
       46 GETTABLEKS                       R5 R2 K0 ["Layout"]
       48 GETTABLEKS                       R5 R5 K1 ["TabLayout"]
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
       75 GETTABLEKS                       R7 R2 K0 ["Layout"]
       77 GETTABLEKS                       R7 R7 K1 ["TabLayout"]
       79 LENGTH                           R6 R7
       80 JUMPIFNOTLE                      R3 R6 ; [+2]
       82 ADDK                             R5 R5 K15 [1]
       83 GETTABLEKS                       R7 R2 K0 ["Layout"]
       85 GETTABLEKS                       R7 R7 K1 ["TabLayout"]
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 2
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 LOADN                            R3 255
        7 GETTABLEKS                       R4 R1 K0 ["Layout"]
        9 GETTABLEKS                       R4 R4 K1 ["TabLayout"]
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R9 R8 K2 ["Identifier"]
       16 GETTABLEKS                       R9 R9 K3 ["Filename"]
       18 GETTABLEKS                       R10 R0 K3 ["Filename"]
       20 JUMPIFNOTEQ                      R9 R10 ; [+11]
       22 GETTABLEKS                       R9 R8 K2 ["Identifier"]
       24 GETTABLEKS                       R9 R9 K4 ["Type"]
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
       52 GETTABLEKS                       R5 R1 K0 ["Layout"]
       54 GETTABLEKS                       R5 R5 K1 ["TabLayout"]
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 0 0
        7 GETTABLEKS                       R3 R0 K0 ["Layout"]
        9 GETTABLEKS                       R3 R3 K1 ["TabLayout"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R7 K2 ["Identifier"]
       16 GETTABLEKS                       R8 R8 K3 ["Type"]
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
       48 GETTABLEKS                       R8 R0 K0 ["Layout"]
       50 GETTABLEKS                       R8 R8 K1 ["TabLayout"]
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["InteractionTelemetry"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 DUPTABLE                         R3 K5 [{"functionType", "sourceType", "sourceData"}]
        6 LOADK                            R4 K6 ["Navigation"]
        7 SETTABLEKS                       R4 R3 K2 ["functionType"]
        9 LOADK                            R4 K7 ["Widget"]
       10 SETTABLEKS                       R4 R3 K3 ["sourceType"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K8 ["toString"]
       15 GETUPVAL                         R5 2
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K4 ["sourceData"]
       19 NAMECALL                         R1 R0 K9 ["ReportInteractionAsync"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_30:
        0 JUMPIFNOT                        R0 ; [+31]
        1 GETTABLEKS                       R1 R0 K0 ["Identifier"]
        3 GETTABLEKS                       R1 R1 K1 ["Filename"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Identifier"]
        8 GETTABLEKS                       R2 R2 K1 ["Filename"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+12]
       12 GETTABLEKS                       R1 R0 K0 ["Identifier"]
       14 GETTABLEKS                       R1 R1 K2 ["Type"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["Identifier"]
       19 GETTABLEKS                       R2 R2 K2 ["Type"]
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

PROTO_31:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+5]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K0 ["use"]
       14 CALL                             R3 0 1
       15 MOVE                             R2 R3
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R4 4
       18 CALL                             R3 1 2
       19 GETUPVAL                         R5 3
       20 LOADNIL                          R6
       21 CALL                             R5 1 2
       22 GETUPVAL                         R7 5
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R6
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R9 0 2
       29 MOVE                             R10 R6
       30 MOVE                             R11 R4
       31 SETLIST                          R9 R10 2 [1]
       33 CALL                             R7 2 1
       34 GETUPVAL                         R8 7
       35 GETTABLEKS                       R8 R8 K2 ["useContext"]
       37 GETUPVAL                         R9 8
       38 CALL                             R8 1 1
       39 GETUPVAL                         R9 5
       40 NEWCLOSURE                       R10 P1
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          UPVAL U10
       44 CAPTURE                          UPVAL U11
       45 CAPTURE                          UPVAL U12
       46 CAPTURE                          UPVAL U13
       47 CAPTURE                          VAL R8
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          REF R2
       50 CAPTURE                          UPVAL U14
       51 CAPTURE                          UPVAL U15
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R11 0 6
       56 MOVE                             R12 R1
       57 MOVE                             R13 R8
       58 GETTABLEKS                       R14 R0 K3 ["OnDefinitionLoad"]
       60 MOVE                             R15 R6
       61 MOVE                             R16 R7
       62 MOVE                             R17 R2
       63 SETLIST                          R11 R12 6 [1]
       65 CALL                             R9 2 1
       66 GETUPVAL                         R10 16
       67 NEWCLOSURE                       R11 P2
       68 CAPTURE                          VAL R9
       69 NEWTABLE                         R12 0 1
       71 MOVE                             R13 R9
       72 SETLIST                          R12 R13 1 [1]
       74 CALL                             R10 2 0
       75 GETUPVAL                         R10 16
       76 NEWCLOSURE                       R11 P3
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U12
       79 CAPTURE                          UPVAL U13
       80 CAPTURE                          VAL R8
       81 NEWTABLE                         R12 0 2
       83 GETTABLEKS                       R13 R0 K4 ["CustomTools"]
       85 MOVE                             R14 R8
       86 SETLIST                          R12 R13 2 [1]
       88 CALL                             R10 2 0
       89 GETTABLEKS                       R11 R0 K5 ["SaveDelay"]
       91 JUMPIFNOT                        R11 ; [+3]
       92 GETTABLEKS                       R10 R0 K5 ["SaveDelay"]
       94 JUMP                             ; [+3]
       95 GETUPVAL                         R11 17
       96 CALL                             R11 0 1
       97 DIVK                             R10 R11 K6 [1000]
       98 GETUPVAL                         R11 18
       99 DUPTABLE                         R12 K8 [{"LatestDefinition"}]
      100 SETTABLEKS                       R3 R12 K7 ["LatestDefinition"]
      102 CALL                             R11 1 1
      103 GETUPVAL                         R12 5
      104 NEWCLOSURE                       R13 P4
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R1
      108 NEWTABLE                         R14 0 3
      110 MOVE                             R15 R11
      111 MOVE                             R16 R1
      112 MOVE                             R17 R10
      113 SETLIST                          R14 R15 3 [1]
      115 CALL                             R12 2 1
      116 GETUPVAL                         R13 16
      117 NEWCLOSURE                       R14 P5
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R11
      120 NEWTABLE                         R15 0 2
      122 MOVE                             R16 R1
      123 MOVE                             R17 R11
      124 SETLIST                          R15 R16 2 [1]
      126 CALL                             R13 2 0
      127 GETUPVAL                         R13 16
      128 NEWCLOSURE                       R14 P6
      129 CAPTURE                          VAL R1
      130 CAPTURE                          UPVAL U19
      131 CAPTURE                          VAL R3
      132 NEWTABLE                         R15 0 2
      134 MOVE                             R16 R1
      135 MOVE                             R17 R3
      136 SETLIST                          R15 R16 2 [1]
      138 CALL                             R13 2 0
      139 GETUPVAL                         R13 5
      140 NEWCLOSURE                       R14 P7
      141 CAPTURE                          UPVAL U20
      142 CAPTURE                          VAL R3
      143 CAPTURE                          UPVAL U10
      144 CAPTURE                          UPVAL U21
      145 CAPTURE                          UPVAL U15
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R12
      148 NEWTABLE                         R15 0 3
      150 MOVE                             R16 R3
      151 MOVE                             R17 R7
      152 MOVE                             R18 R12
      153 SETLIST                          R15 R16 3 [1]
      155 CALL                             R13 2 1
      156 GETUPVAL                         R14 5
      157 NEWCLOSURE                       R15 P8
      158 CAPTURE                          UPVAL U22
      159 CAPTURE                          VAL R3
      160 CAPTURE                          UPVAL U23
      161 CAPTURE                          UPVAL U20
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R12
      165 NEWTABLE                         R16 0 3
      167 MOVE                             R17 R3
      168 MOVE                             R18 R7
      169 MOVE                             R19 R12
      170 SETLIST                          R16 R17 3 [1]
      172 CALL                             R14 2 1
      173 GETUPVAL                         R15 5
      174 NEWCLOSURE                       R16 P9
      175 CAPTURE                          UPVAL U20
      176 CAPTURE                          UPVAL U22
      177 CAPTURE                          VAL R3
      178 CAPTURE                          UPVAL U24
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U25
      181 CAPTURE                          UPVAL U13
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R14
      184 NEWTABLE                         R17 0 1
      186 MOVE                             R18 R3
      187 SETLIST                          R17 R18 1 [1]
      189 CALL                             R15 2 1
      190 GETUPVAL                         R16 5
      191 NEWCLOSURE                       R17 P10
      192 CAPTURE                          UPVAL U22
      193 CAPTURE                          VAL R3
      194 CAPTURE                          UPVAL U23
      195 CAPTURE                          UPVAL U20
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R12
      198 NEWTABLE                         R18 0 3
      200 MOVE                             R19 R3
      201 MOVE                             R20 R7
      202 MOVE                             R21 R12
      203 SETLIST                          R18 R19 3 [1]
      205 CALL                             R16 2 1
      206 GETUPVAL                         R17 5
      207 NEWCLOSURE                       R18 P11
      208 CAPTURE                          UPVAL U20
      209 CAPTURE                          VAL R3
      210 CAPTURE                          UPVAL U22
      211 CAPTURE                          UPVAL U15
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R12
      214 NEWTABLE                         R19 0 3
      216 MOVE                             R20 R3
      217 MOVE                             R21 R7
      218 MOVE                             R22 R12
      219 SETLIST                          R19 R20 3 [1]
      221 CALL                             R17 2 1
      222 GETUPVAL                         R18 5
      223 NEWCLOSURE                       R19 P12
      224 CAPTURE                          UPVAL U20
      225 CAPTURE                          VAL R3
      226 CAPTURE                          UPVAL U22
      227 CAPTURE                          UPVAL U26
      228 CAPTURE                          UPVAL U13
      229 CAPTURE                          UPVAL U15
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R12
      232 NEWTABLE                         R20 0 3
      234 MOVE                             R21 R3
      235 MOVE                             R22 R7
      236 MOVE                             R23 R12
      237 SETLIST                          R20 R21 3 [1]
      239 CALL                             R18 2 1
      240 GETUPVAL                         R19 5
      241 NEWCLOSURE                       R20 P13
      242 CAPTURE                          UPVAL U20
      243 CAPTURE                          VAL R3
      244 CAPTURE                          UPVAL U22
      245 CAPTURE                          UPVAL U15
      246 CAPTURE                          VAL R7
      247 CAPTURE                          VAL R12
      248 NEWTABLE                         R21 0 3
      250 MOVE                             R22 R3
      251 MOVE                             R23 R7
      252 MOVE                             R24 R12
      253 SETLIST                          R21 R22 3 [1]
      255 CALL                             R19 2 1
      256 GETUPVAL                         R20 5
      257 NEWCLOSURE                       R21 P14
      258 CAPTURE                          UPVAL U22
      259 CAPTURE                          VAL R3
      260 CAPTURE                          UPVAL U15
      261 CAPTURE                          VAL R7
      262 CAPTURE                          VAL R12
      263 NEWTABLE                         R22 0 3
      265 MOVE                             R23 R3
      266 MOVE                             R24 R7
      267 MOVE                             R25 R12
      268 SETLIST                          R22 R23 3 [1]
      270 CALL                             R20 2 1
      271 GETUPVAL                         R21 5
      272 NEWCLOSURE                       R22 P15
      273 CAPTURE                          UPVAL U22
      274 CAPTURE                          VAL R3
      275 CAPTURE                          UPVAL U15
      276 CAPTURE                          VAL R7
      277 CAPTURE                          VAL R12
      278 NEWTABLE                         R23 0 3
      280 MOVE                             R24 R3
      281 MOVE                             R25 R7
      282 MOVE                             R26 R12
      283 SETLIST                          R23 R24 3 [1]
      285 CALL                             R21 2 1
      286 GETUPVAL                         R22 5
      287 NEWCLOSURE                       R23 P16
      288 CAPTURE                          UPVAL U22
      289 CAPTURE                          VAL R3
      290 CAPTURE                          UPVAL U20
      291 CAPTURE                          UPVAL U15
      292 CAPTURE                          VAL R7
      293 CAPTURE                          VAL R12
      294 NEWTABLE                         R24 0 3
      296 MOVE                             R25 R3
      297 MOVE                             R26 R7
      298 MOVE                             R27 R12
      299 SETLIST                          R24 R25 3 [1]
      301 CALL                             R22 2 1
      302 GETUPVAL                         R23 5
      303 NEWCLOSURE                       R24 P17
      304 CAPTURE                          UPVAL U22
      305 CAPTURE                          VAL R3
      306 CAPTURE                          UPVAL U20
      307 CAPTURE                          UPVAL U15
      308 CAPTURE                          VAL R7
      309 CAPTURE                          VAL R12
      310 NEWTABLE                         R25 0 3
      312 MOVE                             R26 R3
      313 MOVE                             R27 R7
      314 MOVE                             R28 R12
      315 SETLIST                          R25 R26 3 [1]
      317 CALL                             R23 2 1
      318 GETUPVAL                         R24 5
      319 NEWCLOSURE                       R25 P18
      320 CAPTURE                          VAL R6
      321 CAPTURE                          VAL R1
      322 CAPTURE                          UPVAL U13
      323 NEWTABLE                         R26 0 2
      325 MOVE                             R27 R1
      326 MOVE                             R28 R6
      327 SETLIST                          R26 R27 2 [1]
      329 CALL                             R24 2 1
      330 DUPTABLE                         R25 K24 [{"Definition", "ReloadDefinition", "AddTab", "RenameTab", "AddControlsToTab", "RemoveControlFromTab", "RemoveControlsFromTab", "MoveControl", "ToggleTabVisibility", "MoveTab", "DeleteTab", "ResetAllTabs", "DuplicateTab", "ActiveTabState", "SelectTab"}]
      331 SETTABLEKS                       R3 R25 K9 ["Definition"]
      333 SETTABLEKS                       R9 R25 K10 ["ReloadDefinition"]
      335 SETTABLEKS                       R14 R25 K11 ["AddTab"]
      337 SETTABLEKS                       R16 R25 K12 ["RenameTab"]
      339 SETTABLEKS                       R13 R25 K13 ["AddControlsToTab"]
      341 SETTABLEKS                       R17 R25 K14 ["RemoveControlFromTab"]
      343 SETTABLEKS                       R18 R25 K15 ["RemoveControlsFromTab"]
      345 SETTABLEKS                       R19 R25 K16 ["MoveControl"]
      347 SETTABLEKS                       R20 R25 K17 ["ToggleTabVisibility"]
      349 SETTABLEKS                       R21 R25 K18 ["MoveTab"]
      351 SETTABLEKS                       R22 R25 K19 ["DeleteTab"]
      353 SETTABLEKS                       R23 R25 K20 ["ResetAllTabs"]
      355 SETTABLEKS                       R15 R25 K21 ["DuplicateTab"]
      357 SETTABLEKS                       R5 R25 K22 ["ActiveTabState"]
      359 SETTABLEKS                       R24 R25 K23 ["SelectTab"]
      361 GETUPVAL                         R26 7
      362 GETTABLEKS                       R26 R26 K25 ["createElement"]
      364 GETUPVAL                         R27 27
      365 GETTABLEKS                       R27 R27 K26 ["Provider"]
      367 DUPTABLE                         R28 K28 [{"value"}]
      368 SETTABLEKS                       R25 R28 K27 ["value"]
      370 GETTABLEKS                       R29 R0 K29 ["children"]
      372 CALL                             R26 3 -1
      373 CLOSEUPVALS                      R2
      374 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["RibbonDefinition"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Dash"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["append"]
       39 GETTABLEKS                       R6 R4 K14 ["joinDeep"]
       41 GETTABLEKS                       R7 R4 K15 ["some"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K9 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Util"]
       49 GETTABLEKS                       R9 R9 K17 ["deepCopy"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R0 K9 ["Src"]
       56 GETTABLEKS                       R10 R10 K16 ["Util"]
       58 GETTABLEKS                       R10 R10 K18 ["deepFreeze"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Src"]
       65 GETTABLEKS                       R11 R11 K16 ["Util"]
       67 GETTABLEKS                       R11 R11 K19 ["visitControlUris"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R12 R0 K9 ["Src"]
       74 GETTABLEKS                       R12 R12 K16 ["Util"]
       76 GETTABLEKS                       R12 R12 K20 ["controlsIdentifierToString"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K5 [require]
       81 GETTABLEKS                       R13 R0 K6 ["Packages"]
       83 GETTABLEKS                       R13 R13 K21 ["StudioFoundation"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R12 K16 ["Util"]
       88 GETTABLEKS                       R13 R13 K22 ["StudioUri"]
       90 GETIMPORT                        R14 K5 [require]
       92 GETTABLEKS                       R15 R0 K9 ["Src"]
       94 GETTABLEKS                       R15 R15 K16 ["Util"]
       96 GETTABLEKS                       R15 R15 K23 ["isControlEnabledFromFlags"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETTABLEKS                       R16 R0 K9 ["Src"]
      103 GETTABLEKS                       R16 R16 K16 ["Util"]
      105 GETTABLEKS                       R16 R16 K24 ["generateCustomTabIdentifier"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K9 ["Src"]
      112 GETTABLEKS                       R17 R17 K16 ["Util"]
      114 GETTABLEKS                       R17 R17 K25 ["updateActiveTabState"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K9 ["Src"]
      121 GETTABLEKS                       R18 R18 K16 ["Util"]
      123 GETTABLEKS                       R18 R18 K26 ["addCustomControls"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K9 ["Src"]
      130 GETTABLEKS                       R19 R19 K27 ["Resources"]
      132 GETTABLEKS                       R19 R19 K28 ["ControlDefinitions"]
      134 GETTABLEKS                       R19 R19 K29 ["BuiltInRibbonDefinition"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K9 ["Src"]
      141 GETTABLEKS                       R20 R20 K16 ["Util"]
      143 GETTABLEKS                       R20 R20 K30 ["sendDefinitionTelemetry"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K9 ["Src"]
      150 GETTABLEKS                       R21 R21 K31 ["SharedFlags"]
      152 GETTABLEKS                       R21 R21 K32 ["getFIntRibbonSaveDelayMilliseconds"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R22 R0 K9 ["Src"]
      159 GETTABLEKS                       R22 R22 K31 ["SharedFlags"]
      161 GETTABLEKS                       R22 R22 K33 ["getFeatureRibbonDefineTabsInLuau"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R23 R0 K9 ["Src"]
      168 GETTABLEKS                       R23 R23 K31 ["SharedFlags"]
      170 GETTABLEKS                       R23 R23 K34 ["getFFlagRibbonCleanupEmptyUntitledTabs"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R24 R0 K9 ["Src"]
      177 GETTABLEKS                       R24 R24 K10 ["Contexts"]
      179 GETTABLEKS                       R24 R24 K35 ["ControlSignalStoreContext"]
      181 CALL                             R23 1 1
      182 GETTABLEKS                       R24 R1 K36 ["ContextServices"]
      184 GETTABLEKS                       R24 R24 K37 ["Localization"]
      186 GETTABLEKS                       R25 R1 K36 ["ContextServices"]
      188 GETTABLEKS                       R25 R25 K38 ["Plugin"]
      190 GETTABLEKS                       R26 R2 K39 ["useCallback"]
      192 GETTABLEKS                       R27 R2 K40 ["useEffect"]
      194 GETTABLEKS                       R28 R2 K41 ["useRef"]
      196 GETTABLEKS                       R29 R2 K42 ["useState"]
      198 GETIMPORT                        R30 K5 [require]
      200 GETTABLEKS                       R31 R0 K9 ["Src"]
      202 GETTABLEKS                       R31 R31 K43 ["Types"]
      204 CALL                             R30 1 1
      205 MOVE                             R31 R9
      206 DUPTABLE                         R32 K47 [{"Layout", "TabControls", "MezzanineControls"}]
      207 DUPTABLE                         R33 K49 [{"TabLayout"}]
      208 NEWTABLE                         R34 0 0
      210 SETTABLEKS                       R34 R33 K48 ["TabLayout"]
      212 SETTABLEKS                       R33 R32 K44 ["Layout"]
      214 NEWTABLE                         R33 0 0
      216 SETTABLEKS                       R33 R32 K45 ["TabControls"]
      218 NEWTABLE                         R33 0 0
      220 SETTABLEKS                       R33 R32 K46 ["MezzanineControls"]
      222 CALL                             R31 1 1
      223 DUPCLOSURE                       R32 K50 [PROTO_0]
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R32
      226 DUPCLOSURE                       R33 K51 [PROTO_1]
      227 CAPTURE                          VAL R11
      228 DUPCLOSURE                       R34 K52 [PROTO_32]
      229 CAPTURE                          VAL R25
      230 CAPTURE                          VAL R22
      231 CAPTURE                          VAL R24
      232 CAPTURE                          VAL R29
      233 CAPTURE                          VAL R31
      234 CAPTURE                          VAL R26
      235 CAPTURE                          VAL R16
      236 CAPTURE                          VAL R2
      237 CAPTURE                          VAL R23
      238 CAPTURE                          VAL R21
      239 CAPTURE                          VAL R6
      240 CAPTURE                          VAL R18
      241 CAPTURE                          VAL R10
      242 CAPTURE                          VAL R13
      243 CAPTURE                          VAL R33
      244 CAPTURE                          VAL R9
      245 CAPTURE                          VAL R27
      246 CAPTURE                          VAL R20
      247 CAPTURE                          VAL R28
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R11
      250 CAPTURE                          VAL R5
      251 CAPTURE                          VAL R8
      252 CAPTURE                          VAL R15
      253 CAPTURE                          VAL R32
      254 CAPTURE                          VAL R17
      255 CAPTURE                          VAL R7
      256 CAPTURE                          VAL R3
      257 RETURN                           R34 1
