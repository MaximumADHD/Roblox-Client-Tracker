PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["%*%*"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLEKS                       R3 R3 K1 ["assets"]
        5 LOADK                            R5 K2 ["%*%*"]
        6 MOVE                             R7 R0
        7 MOVE                             R8 R1
        8 NAMECALL                         R5 R5 K3 ["format"]
       10 CALL                             R5 3 1
       11 MOVE                             R4 R5
       12 GETTABLE                         R2 R3 R4
       13 RETURN                           R2 1

PROTO_4:
        0 LOADK                            R4 K0 ["%*%*"]
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 3 1
        6 MOVE                             R3 R4
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["current"]
       10 GETTABLEKS                       R6 R4 K3 ["assets"]
       12 GETTABLE                         R5 R6 R3
       13 JUMPIFEQKNIL                     R5 ; [+7]
       15 GETTABLEKS                       R6 R4 K4 ["totalCount"]
       17 LENGTH                           R7 R5
       18 SUB                              R6 R6 R7
       19 SETTABLEKS                       R6 R4 K4 ["totalCount"]
       21 GETTABLEKS                       R6 R4 K3 ["assets"]
       23 SETTABLE                         R2 R6 R3
       24 GETTABLEKS                       R6 R4 K4 ["totalCount"]
       26 LENGTH                           R7 R2
       27 ADD                              R6 R6 R7
       28 SETTABLEKS                       R6 R4 K4 ["totalCount"]
       30 GETTABLEKS                       R7 R4 K5 ["uniqueIdOrder"]
       32 FASTCALL2                        TABLE_INSERT R7 R3 ; [+4]
       34 MOVE                             R8 R3
       35 GETIMPORT                        R6 K8 [table.insert]
       37 CALL                             R6 2 0
       38 GETTABLEKS                       R6 R4 K4 ["totalCount"]
       40 GETUPVAL                         R7 1
       41 JUMPIFNOTLT                      R7 R6 ; [+39]
       43 GETTABLEKS                       R7 R4 K5 ["uniqueIdOrder"]
       45 LENGTH                           R6 R7
       46 LOADN                            R7 0
       47 JUMPIFNOTLT                      R7 R6 ; [+33]
       49 GETIMPORT                        R6 K10 [table.remove]
       51 GETTABLEKS                       R7 R4 K5 ["uniqueIdOrder"]
       53 LOADN                            R8 1
       54 CALL                             R6 2 1
       55 JUMPIFNOTEQKNIL                  R6 ; [+2]
       57 LOADB                            R8 0 +1
       58 LOADB                            R8 1
       59 FASTCALL2K                       ASSERT R8 K11 ; [+4]
       61 LOADK                            R9 K11 ["Somehow, nothing was removed from uniqueIdOrder"]
       62 GETIMPORT                        R7 K13 [assert]
       64 CALL                             R7 2 0
       65 GETTABLEKS                       R8 R4 K3 ["assets"]
       67 GETTABLE                         R7 R8 R6
       68 JUMPIFEQKNIL                     R7 ; [+11]
       70 GETTABLEKS                       R8 R4 K4 ["totalCount"]
       72 LENGTH                           R9 R7
       73 SUB                              R8 R8 R9
       74 SETTABLEKS                       R8 R4 K4 ["totalCount"]
       76 GETTABLEKS                       R8 R4 K3 ["assets"]
       78 LOADNIL                          R9
       79 SETTABLE                         R9 R8 R6
       80 JUMPBACK                         ; [-43]
       81 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 DUPTABLE                         R2 K5 [{["assets"], ["uniqueIdOrder"], ["totalCount"] = 0}]
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K1 ["assets"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R2 K2 ["uniqueIdOrder"]
       12 CALL                             R1 1 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R1
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 DUPTABLE                         R4 K8 [{"setAssets", "getAssets"}]
       19 SETTABLEKS                       R3 R4 K6 ["setAssets"]
       21 SETTABLEKS                       R2 R4 K7 ["getAssets"]
       23 GETUPVAL                         R5 2
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K9 ["Provider"]
       27 DUPTABLE                         R7 K11 [{"value"}]
       28 SETTABLEKS                       R4 R7 K10 ["value"]
       30 GETTABLEKS                       R8 R0 K12 ["children"]
       32 CALL                             R5 3 -1
       33 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R1 K9 ["Types"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R3 K10 ["createElement"]
       27 DUPTABLE                         R6 K13 [{"getAssets", "setAssets"}]
       28 DUPCLOSURE                       R7 K14 [PROTO_0]
       29 SETTABLEKS                       R7 R6 K11 ["getAssets"]
       31 DUPCLOSURE                       R7 K15 [PROTO_1]
       32 SETTABLEKS                       R7 R6 K12 ["setAssets"]
       34 GETTABLEKS                       R7 R3 K16 ["createContext"]
       36 MOVE                             R8 R6
       37 CALL                             R7 1 1
       38 LOADK                            R8 K17 ["AssetCacheContext"]
       39 SETTABLEKS                       R8 R7 K18 ["displayName"]
       41 GETIMPORT                        R8 K20 [game]
       43 LOADK                            R10 K21 ["AssetPickerMaxCacheAssets"]
       44 LOADN                            R11 10000
       45 NAMECALL                         R8 R8 K22 ["DefineFastInt"]
       47 CALL                             R8 3 1
       48 DUPCLOSURE                       R9 K23 [PROTO_2]
       49 DUPCLOSURE                       R10 K24 [PROTO_5]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R7
       54 DUPTABLE                         R11 K27 [{"Context", "Provider"}]
       55 SETTABLEKS                       R7 R11 K25 ["Context"]
       57 SETTABLEKS                       R10 R11 K26 ["Provider"]
       59 RETURN                           R11 1
