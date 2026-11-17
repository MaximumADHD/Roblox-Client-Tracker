PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 JUMPIFNOT                        R3 ; [+5]
       14 GETUPVAL                         R4 2
       15 MOVE                             R6 R3
       16 NAMECALL                         R4 R4 K2 ["Fire"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["BindableEvent"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K4 ["ASSET_MANAGER"]
        8 GETTABLEKS                       R4 R4 K5 ["MEMSTORAGE_EVENTS"]
       10 GETTABLEKS                       R4 R4 K6 ["OPEN_FROM_EXTERNAL_TRIGGER"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R1
       16 NAMECALL                         R2 R2 K7 ["Bind"]
       18 CALL                             R2 3 1
       19 GETTABLEKS                       R3 R0 K8 ["Unloading"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 NAMECALL                         R3 R3 K9 ["Once"]
       26 CALL                             R3 2 0
       27 GETTABLEKS                       R3 R1 K10 ["Event"]
       29 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AssetManager"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["SharedPluginConstants"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Util"]
       32 GETTABLEKS                       R5 R5 K15 ["validateOpenFromExternalTriggerConfig"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K16 [PROTO_3]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R4
       40 RETURN                           R5 1
