PROTO_0:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["status"]
        7 JUMPIFNOTEQKS                    R7 K1 ["running"] ; [+2]
        9 ADDK                             R1 R1 K2 [1]
       10 FORGLOOP                         R2 2 ; [-6]
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Steps"]
        3 GETTABLEKS                       R0 R0 K1 ["Prompt"]
        5 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_3:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ReferenceImageService"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 1
        7 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["current"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["current"]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 SETTABLEKS                       R1 R0 K1 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K0 [""]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["current"]
       10 GETTABLEKS                       R0 R0 K2 ["clear"]
       12 CALL                             R0 0 0
       13 GETUPVAL                         R0 3
       14 JUMPIFNOT                        R0 ; [+29]
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K3 ["Steps"]
       19 GETTABLEKS                       R1 R1 K4 ["Prompt"]
       21 SETTABLEKS                       R1 R0 K1 ["current"]
       23 GETUPVAL                         R0 6
       24 GETUPVAL                         R1 5
       25 GETTABLEKS                       R1 R1 K3 ["Steps"]
       27 GETTABLEKS                       R1 R1 K4 ["Prompt"]
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 7
       31 LOADNIL                          R1
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 8
       34 LOADNIL                          R1
       35 CALL                             R0 1 0
       36 GETUPVAL                         R0 9
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K1 ["current"]
       40 GETUPVAL                         R0 10
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K1 ["current"]
       44 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["prompt"]
        3 SETTABLEKS                       R2 R1 K1 ["current"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K0 ["prompt"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R2 R0 K2 ["useMeshGen"]
       12 SETTABLEKS                       R2 R1 K1 ["current"]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R2 R0 K2 ["useMeshGen"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R2 R0 K3 ["quality"]
       21 SETTABLEKS                       R2 R1 K1 ["current"]
       23 GETUPVAL                         R1 5
       24 GETTABLEKS                       R2 R0 K3 ["quality"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 6
       28 GETTABLEKS                       R1 R1 K1 ["current"]
       30 GETTABLEKS                       R1 R1 K4 ["attach"]
       32 GETTABLEKS                       R2 R0 K5 ["attachments"]
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 7
       36 JUMPIFNOT                        R1 ; [+24]
       37 GETUPVAL                         R1 8
       38 GETUPVAL                         R2 9
       39 GETTABLEKS                       R2 R2 K6 ["Steps"]
       41 GETTABLEKS                       R2 R2 K7 ["Settings"]
       43 SETTABLEKS                       R2 R1 K1 ["current"]
       45 GETUPVAL                         R1 10
       46 GETUPVAL                         R2 9
       47 GETTABLEKS                       R2 R2 K6 ["Steps"]
       49 GETTABLEKS                       R2 R2 K7 ["Settings"]
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 11
       53 GETTABLEKS                       R2 R0 K8 ["bounds"]
       55 SETTABLEKS                       R2 R1 K1 ["current"]
       57 GETUPVAL                         R1 12
       58 GETTABLEKS                       R2 R0 K8 ["bounds"]
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["editSessionId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["current"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+15]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["current"]
       10 JUMPIFNOT                        R2 ; [+10]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K1 ["current"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["Steps"]
       17 GETTABLEKS                       R3 R3 K3 ["Settings"]
       19 JUMPIFEQ                         R2 R3 ; [+2]
       21 RETURN                           R0 0
       22 GETTABLEKS                       R2 R1 K4 ["bounds"]
       24 GETTABLEKS                       R3 R1 K5 ["errorMessage"]
       26 GETUPVAL                         R4 4
       27 MOVE                             R5 R2
       28 CALL                             R4 1 0
       29 GETUPVAL                         R4 5
       30 MOVE                             R5 R3
       31 CALL                             R4 1 0
       32 GETUPVAL                         R4 6
       33 SETTABLEKS                       R2 R4 K1 ["current"]
       35 GETUPVAL                         R4 7
       36 SETTABLEKS                       R3 R4 K1 ["current"]
       38 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["SceneGenBoundsChanged"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          UPVAL U10
       18 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       20 CALL                             R0 3 2
       21 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+29]
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 GETUPVAL                         R0 4
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K0 ["current"]
       16 GETUPVAL                         R0 5
       17 GETUPVAL                         R1 6
       18 GETTABLEKS                       R1 R1 K1 ["Steps"]
       20 GETTABLEKS                       R1 R1 K2 ["Prompt"]
       22 SETTABLEKS                       R1 R0 K0 ["current"]
       24 GETUPVAL                         R0 7
       25 GETUPVAL                         R1 6
       26 GETTABLEKS                       R1 R1 K1 ["Steps"]
       28 GETTABLEKS                       R1 R1 K2 ["Prompt"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PluginLoaderContext"]
        3 GETTABLEKS                       R1 R1 K1 ["actionTriggeredSignals"]
        5 GETTABLEN                        R0 R1 2
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R1 R0 K2 ["Connect"]
       14 CALL                             R1 2 1
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          VAL R1
       17 RETURN                           R2 1

PROTO_17:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R3 K6 [{["status"] = "failed", ["snapshot"]}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K5 ["snapshot"]
        9 SETTABLEKS                       R4 R3 K5 ["snapshot"]
       11 SETTABLE                         R3 R1 R2
       12 RETURN                           R1 1

PROTO_18:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R3 R1 K3 ["requestId"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFEQKS                       R2 K4 ["string"] ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R1 K3 ["requestId"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K5 ["current"]
       21 GETTABLE                         R3 R4 R2
       22 JUMPIFNOTEQKNIL                  R3 ; [+2]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R4 R1 K6 ["ok"]
       27 JUMPIF                           R4 ; [+3]
       28 GETTABLEKS                       R4 R1 K7 ["cancelled"]
       30 JUMPIFNOT                        R4 ; [+14]
       31 GETUPVAL                         R4 1
       32 MOVE                             R5 R2
       33 CALL                             R4 1 0
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K5 ["current"]
       37 GETTABLEKS                       R4 R4 K8 ["release"]
       39 GETTABLEKS                       R5 R3 K9 ["snapshot"]
       41 GETTABLEKS                       R5 R5 K10 ["attachments"]
       43 CALL                             R4 1 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R4 R1 K11 ["rejected"]
       47 JUMPIFNOT                        R4 ; [+11]
       48 GETUPVAL                         R4 1
       49 MOVE                             R5 R2
       50 CALL                             R4 1 0
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R5 R3 K9 ["snapshot"]
       54 CALL                             R4 1 0
       55 GETUPVAL                         R4 4
       56 LOADB                            R5 1
       57 CALL                             R4 1 0
       58 RETURN                           R0 0
       59 GETUPVAL                         R4 5
       60 NEWCLOSURE                       R5 P0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CALL                             R4 1 0
       64 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["SceneGenComplete"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       16 CALL                             R0 3 2
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          VAL R1
       19 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K0 ["current"]
        9 GETTABLEKS                       R5 R5 K1 ["release"]
       11 GETTABLEKS                       R6 R4 K2 ["snapshot"]
       13 GETTABLEKS                       R6 R6 K3 ["attachments"]
       15 CALL                             R5 1 0
       16 FORGLOOP                         R0 2 ; [-11]
       18 RETURN                           R0 0

PROTO_22:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_23:
        0 DUPTABLE                         R0 K13 [{"visible", "activeRunCount", "maxRuns", "prompt", "useMeshGen", "quality", "imageIds", "imageLoading", "imageError", "editSessionId", "step", "bounds", "boundsError"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["visible"]
        4 GETUPVAL                         R2 1
        5 LOADN                            R3 0
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETTABLEKS                       R9 R8 K14 ["status"]
       12 JUMPIFNOTEQKS                    R9 K15 ["running"] ; [+2]
       14 ADDK                             R3 R3 K16 [1]
       15 FORGLOOP                         R4 2 ; [-6]
       17 MOVE                             R1 R3
       18 SETTABLEKS                       R1 R0 K1 ["activeRunCount"]
       20 GETUPVAL                         R1 2
       21 SETTABLEKS                       R1 R0 K2 ["maxRuns"]
       23 GETUPVAL                         R1 3
       24 SETTABLEKS                       R1 R0 K3 ["prompt"]
       26 GETUPVAL                         R1 4
       27 SETTABLEKS                       R1 R0 K4 ["useMeshGen"]
       29 GETUPVAL                         R1 5
       30 SETTABLEKS                       R1 R0 K5 ["quality"]
       32 GETUPVAL                         R1 6
       33 GETTABLEKS                       R1 R1 K6 ["imageIds"]
       35 SETTABLEKS                       R1 R0 K6 ["imageIds"]
       37 GETUPVAL                         R1 6
       38 GETTABLEKS                       R1 R1 K17 ["loading"]
       40 SETTABLEKS                       R1 R0 K7 ["imageLoading"]
       42 GETUPVAL                         R1 6
       43 GETTABLEKS                       R1 R1 K18 ["errorMessage"]
       45 SETTABLEKS                       R1 R0 K8 ["imageError"]
       47 GETUPVAL                         R1 7
       48 SETTABLEKS                       R1 R0 K9 ["editSessionId"]
       50 GETUPVAL                         R2 8
       51 JUMPIFNOT                        R2 ; [+2]
       52 GETUPVAL                         R1 9
       53 JUMP                             ; [+1]
       54 LOADNIL                          R1
       55 SETTABLEKS                       R1 R0 K10 ["step"]
       57 GETUPVAL                         R2 8
       58 JUMPIFNOT                        R2 ; [+2]
       59 GETUPVAL                         R1 10
       60 JUMP                             ; [+1]
       61 LOADNIL                          R1
       62 SETTABLEKS                       R1 R0 K11 ["bounds"]
       64 GETUPVAL                         R2 8
       65 JUMPIFNOT                        R2 ; [+2]
       66 GETUPVAL                         R1 11
       67 JUMP                             ; [+1]
       68 LOADNIL                          R1
       69 SETTABLEKS                       R1 R0 K12 ["boundsError"]
       71 GETUPVAL                         R1 12
       72 GETTABLEKS                       R1 R1 K19 ["Model"]
       74 GETTABLEKS                       R1 R1 K20 ["publish"]
       76 GETUPVAL                         R2 13
       77 MOVE                             R3 R0
       78 CALL                             R1 2 0
       79 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 GETTABLEKS                       R0 R0 K1 ["loading"]
        7 JUMPIF                           R0 ; [+10]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["current"]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K2 ["Steps"]
       14 GETTABLEKS                       R1 R1 K3 ["Prompt"]
       16 JUMPIFEQ                         R0 R1 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 4
       20 GETTABLEKS                       R0 R0 K0 ["current"]
       22 JUMPIFNOTEQKS                    R0 K4 [""] ; [+11]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K0 ["current"]
       27 GETTABLEKS                       R1 R1 K5 ["getContents"]
       29 CALL                             R1 0 1
       30 LENGTH                           R0 R1
       31 JUMPIFNOTEQKN                    R0 K6 [0] ; [+2]
       33 RETURN                           R0 0
       34 GETUPVAL                         R0 5
       35 LOADNIL                          R1
       36 CALL                             R0 1 0
       37 GETUPVAL                         R0 6
       38 LOADNIL                          R1
       39 CALL                             R0 1 0
       40 GETUPVAL                         R0 7
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K0 ["current"]
       44 GETUPVAL                         R0 8
       45 LOADNIL                          R1
       46 SETTABLEKS                       R1 R0 K0 ["current"]
       48 GETUPVAL                         R0 2
       49 GETUPVAL                         R1 3
       50 GETTABLEKS                       R1 R1 K2 ["Steps"]
       52 GETTABLEKS                       R1 R1 K7 ["Settings"]
       54 SETTABLEKS                       R1 R0 K0 ["current"]
       56 GETUPVAL                         R0 9
       57 GETUPVAL                         R1 3
       58 GETTABLEKS                       R1 R1 K2 ["Steps"]
       60 GETTABLEKS                       R1 R1 K7 ["Settings"]
       62 CALL                             R0 1 0
       63 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["Steps"]
        6 GETTABLEKS                       R1 R1 K1 ["Prompt"]
        8 SETTABLEKS                       R1 R0 K2 ["current"]
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["Steps"]
       14 GETTABLEKS                       R1 R1 K1 ["Prompt"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+32]
        2 GETUPVAL                         R3 1
        3 JUMPIFNOT                        R3 ; [+30]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["current"]
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K1 ["Steps"]
       10 GETTABLEKS                       R4 R4 K2 ["Settings"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+21]
       14 GETUPVAL                         R3 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R5 R5 K3 ["SceneGenSetBoundsAxis"]
       18 LOADNIL                          R6
       19 DUPTABLE                         R7 K8 [{"editSessionId", "field", "axis", "value"}]
       20 GETUPVAL                         R8 5
       21 GETTABLEKS                       R8 R8 K0 ["current"]
       23 SETTABLEKS                       R8 R7 K4 ["editSessionId"]
       25 SETTABLEKS                       R0 R7 K5 ["field"]
       27 SETTABLEKS                       R1 R7 K6 ["axis"]
       29 SETTABLEKS                       R2 R7 K7 ["value"]
       31 NAMECALL                         R3 R3 K9 ["FireHost"]
       33 CALL                             R3 4 0
       34 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["pick"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETTABLEKS                       R1 R1 K1 ["remove"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_32:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R3 K6 [{["status"] = "running", ["snapshot"]}]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K5 ["snapshot"]
        9 SETTABLE                         R3 R1 R2
       10 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K1 ["Steps"]
       11 GETTABLEKS                       R1 R1 K2 ["Settings"]
       13 JUMPIFEQ                         R0 R1 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 1
       17 JUMPIFNOT                        R0 ; [+11]
       18 GETUPVAL                         R0 4
       19 GETTABLEKS                       R0 R0 K0 ["current"]
       21 JUMPIFEQKNIL                     R0 ; [+6]
       23 GETUPVAL                         R0 5
       24 GETTABLEKS                       R0 R0 K0 ["current"]
       26 JUMPIFEQKNIL                     R0 ; [+2]
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 6
       30 GETTABLEKS                       R1 R1 K0 ["current"]
       32 LOADN                            R2 0
       33 MOVE                             R3 R1
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 FORGPREP                         R3
       37 GETTABLEKS                       R8 R7 K3 ["status"]
       39 JUMPIFNOTEQKS                    R8 K4 ["running"] ; [+2]
       41 ADDK                             R2 R2 K5 [1]
       42 FORGLOOP                         R3 2 ; [-6]
       44 MOVE                             R0 R2
       45 GETUPVAL                         R1 7
       46 JUMPIFNOTLE                      R1 R0 ; [+2]
       48 RETURN                           R0 0
       49 GETUPVAL                         R0 8
       50 GETTABLEKS                       R0 R0 K0 ["current"]
       52 GETTABLEKS                       R0 R0 K6 ["loading"]
       54 JUMPIFNOT                        R0 ; [+1]
       55 RETURN                           R0 0
       56 GETUPVAL                         R0 8
       57 GETTABLEKS                       R0 R0 K0 ["current"]
       59 GETTABLEKS                       R0 R0 K7 ["getContents"]
       61 CALL                             R0 0 1
       62 GETUPVAL                         R1 9
       63 GETTABLEKS                       R1 R1 K0 ["current"]
       65 JUMPIFNOTEQKS                    R1 K8 [""] ; [+5]
       67 LENGTH                           R1 R0
       68 JUMPIFNOTEQKN                    R1 K9 [0] ; [+2]
       70 RETURN                           R0 0
       71 GETUPVAL                         R1 10
       72 LOADB                            R3 0
       73 NAMECALL                         R1 R1 K10 ["GenerateGUID"]
       75 CALL                             R1 2 1
       76 DUPTABLE                         R2 K16 [{"prompt", "useMeshGen", "quality", "attachments", "bounds"}]
       77 GETUPVAL                         R3 9
       78 GETTABLEKS                       R3 R3 K0 ["current"]
       80 SETTABLEKS                       R3 R2 K11 ["prompt"]
       82 GETUPVAL                         R3 11
       83 GETTABLEKS                       R3 R3 K0 ["current"]
       85 SETTABLEKS                       R3 R2 K12 ["useMeshGen"]
       87 GETUPVAL                         R3 12
       88 GETTABLEKS                       R3 R3 K0 ["current"]
       90 SETTABLEKS                       R3 R2 K13 ["quality"]
       92 GETUPVAL                         R3 8
       93 GETTABLEKS                       R3 R3 K0 ["current"]
       95 GETTABLEKS                       R3 R3 K17 ["detach"]
       97 CALL                             R3 0 1
       98 SETTABLEKS                       R3 R2 K14 ["attachments"]
      100 GETUPVAL                         R4 1
      101 JUMPIFNOT                        R4 ; [+4]
      102 GETUPVAL                         R3 4
      103 GETTABLEKS                       R3 R3 K0 ["current"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R3
      107 SETTABLEKS                       R3 R2 K15 ["bounds"]
      109 GETUPVAL                         R3 0
      110 GETUPVAL                         R5 13
      111 GETTABLEKS                       R5 R5 K18 ["SceneGenGenerate"]
      113 LOADNIL                          R6
      114 DUPTABLE                         R7 K21 [{"requestId", "prompt", "useMeshGen", "quality", "images"}]
      115 SETTABLEKS                       R1 R7 K19 ["requestId"]
      117 GETTABLEKS                       R8 R2 K11 ["prompt"]
      119 SETTABLEKS                       R8 R7 K11 ["prompt"]
      121 GETTABLEKS                       R8 R2 K12 ["useMeshGen"]
      123 SETTABLEKS                       R8 R7 K12 ["useMeshGen"]
      125 GETTABLEKS                       R8 R2 K13 ["quality"]
      127 SETTABLEKS                       R8 R7 K13 ["quality"]
      129 SETTABLEKS                       R0 R7 K20 ["images"]
      131 NAMECALL                         R3 R3 K22 ["FireHost"]
      133 CALL                             R3 4 0
      134 GETUPVAL                         R3 14
      135 NEWCLOSURE                       R4 P0
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R2
      138 CALL                             R3 1 0
      139 GETUPVAL                         R3 9
      140 LOADK                            R4 K8 [""]
      141 SETTABLEKS                       R4 R3 K0 ["current"]
      143 GETUPVAL                         R3 15
      144 LOADK                            R4 K8 [""]
      145 CALL                             R3 1 0
      146 GETUPVAL                         R3 16
      147 LOADB                            R4 0
      148 CALL                             R3 1 0
      149 GETUPVAL                         R3 1
      150 JUMPIFNOT                        R3 ; [+29]
      151 GETUPVAL                         R3 2
      152 GETUPVAL                         R4 3
      153 GETTABLEKS                       R4 R4 K1 ["Steps"]
      155 GETTABLEKS                       R4 R4 K23 ["Prompt"]
      157 SETTABLEKS                       R4 R3 K0 ["current"]
      159 GETUPVAL                         R3 17
      160 GETUPVAL                         R4 3
      161 GETTABLEKS                       R4 R4 K1 ["Steps"]
      163 GETTABLEKS                       R4 R4 K23 ["Prompt"]
      165 CALL                             R3 1 0
      166 GETUPVAL                         R3 18
      167 LOADNIL                          R4
      168 CALL                             R3 1 0
      169 GETUPVAL                         R3 19
      170 LOADNIL                          R4
      171 CALL                             R3 1 0
      172 GETUPVAL                         R3 4
      173 LOADNIL                          R4
      174 SETTABLEKS                       R4 R3 K0 ["current"]
      176 GETUPVAL                         R3 5
      177 LOADNIL                          R4
      178 SETTABLEKS                       R4 R3 K0 ["current"]
      180 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_35:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+6]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["current"]
       10 GETTABLE                         R1 R2 R0
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 JUMPIFEQKNIL                     R1 ; [+12]
       15 GETTABLEKS                       R2 R1 K4 ["status"]
       17 JUMPIFNOTEQKS                    R2 K5 ["failed"] ; [+8]
       19 GETUPVAL                         R2 1
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R3 R1 K6 ["snapshot"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 3
       27 LOADB                            R3 1
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_37:
        0 NEWTABLE                         R0 0 11
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Model"]
        5 GETTABLEKS                       R1 R1 K1 ["onIntent"]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["Next"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U9
       20 CAPTURE                          UPVAL U10
       21 CAPTURE                          UPVAL U11
       22 CALL                             R1 3 1
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K0 ["Model"]
       26 GETTABLEKS                       R2 R2 K1 ["onIntent"]
       28 GETUPVAL                         R3 1
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K3 ["Back"]
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U11
       37 CALL                             R2 3 1
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K0 ["Model"]
       41 GETTABLEKS                       R3 R3 K1 ["onIntent"]
       43 GETUPVAL                         R4 1
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K4 ["SetBoundsAxis"]
       47 NEWCLOSURE                       R6 P2
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U12
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U13
       53 CAPTURE                          UPVAL U14
       54 CALL                             R3 3 1
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K0 ["Model"]
       58 GETTABLEKS                       R4 R4 K1 ["onIntent"]
       60 GETUPVAL                         R5 1
       61 GETUPVAL                         R6 2
       62 GETTABLEKS                       R6 R6 K5 ["SetPrompt"]
       64 NEWCLOSURE                       R7 P3
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          UPVAL U15
       67 CALL                             R4 3 1
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K0 ["Model"]
       71 GETTABLEKS                       R5 R5 K1 ["onIntent"]
       73 GETUPVAL                         R6 1
       74 GETUPVAL                         R7 2
       75 GETTABLEKS                       R7 R7 K6 ["SetUseMeshGen"]
       77 NEWCLOSURE                       R8 P4
       78 CAPTURE                          UPVAL U16
       79 CAPTURE                          UPVAL U17
       80 CALL                             R5 3 1
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R6 R6 K0 ["Model"]
       84 GETTABLEKS                       R6 R6 K1 ["onIntent"]
       86 GETUPVAL                         R7 1
       87 GETUPVAL                         R8 2
       88 GETTABLEKS                       R8 R8 K7 ["SetQuality"]
       90 NEWCLOSURE                       R9 P5
       91 CAPTURE                          UPVAL U18
       92 CAPTURE                          UPVAL U19
       93 CALL                             R6 3 1
       94 GETUPVAL                         R7 0
       95 GETTABLEKS                       R7 R7 K0 ["Model"]
       97 GETTABLEKS                       R7 R7 K1 ["onIntent"]
       99 GETUPVAL                         R8 1
      100 GETUPVAL                         R9 2
      101 GETTABLEKS                       R9 R9 K8 ["PickImage"]
      103 NEWCLOSURE                       R10 P6
      104 CAPTURE                          UPVAL U4
      105 CALL                             R7 3 1
      106 GETUPVAL                         R8 0
      107 GETTABLEKS                       R8 R8 K0 ["Model"]
      109 GETTABLEKS                       R8 R8 K1 ["onIntent"]
      111 GETUPVAL                         R9 1
      112 GETUPVAL                         R10 2
      113 GETTABLEKS                       R10 R10 K9 ["RemoveImage"]
      115 NEWCLOSURE                       R11 P7
      116 CAPTURE                          UPVAL U4
      117 CALL                             R8 3 1
      118 GETUPVAL                         R9 0
      119 GETTABLEKS                       R9 R9 K0 ["Model"]
      121 GETTABLEKS                       R9 R9 K1 ["onIntent"]
      123 GETUPVAL                         R10 1
      124 GETUPVAL                         R11 2
      125 GETTABLEKS                       R11 R11 K10 ["Generate"]
      127 NEWCLOSURE                       R12 P8
      128 CAPTURE                          UPVAL U12
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          UPVAL U5
      131 CAPTURE                          UPVAL U0
      132 CAPTURE                          UPVAL U9
      133 CAPTURE                          UPVAL U10
      134 CAPTURE                          UPVAL U20
      135 CAPTURE                          UPVAL U21
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          UPVAL U6
      138 CAPTURE                          UPVAL U22
      139 CAPTURE                          UPVAL U16
      140 CAPTURE                          UPVAL U18
      141 CAPTURE                          UPVAL U13
      142 CAPTURE                          UPVAL U23
      143 CAPTURE                          UPVAL U15
      144 CAPTURE                          UPVAL U24
      145 CAPTURE                          UPVAL U11
      146 CAPTURE                          UPVAL U7
      147 CAPTURE                          UPVAL U8
      148 CALL                             R9 3 1
      149 GETUPVAL                         R10 0
      150 GETTABLEKS                       R10 R10 K0 ["Model"]
      152 GETTABLEKS                       R10 R10 K1 ["onIntent"]
      154 GETUPVAL                         R11 1
      155 GETUPVAL                         R12 2
      156 GETTABLEKS                       R12 R12 K11 ["Close"]
      158 NEWCLOSURE                       R13 P9
      159 CAPTURE                          UPVAL U25
      160 CAPTURE                          UPVAL U26
      161 CALL                             R10 3 1
      162 GETUPVAL                         R11 0
      163 GETTABLEKS                       R11 R11 K0 ["Model"]
      165 GETTABLEKS                       R11 R11 K1 ["onIntent"]
      167 GETUPVAL                         R12 1
      168 GETUPVAL                         R13 2
      169 GETTABLEKS                       R13 R13 K12 ["Open"]
      171 NEWCLOSURE                       R14 P10
      172 CAPTURE                          UPVAL U20
      173 CAPTURE                          UPVAL U27
      174 CAPTURE                          UPVAL U28
      175 CAPTURE                          UPVAL U24
      176 CALL                             R11 3 -1
      177 SETLIST                          R0 R1 -1 [1]
      179 NEWCLOSURE                       R1 P11
      180 CAPTURE                          VAL R0
      181 RETURN                           R1 1

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 GETTABLEKS                       R2 R0 K1 ["Networking"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["useState"]
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K2 ["useState"]
       12 LOADK                            R6 K3 [""]
       13 CALL                             R5 1 2
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K2 ["useState"]
       17 LOADB                            R8 0
       18 CALL                             R7 1 2
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K2 ["useState"]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K4 ["Constants"]
       25 GETTABLEKS                       R10 R10 K5 ["DEFAULT_SCENE_QUALITY"]
       27 CALL                             R9 1 2
       28 GETUPVAL                         R11 0
       29 GETTABLEKS                       R11 R11 K2 ["useState"]
       31 NEWTABLE                         R12 0 0
       33 CALL                             R11 1 2
       34 GETUPVAL                         R13 2
       35 CALL                             R13 0 1
       36 GETUPVAL                         R14 3
       37 GETTABLEKS                       R14 R14 K6 ["getFFlagGen3dSceneGenSettings"]
       39 CALL                             R14 0 1
       40 GETUPVAL                         R15 0
       41 GETTABLEKS                       R15 R15 K2 ["useState"]
       43 DUPCLOSURE                       R16 K7 [PROTO_1]
       44 CAPTURE                          UPVAL U4
       45 CALL                             R15 1 2
       46 GETUPVAL                         R17 0
       47 GETTABLEKS                       R17 R17 K2 ["useState"]
       49 DUPCLOSURE                       R18 K8 [PROTO_2]
       50 CALL                             R17 1 2
       51 GETUPVAL                         R19 0
       52 GETTABLEKS                       R19 R19 K2 ["useState"]
       54 DUPCLOSURE                       R20 K9 [PROTO_3]
       55 CALL                             R19 1 2
       56 GETUPVAL                         R21 0
       57 GETTABLEKS                       R21 R21 K10 ["useRef"]
       59 MOVE                             R22 R17
       60 CALL                             R21 1 1
       61 SETTABLEKS                       R17 R21 K11 ["current"]
       63 GETUPVAL                         R22 0
       64 GETTABLEKS                       R22 R22 K10 ["useRef"]
       66 MOVE                             R23 R19
       67 CALL                             R22 1 1
       68 SETTABLEKS                       R19 R22 K11 ["current"]
       70 GETUPVAL                         R23 0
       71 GETTABLEKS                       R23 R23 K10 ["useRef"]
       73 MOVE                             R24 R15
       74 CALL                             R23 1 1
       75 SETTABLEKS                       R15 R23 K11 ["current"]
       77 GETUPVAL                         R24 0
       78 GETTABLEKS                       R24 R24 K10 ["useRef"]
       80 MOVE                             R25 R13
       81 CALL                             R24 1 1
       82 SETTABLEKS                       R13 R24 K11 ["current"]
       84 GETUPVAL                         R25 0
       85 GETTABLEKS                       R25 R25 K12 ["useMemo"]
       87 GETUPVAL                         R26 5
       88 NEWTABLE                         R27 0 0
       90 CALL                             R25 2 1
       91 GETUPVAL                         R26 0
       92 GETTABLEKS                       R26 R26 K12 ["useMemo"]
       94 NEWCLOSURE                       R27 P3
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 NEWTABLE                         R28 0 2
      100 MOVE                             R29 R1
      101 GETTABLEKS                       R30 R0 K13 ["ReferenceImageService"]
      103 SETLIST                          R28 R29 2 [1]
      105 CALL                             R26 2 1
      106 GETUPVAL                         R27 7
      107 MOVE                             R28 R26
      108 MOVE                             R29 R25
      109 CALL                             R27 2 1
      110 GETUPVAL                         R28 0
      111 GETTABLEKS                       R28 R28 K10 ["useRef"]
      113 MOVE                             R29 R5
      114 CALL                             R28 1 1
      115 SETTABLEKS                       R5 R28 K11 ["current"]
      117 GETUPVAL                         R29 0
      118 GETTABLEKS                       R29 R29 K10 ["useRef"]
      120 MOVE                             R30 R7
      121 CALL                             R29 1 1
      122 SETTABLEKS                       R7 R29 K11 ["current"]
      124 GETUPVAL                         R30 0
      125 GETTABLEKS                       R30 R30 K10 ["useRef"]
      127 MOVE                             R31 R9
      128 CALL                             R30 1 1
      129 SETTABLEKS                       R9 R30 K11 ["current"]
      131 GETUPVAL                         R31 0
      132 GETTABLEKS                       R31 R31 K10 ["useRef"]
      134 MOVE                             R32 R11
      135 CALL                             R31 1 1
      136 GETUPVAL                         R32 0
      137 GETTABLEKS                       R32 R32 K10 ["useRef"]
      139 MOVE                             R33 R3
      140 CALL                             R32 1 1
      141 SETTABLEKS                       R3 R32 K11 ["current"]
      143 GETUPVAL                         R33 0
      144 GETTABLEKS                       R33 R33 K10 ["useRef"]
      146 MOVE                             R34 R27
      147 CALL                             R33 1 1
      148 SETTABLEKS                       R27 R33 K11 ["current"]
      150 GETUPVAL                         R34 0
      151 GETTABLEKS                       R34 R34 K14 ["useCallback"]
      153 NEWCLOSURE                       R35 P4
      154 CAPTURE                          VAL R31
      155 CAPTURE                          VAL R12
      156 NEWTABLE                         R36 0 0
      158 CALL                             R34 2 1
      159 GETUPVAL                         R35 0
      160 GETTABLEKS                       R35 R35 K14 ["useCallback"]
      162 NEWCLOSURE                       R36 P5
      163 CAPTURE                          VAL R34
      164 NEWTABLE                         R37 0 1
      166 MOVE                             R38 R34
      167 SETLIST                          R37 R38 1 [1]
      169 CALL                             R35 2 1
      170 GETUPVAL                         R36 0
      171 GETTABLEKS                       R36 R36 K14 ["useCallback"]
      173 NEWCLOSURE                       R37 P6
      174 CAPTURE                          VAL R28
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R33
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R23
      179 CAPTURE                          UPVAL U4
      180 CAPTURE                          VAL R16
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R21
      184 CAPTURE                          VAL R22
      185 NEWTABLE                         R38 0 1
      187 MOVE                             R39 R14
      188 SETLIST                          R38 R39 1 [1]
      190 CALL                             R36 2 1
      191 GETUPVAL                         R37 0
      192 GETTABLEKS                       R37 R37 K14 ["useCallback"]
      194 NEWCLOSURE                       R38 P7
      195 CAPTURE                          VAL R28
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R29
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R30
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R33
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R23
      204 CAPTURE                          UPVAL U4
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R18
      208 NEWTABLE                         R39 0 1
      210 MOVE                             R40 R14
      211 SETLIST                          R39 R40 1 [1]
      213 CALL                             R37 2 1
      214 GETUPVAL                         R38 0
      215 GETTABLEKS                       R38 R38 K15 ["useEffect"]
      217 NEWCLOSURE                       R39 P8
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R2
      220 CAPTURE                          UPVAL U8
      221 CAPTURE                          VAL R24
      222 CAPTURE                          VAL R32
      223 CAPTURE                          VAL R23
      224 CAPTURE                          UPVAL U4
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R21
      228 CAPTURE                          VAL R22
      229 NEWTABLE                         R40 0 2
      231 MOVE                             R41 R2
      232 MOVE                             R42 R14
      233 SETLIST                          R40 R41 2 [1]
      235 CALL                             R38 2 0
      236 GETUPVAL                         R38 0
      237 GETTABLEKS                       R38 R38 K15 ["useEffect"]
      239 NEWCLOSURE                       R39 P9
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R18
      242 CAPTURE                          VAL R20
      243 CAPTURE                          VAL R21
      244 CAPTURE                          VAL R22
      245 CAPTURE                          VAL R23
      246 CAPTURE                          UPVAL U4
      247 CAPTURE                          VAL R16
      248 NEWTABLE                         R40 0 2
      250 MOVE                             R41 R13
      251 MOVE                             R42 R14
      252 SETLIST                          R40 R41 2 [1]
      254 CALL                             R38 2 0
      255 GETUPVAL                         R38 0
      256 GETTABLEKS                       R38 R38 K14 ["useCallback"]
      258 NEWCLOSURE                       R39 P10
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R36
      261 NEWTABLE                         R40 0 1
      263 MOVE                             R41 R36
      264 SETLIST                          R40 R41 1 [1]
      266 CALL                             R38 2 1
      267 GETUPVAL                         R39 0
      268 GETTABLEKS                       R39 R39 K15 ["useEffect"]
      270 NEWCLOSURE                       R40 P11
      271 CAPTURE                          VAL R0
      272 CAPTURE                          VAL R32
      273 CAPTURE                          VAL R38
      274 CAPTURE                          VAL R4
      275 NEWTABLE                         R41 0 2
      277 GETTABLEKS                       R42 R0 K16 ["PluginLoaderContext"]
      279 MOVE                             R43 R38
      280 SETLIST                          R41 R42 2 [1]
      282 CALL                             R39 2 0
      283 GETUPVAL                         R39 0
      284 GETTABLEKS                       R39 R39 K15 ["useEffect"]
      286 NEWCLOSURE                       R40 P12
      287 CAPTURE                          VAL R2
      288 CAPTURE                          UPVAL U8
      289 CAPTURE                          VAL R31
      290 CAPTURE                          VAL R35
      291 CAPTURE                          VAL R33
      292 CAPTURE                          VAL R37
      293 CAPTURE                          VAL R4
      294 CAPTURE                          VAL R34
      295 NEWTABLE                         R41 0 4
      297 MOVE                             R42 R2
      298 MOVE                             R43 R34
      299 MOVE                             R44 R35
      300 MOVE                             R45 R37
      301 SETLIST                          R41 R42 4 [1]
      303 CALL                             R39 2 0
      304 GETUPVAL                         R39 0
      305 GETTABLEKS                       R39 R39 K15 ["useEffect"]
      307 NEWCLOSURE                       R40 P13
      308 CAPTURE                          VAL R31
      309 CAPTURE                          VAL R33
      310 NEWTABLE                         R41 0 0
      312 CALL                             R39 2 0
      313 GETUPVAL                         R39 0
      314 GETTABLEKS                       R39 R39 K15 ["useEffect"]
      316 NEWCLOSURE                       R40 P14
      317 CAPTURE                          VAL R3
      318 CAPTURE                          VAL R11
      319 CAPTURE                          UPVAL U9
      320 CAPTURE                          VAL R5
      321 CAPTURE                          VAL R7
      322 CAPTURE                          VAL R9
      323 CAPTURE                          VAL R27
      324 CAPTURE                          VAL R13
      325 CAPTURE                          VAL R14
      326 CAPTURE                          VAL R15
      327 CAPTURE                          VAL R17
      328 CAPTURE                          VAL R19
      329 CAPTURE                          UPVAL U4
      330 CAPTURE                          VAL R1
      331 NEWTABLE                         R41 0 14
      333 MOVE                             R42 R1
      334 MOVE                             R43 R3
      335 MOVE                             R44 R11
      336 MOVE                             R45 R5
      337 MOVE                             R46 R7
      338 MOVE                             R47 R9
      339 GETTABLEKS                       R48 R27 K17 ["imageIds"]
      341 GETTABLEKS                       R49 R27 K18 ["loading"]
      343 GETTABLEKS                       R50 R27 K19 ["errorMessage"]
      345 MOVE                             R51 R13
      346 MOVE                             R52 R14
      347 MOVE                             R53 R15
      348 MOVE                             R54 R17
      349 MOVE                             R55 R19
      350 SETLIST                          R41 R42 14 [1]
      352 CALL                             R39 2 0
      353 GETUPVAL                         R39 0
      354 GETTABLEKS                       R39 R39 K15 ["useEffect"]
      356 NEWCLOSURE                       R40 P15
      357 CAPTURE                          UPVAL U4
      358 CAPTURE                          VAL R1
      359 CAPTURE                          UPVAL U10
      360 CAPTURE                          VAL R14
      361 CAPTURE                          VAL R33
      362 CAPTURE                          VAL R23
      363 CAPTURE                          VAL R28
      364 CAPTURE                          VAL R18
      365 CAPTURE                          VAL R20
      366 CAPTURE                          VAL R21
      367 CAPTURE                          VAL R22
      368 CAPTURE                          VAL R16
      369 CAPTURE                          VAL R2
      370 CAPTURE                          UPVAL U8
      371 CAPTURE                          VAL R24
      372 CAPTURE                          VAL R6
      373 CAPTURE                          VAL R29
      374 CAPTURE                          VAL R8
      375 CAPTURE                          VAL R30
      376 CAPTURE                          VAL R10
      377 CAPTURE                          VAL R31
      378 CAPTURE                          UPVAL U9
      379 CAPTURE                          UPVAL U11
      380 CAPTURE                          VAL R34
      381 CAPTURE                          VAL R4
      382 CAPTURE                          VAL R32
      383 CAPTURE                          VAL R38
      384 CAPTURE                          VAL R35
      385 CAPTURE                          VAL R37
      386 NEWTABLE                         R41 0 7
      388 MOVE                             R42 R1
      389 MOVE                             R43 R2
      390 MOVE                             R44 R38
      391 MOVE                             R45 R34
      392 MOVE                             R46 R35
      393 MOVE                             R47 R37
      394 MOVE                             R48 R14
      395 SETLIST                          R41 R42 7 [1]
      397 CALL                             R39 2 0
      398 LOADNIL                          R39
      399 RETURN                           R39 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K4 ["Networking"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 DUPTABLE                         R4 K6 [{"Inner"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 2
       16 MOVE                             R7 R0
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K5 ["Inner"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Gen3d"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Networking"]
       26 GETTABLEKS                       R4 R4 K14 ["Events"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K10 ["Packages"]
       33 GETTABLEKS                       R5 R5 K15 ["Gen3dCore"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K17 ["NetworkingContext"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K12 ["Src"]
       49 GETTABLEKS                       R7 R7 K18 ["Util"]
       51 GETTABLEKS                       R7 R7 K19 ["SceneGenViewModel"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K12 ["Src"]
       58 GETTABLEKS                       R8 R8 K18 ["Util"]
       60 GETTABLEKS                       R8 R8 K20 ["createLocalization"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K12 ["Src"]
       67 GETTABLEKS                       R9 R9 K21 ["Guest"]
       69 GETTABLEKS                       R9 R9 K22 ["createReferenceImageService"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R1 K12 ["Src"]
       76 GETTABLEKS                       R10 R10 K23 ["Hooks"]
       78 GETTABLEKS                       R10 R10 K24 ["useHostSessionId"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R11 R1 K12 ["Src"]
       85 GETTABLEKS                       R11 R11 K23 ["Hooks"]
       87 GETTABLEKS                       R11 R11 K25 ["useSceneImages"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K9 [require]
       92 GETTABLEKS                       R12 R1 K26 ["Bin"]
       94 GETTABLEKS                       R12 R12 K27 ["Common"]
       96 GETTABLEKS                       R12 R12 K28 ["defineLuaFlags"]
       98 CALL                             R11 1 1
       99 GETTABLEKS                       R12 R6 K29 ["Intents"]
      101 GETTABLEKS                       R13 R6 K30 ["MAX_RUNS"]
      103 DUPCLOSURE                       R14 K31 [PROTO_0]
      104 DUPCLOSURE                       R15 K32 [PROTO_38]
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R0
      117 DUPCLOSURE                       R16 K33 [PROTO_39]
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R15
      121 RETURN                           R16 1
