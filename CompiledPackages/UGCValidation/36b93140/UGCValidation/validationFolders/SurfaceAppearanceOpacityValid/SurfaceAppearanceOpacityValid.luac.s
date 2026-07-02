PROTO_0:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R4 R0 K3 ["Size"]
        7 NAMECALL                         R1 R0 K4 ["ReadPixelsBuffer"]
        9 CALL                             R1 3 1
       10 LOADN                            R4 0
       11 GETIMPORT                        R5 K8 [buffer.len]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 1
       15 SUBK                             R2 R5 K5 [1]
       16 LOADN                            R3 4
       17 FORNPREP                         R2
       18 ADDK                             R7 R4 K9 [3]
       19 FASTCALL2                        BUFFER_READU8 R1 R7 ; [+4]
       21 MOVE                             R6 R1
       22 GETIMPORT                        R5 K11 [buffer.readu8]
       24 CALL                             R5 2 1
       25 LOADN                            R6 255
       26 JUMPIFNOTLT                      R5 R6 ; [+3]
       28 LOADB                            R6 0
       29 RETURN                           R6 1
       30 FORNLOOP                         R2
       31 LOADB                            R2 1
       32 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["meshTextures"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["DATA_FETCH_FAILURE"]
        8 JUMPIFNOTEQ                      R3 R4 ; [+6]
       10 LOADK                            R6 K3 ["Failed to load texture data for surface appearance opacity check"]
       11 NAMECALL                         R4 R0 K4 ["fetchError"]
       13 CALL                             R4 2 0
       14 RETURN                           R0 0
       15 NAMECALL                         R4 R2 K5 ["GetDescendants"]
       17 CALL                             R4 1 1
       18 FASTCALL2                        TABLE_INSERT R4 R2 ; [+5]
       20 MOVE                             R6 R4
       21 MOVE                             R7 R2
       22 GETIMPORT                        R5 K8 [table.insert]
       24 CALL                             R5 2 0
       25 MOVE                             R5 R4
       26 LOADNIL                          R6
       27 LOADNIL                          R7
       28 FORGPREP                         R5
       29 LOADK                            R12 K9 ["MeshPart"]
       30 NAMECALL                         R10 R9 K10 ["IsA"]
       32 CALL                             R10 2 1
       33 JUMPIFNOT                        R10 ; [+86]
       34 LOADK                            R12 K11 ["SurfaceAppearance"]
       35 NAMECALL                         R10 R9 K12 ["FindFirstChildWhichIsA"]
       37 CALL                             R10 2 1
       38 JUMPIFNOT                        R10 ; [+81]
       39 GETTABLEKS                       R11 R10 K13 ["AlphaMode"]
       41 GETIMPORT                        R12 K16 [Enum.AlphaMode.Overlay]
       43 JUMPIFEQ                         R11 R12 ; [+16]
       45 GETUPVAL                         R13 1
       46 GETTABLEKS                       R13 R13 K17 ["Keys"]
       48 GETTABLEKS                       R13 R13 K18 ["SAOpacity_InvalidAlphaMode"]
       50 DUPTABLE                         R14 K20 [{"FullName"}]
       51 NAMECALL                         R15 R9 K21 ["GetFullName"]
       53 CALL                             R15 1 1
       54 SETTABLEKS                       R15 R14 K19 ["FullName"]
       56 MOVE                             R15 R10
       57 NAMECALL                         R11 R0 K22 ["fail"]
       59 CALL                             R11 4 0
       60 GETTABLEKS                       R12 R9 K23 ["Name"]
       62 GETTABLE                         R11 R3 R12
       63 JUMPIFNOT                        R11 ; [+56]
       64 GETTABLEKS                       R12 R11 K24 ["isPBR"]
       66 JUMPIFNOT                        R12 ; [+53]
       67 GETUPVAL                         R12 2
       68 LOADNIL                          R13
       69 LOADNIL                          R14
       70 FORGPREP                         R12
       71 GETTABLE                         R17 R11 R15
       72 JUMPIFNOT                        R17 ; [+45]
       73 GETTABLEKS                       R18 R17 K25 ["editable"]
       75 JUMPIF                           R18 ; [+18]
       76 GETUPVAL                         R20 1
       77 GETTABLEKS                       R20 R20 K17 ["Keys"]
       79 GETTABLEKS                       R20 R20 K26 ["SAOpacity_FailedToLoadTexture"]
       81 DUPTABLE                         R21 K28 [{"FullName", "FieldName"}]
       82 NAMECALL                         R22 R10 K21 ["GetFullName"]
       84 CALL                             R22 1 1
       85 SETTABLEKS                       R22 R21 K19 ["FullName"]
       87 SETTABLEKS                       R15 R21 K27 ["FieldName"]
       89 MOVE                             R22 R10
       90 NAMECALL                         R18 R0 K22 ["fail"]
       92 CALL                             R18 4 0
       93 JUMP                             ; [+24]
       94 GETUPVAL                         R18 3
       95 GETTABLEKS                       R19 R17 K25 ["editable"]
       97 CALL                             R18 1 1
       98 JUMPIF                           R18 ; [+19]
       99 GETUPVAL                         R21 1
      100 GETTABLEKS                       R21 R21 K17 ["Keys"]
      102 GETTABLEKS                       R21 R21 K29 ["SAOpacity_TextureNotOpaque"]
      104 DUPTABLE                         R22 K20 [{"FullName"}]
      105 NAMECALL                         R27 R10 K21 ["GetFullName"]
      107 CALL                             R27 1 1
      108 MOVE                             R24 R27
      109 LOADK                            R25 K30 ["."]
      110 MOVE                             R26 R15
      111 CONCAT                           R23 R24 R26
      112 SETTABLEKS                       R23 R22 K19 ["FullName"]
      114 MOVE                             R23 R10
      115 NAMECALL                         R19 R0 K22 ["fail"]
      117 CALL                             R19 4 0
      118 FORGLOOP                         R12 2 ; [-48]
      120 FORGLOOP                         R5 2 ; [-92]
      122 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["validationSystem"]
       34 GETTABLEKS                       R5 R5 K10 ["dataFetchModules"]
       36 GETTABLEKS                       R5 R5 K11 ["FetchAllDesiredData"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K12 ["flags"]
       43 GETTABLEKS                       R6 R6 K13 ["getFFlagUGCValidateMigrateTextureTransparency"]
       45 CALL                             R5 1 1
       46 DUPTABLE                         R6 K17 [{["ColorMap"] = True, ["NormalMap"] = True}]
       47 NEWTABLE                         R7 8 0
       49 NEWTABLE                         R8 0 1
       51 GETTABLEKS                       R9 R2 K18 ["UploadCategory"]
       53 GETTABLEKS                       R9 R9 K19 ["RIGID_ACCESSORY"]
       55 SETLIST                          R8 R9 1 [1]
       57 SETTABLEKS                       R8 R7 K20 ["categories"]
       59 NEWTABLE                         R8 0 0
       61 SETTABLEKS                       R8 R7 K21 ["requiredData"]
       63 NEWTABLE                         R8 0 1
       65 GETTABLEKS                       R9 R2 K22 ["SharedDataMember"]
       67 GETTABLEKS                       R9 R9 K23 ["meshTextures"]
       69 SETLIST                          R8 R9 1 [1]
       71 SETTABLEKS                       R8 R7 K24 ["conditionalData"]
       73 SETTABLEKS                       R5 R7 K25 ["fflag"]
       75 NEWTABLE                         R8 0 0
       77 SETTABLEKS                       R8 R7 K26 ["expectedFailures"]
       79 DUPCLOSURE                       R8 K27 [PROTO_0]
       80 DUPCLOSURE                       R9 K28 [PROTO_1]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R9 R7 K29 ["run"]
       87 RETURN                           R7 1
