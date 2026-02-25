PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Head"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["MAKEUP_FOLDER_NAME"]
        5 NAMECALL                         R1 R1 K2 ["FindFirstChild"]
        7 CALL                             R1 2 1
        8 JUMPIFEQKNIL                     R1 ; [+7]
       10 LOADK                            R4 K3 ["Folder"]
       11 NAMECALL                         R2 R1 K4 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R1 1
       16 GETIMPORT                        R2 K7 [Instance.new]
       18 LOADK                            R3 K3 ["Folder"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K1 ["MAKEUP_FOLDER_NAME"]
       23 SETTABLEKS                       R3 R2 K8 ["Name"]
       25 GETTABLEKS                       R3 R0 K0 ["Head"]
       27 SETTABLEKS                       R3 R2 K9 ["Parent"]
       29 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+8]
        3 GETUPVAL                         R0 0
        4 LOADK                            R2 K0 ["Head"]
        5 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        7 CALL                             R0 2 1
        8 JUMPIFNOTEQKNIL                  R0 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R0 R1 K0 ["Head"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K2 ["MAKEUP_DECAL_NAME"]
       17 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
       19 CALL                             R0 2 1
       20 JUMPIFEQKNIL                     R0 ; [+9]
       22 LOADK                            R3 K3 ["Decal"]
       23 NAMECALL                         R1 R0 K4 ["IsA"]
       25 CALL                             R1 2 1
       26 JUMPIFNOT                        R1 ; [+3]
       27 NAMECALL                         R1 R0 K5 ["Destroy"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["ZIndex"]
        2 GETTABLEKS                       R4 R1 K0 ["ZIndex"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ComposeDecalAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+8]
        3 GETUPVAL                         R0 0
        4 LOADK                            R2 K0 ["Head"]
        5 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        7 CALL                             R0 2 1
        8 JUMPIFNOTEQKNIL                  R0 ; [+2]
       10 RETURN                           R0 0
       11 DUPCLOSURE                       R0 K2 [PROTO_0]
       12 CAPTURE                          UPVAL U1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R4 R3 K0 ["Head"]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K3 ["MAKEUP_FOLDER_NAME"]
       22 NAMECALL                         R4 R4 K1 ["FindFirstChild"]
       24 CALL                             R4 2 1
       25 JUMPIFEQKNIL                     R4 ; [+8]
       27 LOADK                            R7 K4 ["Folder"]
       28 NAMECALL                         R5 R4 K5 ["IsA"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+2]
       32 MOVE                             R2 R4
       33 JUMP                             ; [+14]
       34 GETIMPORT                        R5 K8 [Instance.new]
       36 LOADK                            R6 K4 ["Folder"]
       37 CALL                             R5 1 1
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R6 R7 K3 ["MAKEUP_FOLDER_NAME"]
       41 SETTABLEKS                       R6 R5 K9 ["Name"]
       43 GETTABLEKS                       R6 R3 K0 ["Head"]
       45 SETTABLEKS                       R6 R5 K10 ["Parent"]
       47 MOVE                             R2 R5
       48 LOADNIL                          R3
       49 NAMECALL                         R4 R2 K11 ["GetChildren"]
       51 CALL                             R4 1 1
       52 NEWTABLE                         R5 0 0
       54 MOVE                             R6 R4
       55 LOADNIL                          R7
       56 LOADNIL                          R8
       57 FORGPREP                         R6
       58 LOADK                            R13 K12 ["Decal"]
       59 NAMECALL                         R11 R10 K5 ["IsA"]
       61 CALL                             R11 2 1
       62 JUMPIFNOT                        R11 ; [+19]
       63 LOADK                            R13 K13 ["WrapTextureTransfer"]
       64 NAMECALL                         R11 R10 K14 ["FindFirstChildOfClass"]
       66 CALL                             R11 2 1
       67 JUMPIFNOT                        R11 ; [+14]
       68 JUMPIFNOTEQKNIL                  R3 ; [+6]
       70 LOADK                            R13 K13 ["WrapTextureTransfer"]
       71 NAMECALL                         R11 R10 K14 ["FindFirstChildOfClass"]
       73 CALL                             R11 2 1
       74 MOVE                             R3 R11
       75 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       77 MOVE                             R12 R5
       78 MOVE                             R13 R10
       79 GETIMPORT                        R11 K17 [table.insert]
       81 CALL                             R11 2 0
       82 FORGLOOP                         R6 2 ; [-25]
       84 GETIMPORT                        R6 K19 [table.sort]
       86 MOVE                             R7 R5
       87 DUPCLOSURE                       R8 K20 [PROTO_2]
       88 CALL                             R6 2 0
       89 NEWTABLE                         R6 0 0
       91 MOVE                             R7 R5
       92 LOADNIL                          R8
       93 LOADNIL                          R9
       94 FORGPREP                         R7
       95 DUPTABLE                         R14 K25 [{"ColorMap", "RoughnessMap", "MetalnessMap", "NormalMap"}]
       96 GETTABLEKS                       R15 R11 K26 ["TextureContent"]
       98 SETTABLEKS                       R15 R14 K21 ["ColorMap"]
      100 GETTABLEKS                       R15 R11 K27 ["RoughnessMapContent"]
      102 SETTABLEKS                       R15 R14 K22 ["RoughnessMap"]
      104 GETTABLEKS                       R15 R11 K28 ["MetalnessMapContent"]
      106 SETTABLEKS                       R15 R14 K23 ["MetalnessMap"]
      108 GETTABLEKS                       R15 R11 K29 ["NormalMapContent"]
      110 SETTABLEKS                       R15 R14 K24 ["NormalMap"]
      112 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      114 MOVE                             R13 R6
      115 GETIMPORT                        R12 K17 [table.insert]
      117 CALL                             R12 2 0
      118 FORGLOOP                         R7 2 ; [-24]
      120 LENGTH                           R7 R6
      121 JUMPIFNOTEQKN                    R7 K30 [0] ; [+32]
      123 GETUPVAL                         R7 0
      124 JUMPIFEQKNIL                     R7 ; [+28]
      126 GETUPVAL                         R7 0
      127 LOADK                            R9 K0 ["Head"]
      128 NAMECALL                         R7 R7 K1 ["FindFirstChild"]
      130 CALL                             R7 2 1
      131 JUMPIFNOTEQKNIL                  R7 ; [+2]
      133 RETURN                           R0 0
      134 GETUPVAL                         R8 0
      135 GETTABLEKS                       R7 R8 K0 ["Head"]
      137 GETUPVAL                         R10 1
      138 GETTABLEKS                       R9 R10 K31 ["MAKEUP_DECAL_NAME"]
      140 NAMECALL                         R7 R7 K1 ["FindFirstChild"]
      142 CALL                             R7 2 1
      143 JUMPIFEQKNIL                     R7 ; [+9]
      145 LOADK                            R10 K12 ["Decal"]
      146 NAMECALL                         R8 R7 K5 ["IsA"]
      148 CALL                             R8 2 1
      149 JUMPIFNOT                        R8 ; [+3]
      150 NAMECALL                         R8 R7 K32 ["Destroy"]
      152 CALL                             R8 1 0
      153 RETURN                           R0 0
      154 GETIMPORT                        R7 K34 [pcall]
      156 NEWCLOSURE                       R8 P3
      157 CAPTURE                          UPVAL U2
      158 CAPTURE                          VAL R6
      159 CALL                             R7 1 2
      160 JUMPIF                           R7 ; [+5]
      161 GETIMPORT                        R9 K36 [warn]
      163 LOADK                            R10 K37 ["ComposeDecalAsync return with error"]
      164 MOVE                             R11 R8
      165 CALL                             R9 2 0
      166 NAMECALL                         R9 R3 K38 ["Clone"]
      168 CALL                             R9 1 1
      169 SETTABLEKS                       R8 R9 K10 ["Parent"]
      171 GETUPVAL                         R10 0
      172 JUMPIFEQKNIL                     R10 ; [+28]
      174 GETUPVAL                         R10 0
      175 LOADK                            R12 K0 ["Head"]
      176 NAMECALL                         R10 R10 K1 ["FindFirstChild"]
      178 CALL                             R10 2 1
      179 JUMPIFNOTEQKNIL                  R10 ; [+2]
      181 JUMP                             ; [+19]
      182 GETUPVAL                         R11 0
      183 GETTABLEKS                       R10 R11 K0 ["Head"]
      185 GETUPVAL                         R13 1
      186 GETTABLEKS                       R12 R13 K31 ["MAKEUP_DECAL_NAME"]
      188 NAMECALL                         R10 R10 K1 ["FindFirstChild"]
      190 CALL                             R10 2 1
      191 JUMPIFEQKNIL                     R10 ; [+9]
      193 LOADK                            R13 K12 ["Decal"]
      194 NAMECALL                         R11 R10 K5 ["IsA"]
      196 CALL                             R11 2 1
      197 JUMPIFNOT                        R11 ; [+3]
      198 NAMECALL                         R11 R10 K32 ["Destroy"]
      200 CALL                             R11 1 0
      201 GETUPVAL                         R10 0
      202 JUMPIFEQKNIL                     R10 ; [+8]
      204 GETUPVAL                         R10 0
      205 LOADK                            R12 K0 ["Head"]
      206 NAMECALL                         R10 R10 K1 ["FindFirstChild"]
      208 CALL                             R10 2 1
      209 JUMPIFNOTEQKNIL                  R10 ; [+2]
      211 RETURN                           R0 0
      212 GETUPVAL                         R11 1
      213 GETTABLEKS                       R10 R11 K31 ["MAKEUP_DECAL_NAME"]
      215 SETTABLEKS                       R10 R8 K9 ["Name"]
      217 GETUPVAL                         R11 0
      218 GETTABLEKS                       R10 R11 K0 ["Head"]
      220 SETTABLEKS                       R10 R8 K10 ["Parent"]
      222 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["THROTTLE_DELAY"]
        5 LOADB                            R3 1
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 1
        9 MOVE                             R4 R0
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K1 ["useMemo"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U1
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R1
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R2 2 1
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R1 K12 ["Src"]
       24 GETTABLEKS                       R5 R6 K13 ["Util"]
       26 GETTABLEKS                       R4 R5 K14 ["Constants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R1 K12 ["Src"]
       33 GETTABLEKS                       R5 R6 K15 ["Types"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R8 R1 K12 ["Src"]
       40 GETTABLEKS                       R7 R8 K13 ["Util"]
       42 GETTABLEKS                       R6 R7 K16 ["createCallThrottler"]
       44 CALL                             R5 1 1
       45 DUPCLOSURE                       R6 K17 [PROTO_6]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R5
       50 RETURN                           R6 1
