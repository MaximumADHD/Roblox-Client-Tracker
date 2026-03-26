PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["%*%*"]
        1 MOVE                             R5 R0
        2 GETTABLEKS                       R6 R1 K1 ["Name"]
        4 NAMECALL                         R3 R3 K2 ["format"]
        6 CALL                             R3 3 1
        7 MOVE                             R2 R3
        8 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["current"]
        3 GETTABLEKS                       R3 R4 K1 ["assets"]
        5 LOADK                            R5 K2 ["%*%*"]
        6 MOVE                             R7 R0
        7 GETTABLEKS                       R8 R1 K3 ["Name"]
        9 NAMECALL                         R5 R5 K4 ["format"]
       11 CALL                             R5 3 1
       12 MOVE                             R4 R5
       13 GETTABLE                         R2 R3 R4
       14 RETURN                           R2 1

PROTO_4:
        0 LOADK                            R4 K0 ["%*%*"]
        1 MOVE                             R6 R0
        2 GETTABLEKS                       R7 R1 K1 ["Name"]
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 3 1
        7 MOVE                             R3 R4
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["current"]
       11 GETTABLEKS                       R6 R4 K4 ["assets"]
       13 GETTABLE                         R5 R6 R3
       14 JUMPIFEQKNIL                     R5 ; [+7]
       16 GETTABLEKS                       R6 R4 K5 ["totalCount"]
       18 LENGTH                           R7 R5
       19 SUB                              R6 R6 R7
       20 SETTABLEKS                       R6 R4 K5 ["totalCount"]
       22 GETTABLEKS                       R6 R4 K4 ["assets"]
       24 SETTABLE                         R2 R6 R3
       25 GETTABLEKS                       R6 R4 K5 ["totalCount"]
       27 LENGTH                           R7 R2
       28 ADD                              R6 R6 R7
       29 SETTABLEKS                       R6 R4 K5 ["totalCount"]
       31 GETTABLEKS                       R7 R4 K6 ["uniqueIdOrder"]
       33 FASTCALL2                        TABLE_INSERT R7 R3 ; [+4]
       35 MOVE                             R8 R3
       36 GETIMPORT                        R6 K9 [table.insert]
       38 CALL                             R6 2 0
       39 GETTABLEKS                       R6 R4 K5 ["totalCount"]
       41 GETUPVAL                         R7 1
       42 JUMPIFNOTLT                      R7 R6 ; [+39]
       44 GETTABLEKS                       R7 R4 K6 ["uniqueIdOrder"]
       46 LENGTH                           R6 R7
       47 LOADN                            R7 0
       48 JUMPIFNOTLT                      R7 R6 ; [+33]
       50 GETIMPORT                        R6 K11 [table.remove]
       52 GETTABLEKS                       R7 R4 K6 ["uniqueIdOrder"]
       54 LOADN                            R8 1
       55 CALL                             R6 2 1
       56 JUMPIFNOTEQKNIL                  R6 ; [+2]
       58 LOADB                            R8 0 +1
       59 LOADB                            R8 1
       60 FASTCALL2K                       ASSERT R8 K12 ; [+4]
       62 LOADK                            R9 K12 ["Somehow, nothing was removed from uniqueIdOrder"]
       63 GETIMPORT                        R7 K14 [assert]
       65 CALL                             R7 2 0
       66 GETTABLEKS                       R8 R4 K4 ["assets"]
       68 GETTABLE                         R7 R8 R6
       69 JUMPIFEQKNIL                     R7 ; [+11]
       71 GETTABLEKS                       R8 R4 K5 ["totalCount"]
       73 LENGTH                           R9 R7
       74 SUB                              R8 R8 R9
       75 SETTABLEKS                       R8 R4 K5 ["totalCount"]
       77 GETTABLEKS                       R8 R4 K4 ["assets"]
       79 LOADNIL                          R9
       80 SETTABLE                         R9 R8 R6
       81 JUMPBACK                         ; [-43]
       82 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 DUPTABLE                         R2 K4 [{"assets", "uniqueIdOrder", "totalCount"}]
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K1 ["assets"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R2 K2 ["uniqueIdOrder"]
       12 LOADN                            R3 0
       13 SETTABLEKS                       R3 R2 K3 ["totalCount"]
       15 CALL                             R1 1 1
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R1
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U1
       21 DUPTABLE                         R4 K7 [{"setAssets", "getAssets"}]
       22 SETTABLEKS                       R3 R4 K5 ["setAssets"]
       24 SETTABLEKS                       R2 R4 K6 ["getAssets"]
       26 GETUPVAL                         R5 2
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R6 R7 K8 ["Provider"]
       30 DUPTABLE                         R7 K10 [{"value"}]
       31 SETTABLEKS                       R4 R7 K9 ["value"]
       33 GETTABLEKS                       R8 R0 K11 ["children"]
       35 CALL                             R5 3 -1
       36 RETURN                           R5 -1

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
       38 GETIMPORT                        R8 K18 [game]
       40 LOADK                            R10 K19 ["AssetPickerMaxCacheAssets"]
       41 LOADN                            R11 16
       42 NAMECALL                         R8 R8 K20 ["DefineFastInt"]
       44 CALL                             R8 3 1
       45 DUPCLOSURE                       R9 K21 [PROTO_2]
       46 DUPCLOSURE                       R10 K22 [PROTO_5]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R7
       51 DUPTABLE                         R11 K25 [{"Context", "Provider"}]
       52 SETTABLEKS                       R7 R11 K23 ["Context"]
       54 SETTABLEKS                       R10 R11 K24 ["Provider"]
       56 RETURN                           R11 1
