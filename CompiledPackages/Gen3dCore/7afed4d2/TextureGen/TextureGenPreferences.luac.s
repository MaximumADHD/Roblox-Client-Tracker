PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["TextureGenModel"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 JUMPIFNOTEQ                      R0 R5 ; [+3]
       10 LOADB                            R6 1
       11 RETURN                           R6 1
       12 FORGLOOP                         R1 2 ; [-5]
       14 LOADB                            R1 0
       15 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetSetting"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetSetting"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"getSetting", "setSetting"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R2 R1 K0 ["getSetting"]
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R2 R1 K1 ["setSetting"]
        9 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["getSetting"]
        2 LOADK                            R2 K1 ["Gen3dTextureGenModel"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K0 ["getSetting"]
        6 LOADK                            R3 K2 ["Gen3dTextureGenAutoSelectView"]
        7 CALL                             R2 1 1
        8 DUPTABLE                         R3 K5 [{"model", "autoSelectView"}]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K6 ["Enums"]
       12 GETTABLEKS                       R6 R6 K7 ["TextureGenModel"]
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 JUMPIFNOTEQ                      R1 R10 ; [+3]
       19 LOADB                            R5 1
       20 JUMP                             ; [+3]
       21 FORGLOOP                         R6 2 ; [-5]
       23 LOADB                            R5 0
       24 JUMPIFNOT                        R5 ; [+2]
       25 MOVE                             R4 R1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R4
       28 SETTABLEKS                       R4 R3 K3 ["model"]
       30 FASTCALL1                        TYPEOF R2 ; [+3]
       31 MOVE                             R6 R2
       32 GETIMPORT                        R5 K9 [typeof]
       34 CALL                             R5 1 1
       35 JUMPIFNOTEQKS                    R5 K10 ["boolean"] ; [+3]
       37 MOVE                             R4 R2
       38 JUMP                             ; [+1]
       39 LOADNIL                          R4
       40 SETTABLEKS                       R4 R3 K4 ["autoSelectView"]
       42 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["setSetting"]
        2 LOADK                            R3 K1 ["Gen3dTextureGenModel"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["setSetting"]
        2 LOADK                            R3 K1 ["Gen3dTextureGenAutoSelectView"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R3 4 0
       16 DUPCLOSURE                       R4 K8 [PROTO_3]
       17 SETTABLEKS                       R4 R3 K9 ["fromPlugin"]
       19 DUPCLOSURE                       R4 K10 [PROTO_4]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R4 R3 K11 ["read"]
       23 DUPCLOSURE                       R4 K12 [PROTO_5]
       24 SETTABLEKS                       R4 R3 K13 ["writeModel"]
       26 DUPCLOSURE                       R4 K14 [PROTO_6]
       27 SETTABLEKS                       R4 R3 K15 ["writeAutoSelectView"]
       29 RETURN                           R3 1
