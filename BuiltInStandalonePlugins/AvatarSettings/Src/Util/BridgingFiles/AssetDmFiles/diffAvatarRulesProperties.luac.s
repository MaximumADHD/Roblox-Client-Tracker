PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+12]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R2 R0 K3 ["AssetId"]
       11 JUMPIFEQKNIL                     R2 ; [+7]
       13 GETTABLEKS                       R2 R0 K4 ["Enabled"]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["NumberRange"] ; [+24]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K2 ["NumberRange"] ; [+17]
       14 LOADB                            R2 0
       15 GETTABLEKS                       R3 R0 K3 ["Min"]
       17 GETTABLEKS                       R4 R1 K3 ["Min"]
       19 JUMPIFNOTEQ                      R3 R4 ; [+9]
       21 GETTABLEKS                       R3 R0 K4 ["Max"]
       23 GETTABLEKS                       R4 R1 K4 ["Max"]
       25 JUMPIFEQ                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1
       30 JUMPIFEQ                         R0 R1 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 LOADB                            R3 0
        3 MOVE                             R4 R1
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETTABLE                         R9 R0 R7
        8 LOADB                            R10 0
        9 FASTCALL1                        TYPE R8 ; [+3]
       10 MOVE                             R12 R8
       11 GETIMPORT                        R11 K1 [type]
       13 CALL                             R11 1 1
       14 JUMPIFNOTEQKS                    R11 K2 ["table"] ; [+12]
       16 LOADB                            R10 0
       17 GETTABLEKS                       R11 R8 K3 ["AssetId"]
       19 JUMPIFEQKNIL                     R11 ; [+7]
       21 GETTABLEKS                       R11 R8 K4 ["Enabled"]
       23 JUMPIFNOTEQKNIL                  R11 ; [+2]
       25 LOADB                            R10 0 +1
       26 LOADB                            R10 1
       27 JUMPIFNOT                        R10 ; [+35]
       28 LOADB                            R10 0
       29 FASTCALL1                        TYPE R9 ; [+3]
       30 MOVE                             R12 R9
       31 GETIMPORT                        R11 K1 [type]
       33 CALL                             R11 1 1
       34 JUMPIFNOTEQKS                    R11 K2 ["table"] ; [+12]
       36 LOADB                            R10 0
       37 GETTABLEKS                       R11 R9 K3 ["AssetId"]
       39 JUMPIFEQKNIL                     R11 ; [+7]
       41 GETTABLEKS                       R11 R9 K4 ["Enabled"]
       43 JUMPIFNOTEQKNIL                  R11 ; [+2]
       45 LOADB                            R10 0 +1
       46 LOADB                            R10 1
       47 JUMPIFNOT                        R10 ; [+12]
       48 GETTABLEKS                       R10 R9 K3 ["AssetId"]
       50 GETTABLEKS                       R11 R8 K3 ["AssetId"]
       52 JUMPIFNOTEQ                      R10 R11 ; [+7]
       54 GETTABLEKS                       R10 R9 K4 ["Enabled"]
       56 GETTABLEKS                       R11 R8 K4 ["Enabled"]
       58 JUMPIFEQ                         R10 R11 ; [+41]
       60 SETTABLE                         R8 R2 R7
       61 LOADB                            R3 1
       62 JUMP                             ; [+37]
       63 FASTCALL1                        TYPEOF R9 ; [+3]
       64 MOVE                             R12 R9
       65 GETIMPORT                        R11 K6 [typeof]
       67 CALL                             R11 1 1
       68 JUMPIFNOTEQKS                    R11 K7 ["NumberRange"] ; [+24]
       70 FASTCALL1                        TYPEOF R8 ; [+3]
       71 MOVE                             R12 R8
       72 GETIMPORT                        R11 K6 [typeof]
       74 CALL                             R11 1 1
       75 JUMPIFNOTEQKS                    R11 K7 ["NumberRange"] ; [+17]
       77 LOADB                            R10 0
       78 GETTABLEKS                       R11 R9 K8 ["Min"]
       80 GETTABLEKS                       R12 R8 K8 ["Min"]
       82 JUMPIFNOTEQ                      R11 R12 ; [+14]
       84 GETTABLEKS                       R11 R9 K9 ["Max"]
       86 GETTABLEKS                       R12 R8 K9 ["Max"]
       88 JUMPIFEQ                         R11 R12 ; [+2]
       90 LOADB                            R10 0 +1
       91 LOADB                            R10 1
       92 JUMP                             ; [+4]
       93 JUMPIFEQ                         R9 R8 ; [+2]
       95 LOADB                            R10 0 +1
       96 LOADB                            R10 1
       97 JUMPIF                           R10 ; [+2]
       98 SETTABLE                         R8 R2 R7
       99 LOADB                            R3 1
      100 FORGLOOP                         R4 2 ; [-94]
      102 JUMPIFNOT                        R3 ; [+2]
      103 MOVE                             R4 R2
      104 RETURN                           R4 1
      105 LOADNIL                          R4
      106 RETURN                           R4 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLE                         R8 R0 R7
        7 GETTABLE                         R9 R1 R7
        8 JUMPIFNOT                        R8 ; [+7]
        9 JUMPIFNOT                        R9 ; [+6]
       10 GETUPVAL                         R10 1
       11 MOVE                             R11 R8
       12 MOVE                             R12 R9
       13 CALL                             R10 2 1
       14 JUMPIFNOT                        R10 ; [+1]
       15 SETTABLE                         R10 R2 R7
       16 FORGLOOP                         R3 2 ; [-11]
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsSyncTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["BridgingFiles"]
       24 GETTABLEKS                       R3 R3 K10 ["AssetDmFiles"]
       26 GETTABLEKS                       R3 R3 K11 ["assetDmTypes"]
       28 CALL                             R2 1 1
       29 NEWTABLE                         R3 0 6
       31 LOADK                            R4 K12 ["AvatarBodyRules"]
       32 LOADK                            R5 K13 ["AvatarCollisionRules"]
       33 LOADK                            R6 K14 ["AvatarAbilityRules"]
       34 LOADK                            R7 K15 ["AvatarAnimationRules"]
       35 LOADK                            R8 K16 ["AvatarAccessoryRules"]
       36 LOADK                            R9 K17 ["AvatarClothingRules"]
       37 SETLIST                          R3 R4 6 [1]
       39 DUPCLOSURE                       R4 K18 [PROTO_0]
       40 DUPCLOSURE                       R5 K19 [PROTO_1]
       41 DUPCLOSURE                       R6 K20 [PROTO_2]
       42 DUPCLOSURE                       R7 K21 [PROTO_3]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R6
       45 RETURN                           R7 1
