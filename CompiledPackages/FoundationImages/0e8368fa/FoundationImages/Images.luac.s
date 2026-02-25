PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R0
        9 JUMPIFEQKNIL                     R2 ; [+16]
       11 GETUPVAL                         R3 1
       12 JUMPIFEQ                         R2 R3 ; [+13]
       14 LOADN                            R5 1
       15 GETTABLEKS                       R6 R2 K0 ["Name"]
       17 FASTCALL3                        TABLE_INSERT R1 R5 R6
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K3 [table.insert]
       22 CALL                             R3 3 0
       23 GETTABLEKS                       R2 R2 K4 ["Parent"]
       25 JUMPBACK                         ; [-17]
       26 LOADK                            R4 K5 ["LuaPackages/"]
       27 GETIMPORT                        R5 K7 [table.concat]
       29 MOVE                             R6 R1
       30 LOADK                            R7 K8 ["/"]
       31 CALL                             R5 2 1
       32 CONCAT                           R3 R4 R5
       33 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 RETURN                           R2 1
        5 GETIMPORT                        R2 K2 [string.format]
        7 LOADK                            R3 K3 ["rbxasset://%s/SpriteSheets/%s.png"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["%q is not a valid member of Images"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R3 K5 ["format"]
       10 CALL                             R3 2 1
       11 LOADN                            R4 2
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R3 R0 K5 ["Generated"]
        9 GETTABLEKS                       R2 R3 K6 ["GetImageSetData"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K5 ["Generated"]
       16 GETTABLEKS                       R3 R4 K7 ["FallbackImages"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["ImagesTypes"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K9 ["getResolutionScale"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K1 [script]
       31 LOADK                            R7 K10 ["CorePackages"]
       32 NAMECALL                         R5 R5 K11 ["FindFirstAncestor"]
       34 CALL                             R5 2 1
       35 MOVE                             R6 R4
       36 CALL                             R6 0 1
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 MOVE                             R9 R1
       40 MOVE                             R10 R6
       41 CALL                             R9 1 2
       42 MOVE                             R7 R9
       43 MOVE                             R8 R10
       44 DUPCLOSURE                       R9 K12 [PROTO_0]
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R5
       47 DUPCLOSURE                       R10 K13 [PROTO_1]
       48 CAPTURE                          VAL R2
       49 MOVE                             R11 R9
       50 CALL                             R11 0 1
       51 NEWTABLE                         R12 0 0
       53 MOVE                             R13 R7
       54 LOADNIL                          R14
       55 LOADNIL                          R15
       56 FORGPREP                         R13
       57 FASTCALL1                        TYPEOF R17 ; [+3]
       58 MOVE                             R21 R17
       59 GETIMPORT                        R20 K15 [typeof]
       61 CALL                             R20 1 1
       62 JUMPIFEQKS                       R20 K16 ["table"] ; [+2]
       64 LOADB                            R19 0 +1
       65 LOADB                            R19 1
       66 LOADK                            R21 K17 ["invalid sourceData from GetImageSetData for scale "]
       67 FASTCALL1                        TOSTRING R8 ; [+3]
       68 MOVE                             R23 R8
       69 GETIMPORT                        R22 K19 [tostring]
       71 CALL                             R22 1 1
       72 CONCAT                           R20 R21 R22
       73 FASTCALL2                        ASSERT R19 R20 ; [+3]
       75 GETIMPORT                        R18 K21 [assert]
       77 CALL                             R18 2 0
       78 NEWTABLE                         R18 1 0
       80 MOVE                             R19 R17
       81 LOADNIL                          R20
       82 LOADNIL                          R21
       83 FORGPREP                         R19
       84 JUMPIFNOTEQKS                    R22 K22 ["ImageSet"] ; [+15]
       86 JUMPIFNOTEQKNIL                  R11 ; [+3]
       88 GETTABLE                         R24 R2 R23
       89 JUMP                             ; [+7]
       90 GETIMPORT                        R24 K25 [string.format]
       92 LOADK                            R25 K26 ["rbxasset://%s/SpriteSheets/%s.png"]
       93 MOVE                             R26 R11
       94 MOVE                             R27 R23
       95 CALL                             R24 3 1
       96 JUMP                             ; [0]
       97 SETTABLEKS                       R24 R18 K27 ["Image"]
       99 JUMP                             ; [+1]
      100 SETTABLE                         R23 R18 R22
      101 FORGLOOP                         R19 2 ; [-18]
      103 SETTABLE                         R18 R12 R16
      104 FORGLOOP                         R13 2 ; [-48]
      106 DUPTABLE                         R15 K29 [{"__index"}]
      107 DUPCLOSURE                       R16 K30 [PROTO_2]
      108 SETTABLEKS                       R16 R15 K28 ["__index"]
      110 FASTCALL2                        SETMETATABLE R12 R15 ; [+4]
      112 MOVE                             R14 R12
      113 GETIMPORT                        R13 K32 [setmetatable]
      115 CALL                             R13 2 0
      116 RETURN                           R12 1
