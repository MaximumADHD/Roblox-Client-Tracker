PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["StudioDeviceEmulator"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 MOVE                             R2 R0
        6 JUMPIFNOT                        R2 ; [+4]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PlaceSessionBridge"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_2]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

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
        0 GETIMPORT                        R2 K1 [pcall]
        2 DUPCLOSURE                       R3 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R2 1 2
        5 MOVE                             R1 R2
        6 JUMPIFNOT                        R1 ; [+4]
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 JUMPIFNOT                        R1 ; [+2]
       12 LOADB                            R1 1
       13 RETURN                           R1 1
       14 GETIMPORT                        R2 K1 [pcall]
       16 DUPCLOSURE                       R3 K3 [PROTO_2]
       17 CAPTURE                          UPVAL U0
       18 CALL                             R2 1 2
       19 JUMPIFNOT                        R2 ; [+2]
       20 MOVE                             R1 R3
       21 JUMP                             ; [+1]
       22 LOADNIL                          R1
       23 JUMPIF                           R1 ; [+2]
       24 LOADB                            R2 1
       25 RETURN                           R2 1
       26 LOADB                            R2 0
       27 LOADB                            R3 0
       28 GETIMPORT                        R4 K6 [Instance.new]
       30 LOADK                            R5 K7 ["BindableEvent"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K1 [pcall]
       34 NEWCLOSURE                       R6 P2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CALL                             R5 1 2
       38 JUMPIF                           R5 ; [+6]
       39 NAMECALL                         R7 R4 K8 ["Destroy"]
       41 CALL                             R7 1 0
       42 LOADB                            R7 1
       43 CLOSEUPVALS                      R3
       44 RETURN                           R7 1
       45 GETTABLEKS                       R7 R0 K9 ["Unloading"]
       47 NEWCLOSURE                       R9 P3
       48 CAPTURE                          REF R3
       49 CAPTURE                          VAL R4
       50 NAMECALL                         R7 R7 K10 ["Connect"]
       52 CALL                             R7 2 1
       53 JUMPIF                           R3 ; [+20]
       54 GETIMPORT                        R9 K1 [pcall]
       56 DUPCLOSURE                       R10 K2 [PROTO_0]
       57 CAPTURE                          UPVAL U0
       58 CALL                             R9 1 2
       59 MOVE                             R8 R9
       60 JUMPIFNOT                        R8 ; [+4]
       61 JUMPIFNOTEQKNIL                  R10 ; [+2]
       63 LOADB                            R8 0 +1
       64 LOADB                            R8 1
       65 JUMPIFNOT                        R8 ; [+2]
       66 LOADB                            R2 1
       67 JUMP                             ; [+6]
       68 GETTABLEKS                       R8 R4 K11 ["Event"]
       70 NAMECALL                         R8 R8 K12 ["Wait"]
       72 CALL                             R8 1 0
       73 JUMPBACK                         ; [-21]
       74 NAMECALL                         R8 R6 K13 ["Disconnect"]
       76 CALL                             R8 1 0
       77 NAMECALL                         R8 R7 K13 ["Disconnect"]
       79 CALL                             R8 1 0
       80 NAMECALL                         R8 R4 K8 ["Destroy"]
       82 CALL                             R8 1 0
       83 CLOSEUPVALS                      R3
       84 RETURN                           R2 1

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
