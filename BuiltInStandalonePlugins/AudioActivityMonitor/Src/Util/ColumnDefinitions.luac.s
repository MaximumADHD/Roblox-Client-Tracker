PROTO_0:
        0 MOVE                             R4 R3
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 JUMPIFNOTEQKNIL                  R4 ; [+4]
        5 GETTABLEKS                       R5 R0 K0 ["Children"]
        7 JUMPIF                           R5 ; [+1]
        8 RETURN                           R4 1
        9 JUMPIFNOT                        R2 ; [+13]
       10 GETTABLEKS                       R6 R0 K0 ["Children"]
       12 LENGTH                           R5 R6
       13 LOADN                            R6 1
       14 JUMPIFNOTLE                      R6 R5 ; [+7]
       16 MOVE                             R5 R3
       17 GETTABLEKS                       R7 R0 K0 ["Children"]
       19 GETTABLEN                        R6 R7 1
       20 CALL                             R5 1 -1
       21 RETURN                           R5 -1
       22 RETURN                           R4 1
       23 GETTABLEKS                       R5 R0 K1 ["IsExpanded"]
       25 JUMPIFNOT                        R5 ; [+1]
       26 RETURN                           R4 1
       27 LOADNIL                          R5
       28 LOADB                            R6 0
       29 GETTABLEKS                       R7 R0 K0 ["Children"]
       31 LOADNIL                          R8
       32 LOADNIL                          R9
       33 FORGPREP                         R7
       34 MOVE                             R12 R3
       35 MOVE                             R13 R11
       36 CALL                             R12 1 1
       37 JUMPIFNOTEQKNIL                  R5 ; [+3]
       39 MOVE                             R5 R12
       40 JUMP                             ; [+6]
       41 JUMPIFEQKNIL                     R12 ; [+5]
       43 JUMPIFEQ                         R5 R12 ; [+3]
       45 LOADB                            R6 1
       46 JUMP                             ; [+2]
       47 FORGLOOP                         R7 2 ; [-14]
       49 JUMPIFNOT                        R6 ; [+6]
       50 LOADK                            R9 K2 ["Cell"]
       51 LOADK                            R10 K3 ["Multiple"]
       52 NAMECALL                         R7 R1 K4 ["getText"]
       54 CALL                             R7 3 -1
       55 RETURN                           R7 -1
       56 JUMPIFEQKNIL                     R5 ; [+2]
       58 RETURN                           R5 1
       59 RETURN                           R4 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R2 K5 [string.format]
       10 LOADK                            R4 K6 ["%."]
       11 ORK                              R5 R1 K7 [3]
       12 LOADK                            R6 K8 ["f"]
       13 CONCAT                           R3 R4 R6
       14 MOVE                             R4 R0
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Data"]
        2 GETTABLEKS                       R3 R3 K1 ["Name"]
        4 GETTABLEKS                       R4 R0 K0 ["Data"]
        6 GETTABLEKS                       R4 R4 K2 ["ClassName"]
        8 JUMPIFNOTEQKS                    R4 K3 ["NoOutputs"] ; [+7]
       10 LOADK                            R6 K4 ["NameDisplay"]
       11 LOADK                            R7 K3 ["NoOutputs"]
       12 NAMECALL                         R4 R1 K5 ["getText"]
       14 CALL                             R4 3 1
       15 MOVE                             R3 R4
       16 GETTABLEKS                       R4 R0 K6 ["Children"]
       18 JUMPIFNOT                        R4 ; [+43]
       19 GETTABLEKS                       R5 R0 K6 ["Children"]
       21 LENGTH                           R4 R5
       22 LOADN                            R5 0
       23 JUMPIFNOTLT                      R5 R4 ; [+38]
       25 JUMPIF                           R2 ; [+3]
       26 GETTABLEKS                       R4 R0 K7 ["IsExpanded"]
       28 JUMPIF                           R4 ; [+33]
       29 GETTABLEKS                       R5 R0 K6 ["Children"]
       31 LENGTH                           R4 R5
       32 JUMPIFNOTEQKN                    R4 K8 [1] ; [+20]
       34 LOADK                            R6 K4 ["NameDisplay"]
       35 LOADK                            R7 K9 ["CollapsedWithOneChild"]
       36 DUPTABLE                         R8 K12 [{"name", "childName"}]
       37 SETTABLEKS                       R3 R8 K10 ["name"]
       39 GETTABLEKS                       R10 R0 K6 ["Children"]
       41 GETTABLEN                        R9 R10 1
       42 GETTABLEKS                       R9 R9 K0 ["Data"]
       44 GETTABLEKS                       R9 R9 K1 ["Name"]
       46 SETTABLEKS                       R9 R8 K11 ["childName"]
       48 NAMECALL                         R4 R1 K5 ["getText"]
       50 CALL                             R4 4 1
       51 MOVE                             R3 R4
       52 JUMP                             ; [+9]
       53 LOADK                            R6 K4 ["NameDisplay"]
       54 LOADK                            R7 K13 ["CollapsedWithMultipleChildren"]
       55 DUPTABLE                         R8 K14 [{"name"}]
       56 SETTABLEKS                       R3 R8 K10 ["name"]
       58 NAMECALL                         R4 R1 K5 ["getText"]
       60 CALL                             R4 4 1
       61 MOVE                             R3 R4
       62 GETTABLEKS                       R4 R0 K0 ["Data"]
       64 GETTABLEKS                       R4 R4 K2 ["ClassName"]
       66 JUMPIFNOTEQKS                    R4 K15 ["DetachedSound"] ; [+10]
       68 LOADK                            R6 K4 ["NameDisplay"]
       69 LOADK                            R7 K16 ["Detached"]
       70 DUPTABLE                         R8 K14 [{"name"}]
       71 SETTABLEKS                       R3 R8 K10 ["name"]
       73 NAMECALL                         R4 R1 K5 ["getText"]
       75 CALL                             R4 4 1
       76 MOVE                             R3 R4
       77 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["Data"]
        2 GETTABLEKS                       R3 R3 K1 ["ClassName"]
        4 JUMPIFNOTEQKS                    R3 K2 ["DetachedSound"] ; [+8]
        6 LOADK                            R5 K3 ["NameDisplay"]
        7 LOADK                            R6 K4 ["Detached"]
        8 DUPTABLE                         R7 K7 [{["name"] = "Sound"}]
        9 NAMECALL                         R3 R1 K8 ["getText"]
       11 CALL                             R3 4 -1
       12 RETURN                           R3 -1
       13 GETTABLEKS                       R3 R0 K0 ["Data"]
       15 GETTABLEKS                       R3 R3 K1 ["ClassName"]
       17 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Data"]
        2 GETTABLEKS                       R3 R3 K1 ["Path"]
        4 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["Data"]
        2 GETTABLEKS                       R3 R3 K1 ["TimeBecameActive"]
        4 LOADN                            R4 0
        5 JUMPIFNOTLT                      R3 R4 ; [+3]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["current"]
       12 GETTABLEKS                       R5 R0 K0 ["Data"]
       14 GETTABLEKS                       R5 R5 K1 ["TimeBecameActive"]
       16 SUB                              R3 R4 R5
       17 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R1 K1 ["Asset"]
        4 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 DUPCLOSURE                       R7 K0 [PROTO_6]
        5 CALL                             R3 4 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["getAssetName"]
        9 MOVE                             R5 R3
       10 MOVE                             R6 R1
       11 CALL                             R4 2 1
       12 RETURN                           R4 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R1 K1 ["PlaybackState"]
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETTABLEKS                       R1 R0 K0 ["Data"]
        7 GETTABLEKS                       R1 R1 K1 ["PlaybackState"]
        9 JUMPIFEQKS                       R1 K2 [""] ; [+11]
       11 GETUPVAL                         R1 0
       12 LOADK                            R3 K1 ["PlaybackState"]
       13 GETTABLEKS                       R4 R0 K0 ["Data"]
       15 GETTABLEKS                       R4 R4 K1 ["PlaybackState"]
       17 NAMECALL                         R1 R1 K3 ["getText"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1
       21 GETTABLEKS                       R1 R0 K0 ["Data"]
       23 GETTABLEKS                       R1 R1 K1 ["PlaybackState"]
       25 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R1 K1 ["PlaybackState"]
        4 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADB                            R5 0
        4 DUPCLOSURE                       R6 K0 [PROTO_10]
        5 CALL                             R2 4 1
        6 JUMPIFEQKNIL                     R2 ; [+3]
        8 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 LOADK                            R5 K2 ["Cell"]
       13 LOADK                            R6 K3 ["NoValue"]
       14 NAMECALL                         R3 R1 K4 ["getText"]
       16 CALL                             R3 3 1
       17 JUMPIFEQ                         R2 R3 ; [+8]
       19 LOADK                            R5 K2 ["Cell"]
       20 LOADK                            R6 K5 ["Multiple"]
       21 NAMECALL                         R3 R1 K4 ["getText"]
       23 CALL                             R3 3 1
       24 JUMPIFNOTEQ                      R2 R3 ; [+3]
       26 LOADNIL                          R3
       27 RETURN                           R3 1
       28 LOADK                            R5 K6 ["PlaybackStateDescription"]
       29 MOVE                             R6 R2
       30 NAMECALL                         R3 R1 K4 ["getText"]
       32 CALL                             R3 3 -1
       33 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R1 K1 ["Volume"]
        4 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 DUPCLOSURE                       R7 K0 [PROTO_12]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["ContributingGain"]
        2 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 DUPCLOSURE                       R7 K0 [PROTO_14]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["Data"]
        2 GETTABLEKS                       R3 R3 K1 ["Distance"]
        4 JUMPIFEQKNIL                     R3 ; [+15]
        6 GETTABLEKS                       R3 R0 K0 ["Data"]
        8 GETTABLEKS                       R3 R3 K2 ["Is3D"]
       10 JUMPIF                           R3 ; [+9]
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADN                            R3 0
       13 RETURN                           R3 1
       14 LOADK                            R5 K3 ["Cell"]
       15 LOADK                            R6 K4 ["2D"]
       16 NAMECALL                         R3 R1 K5 ["getText"]
       18 CALL                             R3 3 1
       19 RETURN                           R3 1
       20 GETTABLEKS                       R3 R0 K0 ["Data"]
       22 GETTABLEKS                       R3 R3 K1 ["Distance"]
       24 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADN                            R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["Data"]
        2 GETTABLEKS                       R3 R3 K1 ["AttenuationFactor"]
        4 JUMPIFEQKNIL                     R3 ; [+15]
        6 GETTABLEKS                       R3 R0 K0 ["Data"]
        8 GETTABLEKS                       R3 R3 K2 ["Is3D"]
       10 JUMPIF                           R3 ; [+9]
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADK                            R3 K3 [Infinity]
       13 RETURN                           R3 1
       14 LOADK                            R5 K4 ["Cell"]
       15 LOADK                            R6 K5 ["2D"]
       16 NAMECALL                         R3 R1 K6 ["getText"]
       18 CALL                             R3 3 1
       19 RETURN                           R3 1
       20 GETTABLEKS                       R3 R0 K0 ["Data"]
       22 GETTABLEKS                       R3 R3 K1 ["AttenuationFactor"]
       24 RETURN                           R3 1

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["Data"]
        2 GETTABLEKS                       R3 R3 K1 ["PotentialAudibility"]
        4 RETURN                           R3 1

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["Data"]
        2 GETTABLEKS                       R3 R3 K1 ["Metering"]
        4 JUMPIF                           R3 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 LOADNIL                          R3
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["current"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["MeteringMode"]
       14 GETTABLEKS                       R5 R5 K4 ["Source"]
       16 JUMPIFNOTEQ                      R4 R5 ; [+6]
       18 GETTABLEKS                       R4 R0 K0 ["Data"]
       20 GETTABLEKS                       R3 R4 K1 ["Metering"]
       22 RETURN                           R3 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K2 ["current"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K3 ["MeteringMode"]
       29 GETTABLEKS                       R5 R5 K5 ["ContributingGain"]
       31 JUMPIFNOTEQ                      R4 R5 ; [+10]
       33 GETTABLEKS                       R4 R0 K0 ["Data"]
       35 GETTABLEKS                       R4 R4 K1 ["Metering"]
       37 GETTABLEKS                       R6 R0 K5 ["ContributingGain"]
       39 ORK                              R5 R6 K6 [1]
       40 MUL                              R3 R4 R5
       41 RETURN                           R3 1
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K2 ["current"]
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R5 R5 K3 ["MeteringMode"]
       48 GETTABLEKS                       R5 R5 K7 ["AttenuationFactor"]
       50 JUMPIFNOTEQ                      R4 R5 ; [+12]
       52 GETTABLEKS                       R4 R0 K0 ["Data"]
       54 GETTABLEKS                       R4 R4 K1 ["Metering"]
       56 GETTABLEKS                       R6 R0 K0 ["Data"]
       58 GETTABLEKS                       R6 R6 K7 ["AttenuationFactor"]
       60 ORK                              R5 R6 K6 [1]
       61 MUL                              R3 R4 R5
       62 RETURN                           R3 1
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K2 ["current"]
       66 GETUPVAL                         R5 1
       67 GETTABLEKS                       R5 R5 K3 ["MeteringMode"]
       69 GETTABLEKS                       R5 R5 K8 ["PotentialAudibility"]
       71 JUMPIFNOTEQ                      R4 R5 ; [+10]
       73 GETTABLEKS                       R4 R0 K0 ["Data"]
       75 GETTABLEKS                       R4 R4 K1 ["Metering"]
       77 GETTABLEKS                       R5 R0 K0 ["Data"]
       79 GETTABLEKS                       R5 R5 K8 ["PotentialAudibility"]
       81 MUL                              R3 R4 R5
       82 RETURN                           R3 1

PROTO_21:
        0 NEWTABLE                         R2 0 12
        2 DUPTABLE                         R3 K8 [{[1] = "Name", ["defaultVisibility"] = True, ["defaultWidth"] = 200, ["getValue"], ["isName"] = True}]
        3 DUPCLOSURE                       R4 K9 [PROTO_2]
        4 SETTABLEKS                       R4 R3 K6 ["getValue"]
        6 DUPTABLE                         R4 K13 [{[1] = "ClassName", ["defaultVisibility"] = False, ["defaultWidth"] = 120, ["getValue"]}]
        7 DUPCLOSURE                       R5 K14 [PROTO_3]
        8 SETTABLEKS                       R5 R4 K6 ["getValue"]
       10 DUPTABLE                         R5 K16 [{[1] = "Path", ["defaultVisibility"] = False, ["defaultWidth"] = 200, ["getValue"]}]
       11 DUPCLOSURE                       R6 K17 [PROTO_4]
       12 SETTABLEKS                       R6 R5 K6 ["getValue"]
       14 DUPTABLE                         R6 K22 [{[1] = "Age", ["defaultVisibility"] = False, ["defaultWidth"] = 80, ["getValue"], ["formatValue"], ["isNumeric"] = True}]
       15 NEWCLOSURE                       R7 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R7 R6 K6 ["getValue"]
       19 GETUPVAL                         R7 0
       20 SETTABLEKS                       R7 R6 K20 ["formatValue"]
       22 DUPTABLE                         R7 K24 [{[1] = "Asset", ["defaultVisibility"] = True, ["defaultWidth"] = 200, ["getValue"]}]
       23 DUPCLOSURE                       R8 K25 [PROTO_7]
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 SETTABLEKS                       R8 R7 K6 ["getValue"]
       28 DUPTABLE                         R8 K28 [{[1] = "PlaybackState", ["defaultVisibility"] = True, ["defaultWidth"] = 120, ["getValue"], ["getDescription"]}]
       29 DUPCLOSURE                       R9 K29 [PROTO_9]
       30 CAPTURE                          UPVAL U1
       31 SETTABLEKS                       R9 R8 K6 ["getValue"]
       33 DUPCLOSURE                       R9 K30 [PROTO_11]
       34 CAPTURE                          UPVAL U1
       35 SETTABLEKS                       R9 R8 K27 ["getDescription"]
       37 DUPTABLE                         R9 K32 [{[1] = "Volume", ["defaultVisibility"] = False, ["defaultWidth"] = 80, ["getValue"], ["formatValue"], ["isNumeric"] = True}]
       38 DUPCLOSURE                       R10 K33 [PROTO_13]
       39 CAPTURE                          UPVAL U1
       40 SETTABLEKS                       R10 R9 K6 ["getValue"]
       42 GETUPVAL                         R10 0
       43 SETTABLEKS                       R10 R9 K20 ["formatValue"]
       45 DUPTABLE                         R10 K35 [{[1] = "ContributingGain", ["defaultVisibility"] = False, ["defaultWidth"] = 80, ["getValue"], ["formatValue"], ["isNumeric"] = True}]
       46 DUPCLOSURE                       R11 K36 [PROTO_15]
       47 CAPTURE                          UPVAL U1
       48 SETTABLEKS                       R11 R10 K6 ["getValue"]
       50 GETUPVAL                         R11 0
       51 SETTABLEKS                       R11 R10 K20 ["formatValue"]
       53 DUPTABLE                         R11 K38 [{[1] = "Distance", ["defaultVisibility"] = True, ["defaultWidth"] = 80, ["getValue"], ["formatValue"], ["isNumeric"] = True}]
       54 DUPCLOSURE                       R12 K39 [PROTO_16]
       55 SETTABLEKS                       R12 R11 K6 ["getValue"]
       57 DUPCLOSURE                       R12 K40 [PROTO_17]
       58 CAPTURE                          UPVAL U0
       59 SETTABLEKS                       R12 R11 K20 ["formatValue"]
       61 DUPTABLE                         R12 K42 [{[1] = "AttenuationFactor", ["defaultVisibility"] = False, ["defaultWidth"] = 80, ["getValue"], ["formatValue"], ["isNumeric"] = True}]
       62 DUPCLOSURE                       R13 K43 [PROTO_18]
       63 SETTABLEKS                       R13 R12 K6 ["getValue"]
       65 GETUPVAL                         R13 0
       66 SETTABLEKS                       R13 R12 K20 ["formatValue"]
       68 DUPTABLE                         R13 K45 [{[1] = "PotentialAudibility", ["defaultVisibility"] = True, ["defaultWidth"] = 80, ["getValue"], ["formatValue"], ["isNumeric"] = True}]
       69 DUPCLOSURE                       R14 K46 [PROTO_19]
       70 SETTABLEKS                       R14 R13 K6 ["getValue"]
       72 GETUPVAL                         R14 0
       73 SETTABLEKS                       R14 R13 K20 ["formatValue"]
       75 DUPTABLE                         R14 K50 [{[1] = "Metering", ["defaultVisibility"] = True, ["defaultWidth"] = 160, ["getValue"], ["isMeteringBar"] = True}]
       76 NEWCLOSURE                       R15 P13
       77 CAPTURE                          VAL R1
       78 CAPTURE                          UPVAL U3
       79 SETTABLEKS                       R15 R14 K6 ["getValue"]
       81 SETLIST                          R2 R3 12 [1]
       83 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["AssetInfoUtil"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 DUPCLOSURE                       R4 K11 [PROTO_1]
       25 NEWTABLE                         R5 1 0
       27 DUPCLOSURE                       R6 K12 [PROTO_21]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K13 ["new"]
       34 RETURN                           R5 1
