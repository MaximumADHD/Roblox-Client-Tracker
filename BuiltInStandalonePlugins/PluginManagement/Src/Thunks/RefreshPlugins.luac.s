PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["InstalledPluginData"]
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K2 [pairs]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 3
       11 FORGPREP_NEXT                    R3
       12 GETTABLEKS                       R9 R7 K3 ["assetId"]
       14 FASTCALL1                        TONUMBER R9 ; [+2]
       15 GETIMPORT                        R8 K5 [tonumber]
       17 CALL                             R8 1 1
       18 JUMPIFNOTEQKNIL                  R8 ; [+10]
       20 GETIMPORT                        R9 K7 [warn]
       22 LOADK                            R10 K8 ["assetId is nil or non-numeric for installedPlugin on refresh"]
       23 GETTABLEKS                       R11 R7 K3 ["assetId"]
       25 CALL                             R9 2 0
       26 LOADNIL                          R9
       27 SETTABLE                         R9 R1 R6
       28 JUMP                             ; [+8]
       29 GETTABLE                         R9 R1 R6
       30 SETTABLEKS                       R8 R9 K3 ["assetId"]
       32 LENGTH                           R10 R2
       33 ADDK                             R9 R10 K9 [1]
       34 GETTABLEKS                       R10 R7 K3 ["assetId"]
       36 SETTABLE                         R10 R2 R9
       37 FORGLOOP                         R3 2 ; [-26]
       39 LENGTH                           R3 R2
       40 LOADN                            R4 0
       41 JUMPIFNOTLT                      R4 R3 ; [+11]
       43 GETUPVAL                         R5 2
       44 GETUPVAL                         R6 3
       45 GETUPVAL                         R7 4
       46 MOVE                             R8 R2
       47 MOVE                             R9 R1
       48 CALL                             R5 4 -1
       49 NAMECALL                         R3 R0 K10 ["dispatch"]
       51 CALL                             R3 -1 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R5 5
       54 NEWTABLE                         R6 0 0
       56 CALL                             R5 1 -1
       57 NAMECALL                         R3 R0 K10 ["dispatch"]
       59 CALL                             R3 -1 0
       60 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["StudioService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R5 R0 K9 ["Src"]
       19 GETTABLEKS                       R4 R5 K10 ["Thunks"]
       21 GETTABLEKS                       R3 R4 K11 ["MultiGetPluginInfoRequest"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R6 R0 K9 ["Src"]
       28 GETTABLEKS                       R5 R6 K12 ["Actions"]
       30 GETTABLEKS                       R4 R5 K13 ["SetLoadedPluginData"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K8 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Src"]
       37 GETTABLEKS                       R6 R7 K14 ["Util"]
       39 GETTABLEKS                       R5 R6 K15 ["extractPluginsFromJsonString"]
       41 CALL                             R4 1 1
       42 DUPCLOSURE                       R5 K16 [PROTO_1]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 RETURN                           R5 1
