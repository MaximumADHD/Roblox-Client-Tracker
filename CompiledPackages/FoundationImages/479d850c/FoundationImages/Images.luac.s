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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationImagesRemoveDeprecatedIconAssets"]
        3 JUMPIFNOT                        R2 ; [+22]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R3 R1
        6 JUMPIFNOT                        R2 ; [+19]
        7 DUPTABLE                         R3 K4 [{"ImageRectOffset", "ImageRectSize", "Image"}]
        8 GETIMPORT                        R4 K7 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K1 ["ImageRectOffset"]
       15 GETIMPORT                        R4 K7 [Vector2.new]
       17 LOADN                            R5 0
       18 LOADN                            R6 0
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K2 ["ImageRectSize"]
       22 SETTABLEKS                       R1 R3 K3 ["Image"]
       24 SETTABLE                         R3 R0 R1
       25 RETURN                           R3 1
       26 GETIMPORT                        R2 K9 [error]
       28 LOADK                            R3 K10 ["%q is not a valid member of Images"]
       29 FASTCALL1                        TOSTRING R1 ; [+3]
       30 MOVE                             R6 R1
       31 GETIMPORT                        R5 K12 [tostring]
       33 CALL                             R5 1 1
       34 NAMECALL                         R3 R3 K13 ["format"]
       36 CALL                             R3 2 1
       37 LOADN                            R4 2
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Generated"]
        9 GETTABLEKS                       R2 R2 K6 ["GetImageSetData"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K5 ["Generated"]
       16 GETTABLEKS                       R3 R3 K7 ["FallbackImages"]
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
       44 GETTABLEKS                       R9 R0 K2 ["Parent"]
       46 GETIMPORT                        R10 K4 [require]
       48 GETTABLEKS                       R11 R9 K12 ["BuilderIcons"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K4 [require]
       53 GETTABLEKS                       R12 R0 K13 ["Flags"]
       55 CALL                             R11 1 1
       56 GETTABLEKS                       R13 R10 K15 ["Migration"]
       58 GETTABLEKS                       R12 R13 K14 ["uiblox"]
       60 GETIMPORT                        R13 K4 [require]
       62 GETTABLEKS                       R14 R0 K16 ["whitelistedIconAssets"]
       64 CALL                             R13 1 1
       65 DUPCLOSURE                       R14 K17 [PROTO_0]
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R5
       68 DUPCLOSURE                       R15 K18 [PROTO_1]
       69 CAPTURE                          VAL R2
       70 MOVE                             R16 R14
       71 CALL                             R16 0 1
       72 NEWTABLE                         R17 0 0
       74 MOVE                             R18 R7
       75 LOADNIL                          R19
       76 LOADNIL                          R20
       77 FORGPREP                         R18
       78 GETTABLEKS                       R23 R11 K19 ["FoundationImagesRemoveDeprecatedIconAssets"]
       80 JUMPIFNOT                        R23 ; [+5]
       81 GETTABLE                         R23 R13 R21
       82 JUMPIFNOTEQKNIL                  R23 ; [+3]
       84 GETTABLE                         R23 R12 R21
       85 JUMPIF                           R23 ; [+46]
       86 FASTCALL1                        TYPEOF R22 ; [+3]
       87 MOVE                             R26 R22
       88 GETIMPORT                        R25 K21 [typeof]
       90 CALL                             R25 1 1
       91 JUMPIFEQKS                       R25 K22 ["table"] ; [+2]
       93 LOADB                            R24 0 +1
       94 LOADB                            R24 1
       95 LOADK                            R26 K23 ["invalid sourceData from GetImageSetData for scale "]
       96 FASTCALL1                        TOSTRING R8 ; [+3]
       97 MOVE                             R28 R8
       98 GETIMPORT                        R27 K25 [tostring]
      100 CALL                             R27 1 1
      101 CONCAT                           R25 R26 R27
      102 FASTCALL2                        ASSERT R24 R25 ; [+3]
      104 GETIMPORT                        R23 K27 [assert]
      106 CALL                             R23 2 0
      107 NEWTABLE                         R23 1 0
      109 MOVE                             R24 R22
      110 LOADNIL                          R25
      111 LOADNIL                          R26
      112 FORGPREP                         R24
      113 JUMPIFNOTEQKS                    R27 K28 ["ImageSet"] ; [+14]
      115 JUMPIFNOTEQKNIL                  R16 ; [+3]
      117 GETTABLE                         R29 R2 R28
      118 JUMP                             ; [+6]
      119 GETIMPORT                        R29 K31 [string.format]
      121 LOADK                            R30 K32 ["rbxasset://%s/SpriteSheets/%s.png"]
      122 MOVE                             R31 R16
      123 MOVE                             R32 R28
      124 CALL                             R29 3 1
      125 SETTABLEKS                       R29 R23 K33 ["Image"]
      127 JUMP                             ; [+1]
      128 SETTABLE                         R28 R23 R27
      129 FORGLOOP                         R24 2 ; [-17]
      131 SETTABLE                         R23 R17 R21
      132 FORGLOOP                         R18 2 ; [-55]
      134 DUPTABLE                         R20 K35 [{"__index"}]
      135 DUPCLOSURE                       R21 K36 [PROTO_2]
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R12
      138 SETTABLEKS                       R21 R20 K34 ["__index"]
      140 FASTCALL2                        SETMETATABLE R17 R20 ; [+4]
      142 MOVE                             R19 R17
      143 GETIMPORT                        R18 K38 [setmetatable]
      145 CALL                             R18 2 0
      146 RETURN                           R17 1
