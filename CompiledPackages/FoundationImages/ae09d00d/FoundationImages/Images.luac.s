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
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+19]
        3 DUPTABLE                         R3 K3 [{"ImageRectOffset", "ImageRectSize", "Image"}]
        4 GETIMPORT                        R4 K6 [Vector2.new]
        6 LOADN                            R5 0
        7 LOADN                            R6 0
        8 CALL                             R4 2 1
        9 SETTABLEKS                       R4 R3 K0 ["ImageRectOffset"]
       11 GETIMPORT                        R4 K6 [Vector2.new]
       13 LOADN                            R5 0
       14 LOADN                            R6 0
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K1 ["ImageRectSize"]
       18 SETTABLEKS                       R1 R3 K2 ["Image"]
       20 SETTABLE                         R3 R0 R1
       21 RETURN                           R3 1
       22 GETIMPORT                        R3 K8 [error]
       24 LOADK                            R4 K9 ["%q is not a valid member of Images"]
       25 FASTCALL1                        TOSTRING R1 ; [+3]
       26 MOVE                             R7 R1
       27 GETIMPORT                        R6 K11 [tostring]
       29 CALL                             R6 1 1
       30 NAMECALL                         R4 R4 K12 ["format"]
       32 CALL                             R4 2 1
       33 LOADN                            R5 2
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

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
       51 GETTABLEKS                       R12 R10 K14 ["Migration"]
       53 GETTABLEKS                       R11 R12 K13 ["uiblox"]
       55 GETIMPORT                        R12 K4 [require]
       57 GETTABLEKS                       R13 R0 K15 ["whitelistedIconAssets"]
       59 CALL                             R12 1 1
       60 DUPCLOSURE                       R13 K16 [PROTO_0]
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R5
       63 DUPCLOSURE                       R14 K17 [PROTO_1]
       64 CAPTURE                          VAL R2
       65 MOVE                             R15 R13
       66 CALL                             R15 0 1
       67 NEWTABLE                         R16 0 0
       69 MOVE                             R17 R7
       70 LOADNIL                          R18
       71 LOADNIL                          R19
       72 FORGPREP                         R17
       73 GETTABLE                         R22 R12 R20
       74 JUMPIFNOTEQKNIL                  R22 ; [+3]
       76 GETTABLE                         R22 R11 R20
       77 JUMPIF                           R22 ; [+46]
       78 FASTCALL1                        TYPEOF R21 ; [+3]
       79 MOVE                             R25 R21
       80 GETIMPORT                        R24 K19 [typeof]
       82 CALL                             R24 1 1
       83 JUMPIFEQKS                       R24 K20 ["table"] ; [+2]
       85 LOADB                            R23 0 +1
       86 LOADB                            R23 1
       87 LOADK                            R25 K21 ["invalid sourceData from GetImageSetData for scale "]
       88 FASTCALL1                        TOSTRING R8 ; [+3]
       89 MOVE                             R27 R8
       90 GETIMPORT                        R26 K23 [tostring]
       92 CALL                             R26 1 1
       93 CONCAT                           R24 R25 R26
       94 FASTCALL2                        ASSERT R23 R24 ; [+3]
       96 GETIMPORT                        R22 K25 [assert]
       98 CALL                             R22 2 0
       99 NEWTABLE                         R22 1 0
      101 MOVE                             R23 R21
      102 LOADNIL                          R24
      103 LOADNIL                          R25
      104 FORGPREP                         R23
      105 JUMPIFNOTEQKS                    R26 K26 ["ImageSet"] ; [+14]
      107 JUMPIFNOTEQKNIL                  R15 ; [+3]
      109 GETTABLE                         R28 R2 R27
      110 JUMP                             ; [+6]
      111 GETIMPORT                        R28 K29 [string.format]
      113 LOADK                            R29 K30 ["rbxasset://%s/SpriteSheets/%s.png"]
      114 MOVE                             R30 R15
      115 MOVE                             R31 R27
      116 CALL                             R28 3 1
      117 SETTABLEKS                       R28 R22 K31 ["Image"]
      119 JUMP                             ; [+1]
      120 SETTABLE                         R27 R22 R26
      121 FORGLOOP                         R23 2 ; [-17]
      123 SETTABLE                         R22 R16 R20
      124 FORGLOOP                         R17 2 ; [-52]
      126 DUPTABLE                         R19 K33 [{"__index"}]
      127 DUPCLOSURE                       R20 K34 [PROTO_2]
      128 CAPTURE                          VAL R11
      129 SETTABLEKS                       R20 R19 K32 ["__index"]
      131 FASTCALL2                        SETMETATABLE R16 R19 ; [+4]
      133 MOVE                             R18 R16
      134 GETIMPORT                        R17 K36 [setmetatable]
      136 CALL                             R17 2 0
      137 RETURN                           R16 1
