PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StudioDeviceEmulator"]
        3 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K2 [pcall]
        5 CALL                             R0 1 2
        6 MOVE                             R2 R0
        7 JUMPIFNOT                        R2 ; [+4]
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PlaceSessionBridge"]
        3 RETURN                           R0 1

PROTO_3:
        0 DUPCLOSURE                       R1 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K2 [pcall]
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+2]
        7 MOVE                             R2 R1
        8 RETURN                           R2 1
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R2 K3 [Enum.StudioDataModelType.None]
        2 JUMPIFEQ                         R1 R2 ; [+5]
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K4 ["Fire"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentDataModelTypeChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_6:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 DUPCLOSURE                       R3 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R2 K2 [pcall]
        5 CALL                             R2 1 2
        6 MOVE                             R1 R2
        7 JUMPIFNOT                        R1 ; [+4]
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 JUMPIFNOT                        R1 ; [+2]
       13 LOADB                            R1 1
       14 RETURN                           R1 1
       15 DUPCLOSURE                       R3 K3 [PROTO_2]
       16 CAPTURE                          UPVAL U0
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R2 K2 [pcall]
       20 CALL                             R2 1 2
       21 JUMPIFNOT                        R2 ; [+2]
       22 MOVE                             R1 R3
       23 JUMP                             ; [+1]
       24 LOADNIL                          R1
       25 JUMPIF                           R1 ; [+2]
       26 LOADB                            R2 1
       27 RETURN                           R2 1
       28 LOADB                            R2 0
       29 LOADB                            R3 0
       30 GETIMPORT                        R4 K6 [Instance.new]
       32 LOADK                            R5 K7 ["BindableEvent"]
       33 CALL                             R4 1 1
       34 NEWCLOSURE                       R6 P2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 FASTPCALL                        pcall 1 ; [+2]
       38 GETIMPORT                        R5 K2 [pcall]
       40 CALL                             R5 1 2
       41 JUMPIF                           R5 ; [+6]
       42 NAMECALL                         R7 R4 K8 ["Destroy"]
       44 CALL                             R7 1 0
       45 LOADB                            R7 1
       46 CLOSEUPVALS                      R3
       47 RETURN                           R7 1
       48 GETTABLEKS                       R7 R0 K9 ["Unloading"]
       50 NEWCLOSURE                       R9 P3
       51 CAPTURE                          REF R3
       52 CAPTURE                          VAL R4
       53 NAMECALL                         R7 R7 K10 ["Connect"]
       55 CALL                             R7 2 1
       56 JUMPIF                           R3 ; [+21]
       57 DUPCLOSURE                       R10 K0 [PROTO_0]
       58 CAPTURE                          UPVAL U0
       59 FASTPCALL                        pcall 1 ; [+2]
       60 GETIMPORT                        R9 K2 [pcall]
       62 CALL                             R9 1 2
       63 MOVE                             R8 R9
       64 JUMPIFNOT                        R8 ; [+4]
       65 JUMPIFNOTEQKNIL                  R10 ; [+2]
       67 LOADB                            R8 0 +1
       68 LOADB                            R8 1
       69 JUMPIFNOT                        R8 ; [+2]
       70 LOADB                            R2 1
       71 JUMP                             ; [+6]
       72 GETTABLEKS                       R8 R4 K11 ["Event"]
       74 NAMECALL                         R8 R8 K12 ["Wait"]
       76 CALL                             R8 1 0
       77 JUMPBACK                         ; [-22]
       78 NAMECALL                         R8 R6 K13 ["Disconnect"]
       80 CALL                             R8 1 0
       81 NAMECALL                         R8 R7 K13 ["Disconnect"]
       83 CALL                             R8 1 0
       84 NAMECALL                         R8 R4 K8 ["Destroy"]
       86 CALL                             R8 1 0
       87 CLOSEUPVALS                      R3
       88 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["MockableProxyPluginComponents"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 DUPCLOSURE                       R3 K10 [PROTO_3]
       19 CAPTURE                          VAL R1
       20 DUPCLOSURE                       R4 K11 [PROTO_7]
       21 CAPTURE                          VAL R1
       22 RETURN                           R4 1
