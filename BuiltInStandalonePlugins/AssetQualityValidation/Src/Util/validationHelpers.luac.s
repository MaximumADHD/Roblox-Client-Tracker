PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["util"]
        3 GETTABLEKS                       R0 R0 K1 ["createUGCBodyPartFolders"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 LOADB                            R4 1
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 NAMECALL                         R5 R0 K0 ["Clone"]
        2 CALL                             R5 1 1
        3 GETUPVAL                         R6 0
        4 MOVE                             R7 R5
        5 CALL                             R6 1 0
        6 GETIMPORT                        R6 K2 [pcall]
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R5
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R1
       13 CALL                             R6 1 2
       14 JUMPIFNOT                        R6 ; [+54]
       15 JUMPIFNOT                        R7 ; [+53]
       16 GETIMPORT                        R8 K4 [next]
       18 MOVE                             R9 R7
       19 CALL                             R8 1 1
       20 JUMPIFNOT                        R8 ; [+48]
       21 MOVE                             R8 R7
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 FORGPREP                         R8
       25 FASTCALL1                        TYPEOF R11 ; [+3]
       26 MOVE                             R15 R11
       27 GETIMPORT                        R14 K6 [typeof]
       29 CALL                             R14 1 1
       30 JUMPIFNOTEQKS                    R14 K7 ["EnumItem"] ; [+4]
       32 GETTABLEKS                       R13 R11 K8 ["Value"]
       34 JUMP                             ; [+1]
       35 LOADN                            R13 10
       36 GETIMPORT                        R14 K11 [Instance.new]
       38 LOADK                            R15 K12 ["Model"]
       39 CALL                             R14 1 1
       40 MOVE                             R15 R12
       41 LOADNIL                          R16
       42 LOADNIL                          R17
       43 FORGPREP                         R15
       44 SETTABLEKS                       R14 R19 K13 ["Parent"]
       46 FORGLOOP                         R15 2 ; [-3]
       48 FASTCALL2                        TABLE_INSERT R3 R14 ; [+5]
       50 MOVE                             R16 R3
       51 MOVE                             R17 R14
       52 GETIMPORT                        R15 K16 [table.insert]
       54 CALL                             R15 2 0
       55 FASTCALL2                        TABLE_INSERT R4 R13 ; [+5]
       57 MOVE                             R16 R4
       58 MOVE                             R17 R13
       59 GETIMPORT                        R15 K16 [table.insert]
       61 CALL                             R15 2 0
       62 FORGLOOP                         R8 2 ; [-38]
       64 NAMECALL                         R8 R5 K17 ["Destroy"]
       66 CALL                             R8 1 0
       67 LOADB                            R8 1
       68 RETURN                           R8 1
       69 NAMECALL                         R8 R5 K17 ["Destroy"]
       71 CALL                             R8 1 0
       72 GETIMPORT                        R8 K19 [warn]
       74 LOADK                            R9 K20 ["[AssetQualityValidation] Failed to split bundle type"]
       75 MOVE                             R10 R1
       76 LOADK                            R11 K21 ["for"]
       77 GETTABLEKS                       R12 R0 K22 ["Name"]
       79 LOADK                            R13 K23 ["- falling back to Model type"]
       80 CALL                             R8 5 0
       81 LOADB                            R8 0
       82 RETURN                           R8 1

PROTO_2:
        0 GETTABLEN                        R3 R1 1
        1 JUMPIFNOT                        R3 ; [+3]
        2 GETTABLEKS                       R4 R3 K0 ["assetTypeId"]
        4 JUMP                             ; [+1]
        5 LOADNIL                          R4
        6 LOADB                            R5 0
        7 FASTCALL1                        TYPEOF R4 ; [+3]
        8 MOVE                             R7 R4
        9 GETIMPORT                        R6 K2 [typeof]
       11 CALL                             R6 1 1
       12 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+20]
       14 LOADB                            R5 0
       15 GETIMPORT                        R6 K5 [string.find]
       17 MOVE                             R7 R4
       18 LOADK                            R8 K6 ["^bundle:"]
       19 CALL                             R6 2 1
       20 JUMPIFEQKNIL                     R6 ; [+12]
       22 FASTCALL2K                       STRING_SUB R4 K7 ; [+5]
       24 MOVE                             R7 R4
       25 LOADK                            R8 K7 [8]
       26 GETIMPORT                        R6 K9 [string.sub]
       28 CALL                             R6 2 1
       29 JUMPIFEQKS                       R6 K10 ["Body"] ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 JUMPIFNOT                        R5 ; [+45]
       34 GETTABLEN                        R6 R0 1
       35 NEWTABLE                         R7 0 0
       37 NEWTABLE                         R8 0 0
       39 GETUPVAL                         R9 0
       40 MOVE                             R10 R6
       41 LOADK                            R11 K10 ["Body"]
       42 MOVE                             R12 R2
       43 MOVE                             R13 R7
       44 MOVE                             R14 R8
       45 CALL                             R9 5 1
       46 JUMPIF                           R9 ; [+28]
       47 GETIMPORT                        R10 K13 [Instance.new]
       49 LOADK                            R11 K14 ["Model"]
       50 CALL                             R10 1 1
       51 GETTABLEKS                       R11 R6 K15 ["Name"]
       53 SETTABLEKS                       R11 R10 K15 ["Name"]
       55 NAMECALL                         R11 R6 K16 ["Clone"]
       57 CALL                             R11 1 1
       58 GETUPVAL                         R12 1
       59 MOVE                             R13 R11
       60 CALL                             R12 1 0
       61 SETTABLEKS                       R10 R11 K17 ["Parent"]
       63 NEWTABLE                         R12 0 1
       65 MOVE                             R13 R10
       66 SETLIST                          R12 R13 1 [1]
       68 NEWTABLE                         R13 0 1
       70 LOADN                            R14 10
       71 SETLIST                          R13 R14 1 [1]
       73 LOADB                            R14 1
       74 RETURN                           R12 3
       75 MOVE                             R10 R7
       76 MOVE                             R11 R8
       77 LOADB                            R12 1
       78 RETURN                           R10 3
       79 NEWTABLE                         R6 0 0
       81 NEWTABLE                         R7 0 0
       83 LOADB                            R8 0
       84 MOVE                             R9 R1
       85 LOADNIL                          R10
       86 LOADNIL                          R11
       87 FORGPREP                         R9
       88 GETTABLEKS                       R14 R13 K0 ["assetTypeId"]
       90 FASTCALL1                        TYPEOF R14 ; [+3]
       91 MOVE                             R16 R14
       92 GETIMPORT                        R15 K2 [typeof]
       94 CALL                             R15 1 1
       95 JUMPIFNOTEQKS                    R15 K3 ["string"] ; [+57]
       97 GETIMPORT                        R15 K5 [string.find]
       99 MOVE                             R16 R14
      100 LOADK                            R17 K6 ["^bundle:"]
      101 CALL                             R15 2 1
      102 JUMPIFNOT                        R15 ; [+50]
      103 FASTCALL2K                       STRING_SUB R14 K7 ; [+5]
      105 MOVE                             R16 R14
      106 LOADK                            R17 K7 [8]
      107 GETIMPORT                        R15 K9 [string.sub]
      109 CALL                             R15 2 1
      110 JUMPIFNOTEQKS                    R15 K10 ["Body"] ; [+2]
      112 LOADB                            R8 1
      113 GETTABLE                         R16 R0 R12
      114 GETUPVAL                         R17 0
      115 MOVE                             R18 R16
      116 MOVE                             R19 R15
      117 MOVE                             R20 R2
      118 MOVE                             R21 R6
      119 MOVE                             R22 R7
      120 CALL                             R17 5 1
      121 JUMPIF                           R17 ; [+76]
      122 GETIMPORT                        R18 K13 [Instance.new]
      124 LOADK                            R19 K14 ["Model"]
      125 CALL                             R18 1 1
      126 GETTABLEKS                       R19 R16 K15 ["Name"]
      128 SETTABLEKS                       R19 R18 K15 ["Name"]
      130 NAMECALL                         R19 R16 K16 ["Clone"]
      132 CALL                             R19 1 1
      133 GETUPVAL                         R20 1
      134 MOVE                             R21 R19
      135 CALL                             R20 1 0
      136 SETTABLEKS                       R18 R19 K17 ["Parent"]
      138 FASTCALL2                        TABLE_INSERT R6 R18 ; [+5]
      140 MOVE                             R21 R6
      141 MOVE                             R22 R18
      142 GETIMPORT                        R20 K20 [table.insert]
      144 CALL                             R20 2 0
      145 FASTCALL2K                       TABLE_INSERT R7 K21 ; [+5]
      147 MOVE                             R21 R7
      148 LOADK                            R22 K21 [10]
      149 GETIMPORT                        R20 K20 [table.insert]
      151 CALL                             R20 2 0
      152 JUMP                             ; [+45]
      153 FASTCALL1                        TYPEOF R14 ; [+3]
      154 MOVE                             R17 R14
      155 GETIMPORT                        R16 K2 [typeof]
      157 CALL                             R16 1 1
      158 JUMPIFNOTEQKS                    R16 K22 ["number"] ; [+6]
      160 LOADN                            R16 0
      161 JUMPIFNOTLT                      R16 R14 ; [+3]
      163 MOVE                             R15 R14
      164 JUMP                             ; [+1]
      165 LOADN                            R15 10
      166 GETIMPORT                        R16 K13 [Instance.new]
      168 LOADK                            R17 K14 ["Model"]
      169 CALL                             R16 1 1
      170 GETTABLE                         R17 R0 R12
      171 GETTABLEKS                       R17 R17 K15 ["Name"]
      173 SETTABLEKS                       R17 R16 K15 ["Name"]
      175 GETTABLE                         R17 R0 R12
      176 NAMECALL                         R17 R17 K16 ["Clone"]
      178 CALL                             R17 1 1
      179 GETUPVAL                         R18 1
      180 MOVE                             R19 R17
      181 CALL                             R18 1 0
      182 SETTABLEKS                       R16 R17 K17 ["Parent"]
      184 FASTCALL2                        TABLE_INSERT R6 R16 ; [+5]
      186 MOVE                             R19 R6
      187 MOVE                             R20 R16
      188 GETIMPORT                        R18 K20 [table.insert]
      190 CALL                             R18 2 0
      191 FASTCALL2                        TABLE_INSERT R7 R15 ; [+5]
      193 MOVE                             R19 R7
      194 MOVE                             R20 R15
      195 GETIMPORT                        R18 K20 [table.insert]
      197 CALL                             R18 2 0
      198 FORGLOOP                         R9 2 ; [-111]
      200 RETURN                           R6 3

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+12]
        3 LOADK                            R2 K0 ["Internal"]
        4 SETTABLEKS                       R2 R1 K1 ["ConsumerName"]
        6 LOADK                            R2 K2 ["true"]
        7 SETTABLEKS                       R2 R1 K3 ["ValidateSingleAssetsInBundle"]
        9 LOADK                            R2 K4 ["1"]
       10 SETTABLEKS                       R2 R1 K5 ["IntendedBundleTypeId"]
       12 LOADK                            R2 K6 ["{\"HumanoidScaleValues\": {\"height\": 1},\"BodyColors\": {\"head\": \"#FF0000\"}}"]
       13 SETTABLEKS                       R2 R1 K7 ["FullBundleData"]
       15 DUPTABLE                         R2 K11 [{"mode", "postQualitySteps", "options"}]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K12 ["getFStringAssetQualityValidationMode"]
       19 CALL                             R3 0 1
       20 SETTABLEKS                       R3 R2 K8 ["mode"]
       22 NEWTABLE                         R3 0 1
       24 LOADK                            R4 K13 ["validation"]
       25 SETLIST                          R3 R4 1 [1]
       27 SETTABLEKS                       R3 R2 K9 ["postQualitySteps"]
       29 SETTABLEKS                       R1 R2 K10 ["options"]
       31 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 JUMPIFNOT                        R0 ; [+124]
        5 GETTABLEKS                       R4 R0 K0 ["assetResults"]
        7 JUMPIFNOT                        R4 ; [+121]
        8 GETTABLEKS                       R4 R0 K0 ["assetResults"]
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETTABLEKS                       R9 R8 K1 ["entries"]
       15 JUMPIF                           R9 ; [+2]
       16 NEWTABLE                         R9 0 0
       18 LOADNIL                          R10
       19 LOADNIL                          R11
       20 FORGPREP                         R9
       21 GETTABLEKS                       R14 R13 K2 ["stateName"]
       23 JUMPIFNOTEQKNIL                  R14 ; [+12]
       25 GETIMPORT                        R15 K4 [warn]
       27 LOADK                            R16 K5 ["[AssetQualityValidation] dropping entry with nil stateName, message:"]
       28 GETTABLEKS                       R18 R13 K6 ["message"]
       30 FASTCALL1                        TOSTRING R18 ; [+2]
       31 GETIMPORT                        R17 K8 [tostring]
       33 CALL                             R17 1 1
       34 CALL                             R15 2 0
       35 JUMP                             ; [+89]
       36 LENGTH                           R16 R2
       37 ADDK                             R15 R16 K9 [1]
       38 DUPTABLE                         R18 K14 [{"entryIndex", "groupKey", "validationEnum", "severity"}]
       39 SETTABLEKS                       R15 R18 K10 ["entryIndex"]
       41 SETTABLEKS                       R14 R18 K11 ["groupKey"]
       43 GETTABLEKS                       R19 R13 K6 ["message"]
       45 SETTABLEKS                       R19 R18 K12 ["validationEnum"]
       47 GETTABLEKS                       R20 R13 K13 ["severity"]
       49 JUMPIFNOTEQKS                    R20 K15 ["failure"] ; [+3]
       51 LOADK                            R19 K16 ["Error"]
       52 JUMP                             ; [+1]
       53 LOADK                            R19 K17 ["Warning"]
       54 SETTABLEKS                       R19 R18 K13 ["severity"]
       56 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
       58 MOVE                             R17 R2
       59 GETIMPORT                        R16 K20 [table.insert]
       61 CALL                             R16 2 0
       62 LOADNIL                          R16
       63 GETTABLEKS                       R18 R1 K21 ["measureNameToMeshNames"]
       65 GETTABLE                         R17 R18 R14
       66 JUMPIFNOT                        R17 ; [+31]
       67 GETTABLEKS                       R19 R13 K6 ["message"]
       69 ORK                              R18 R19 K22 [""]
       70 MOVE                             R19 R17
       71 LOADNIL                          R20
       72 LOADNIL                          R21
       73 FORGPREP                         R19
       74 GETIMPORT                        R24 K25 [string.find]
       76 MOVE                             R25 R18
       77 MOVE                             R26 R23
       78 LOADN                            R27 1
       79 LOADB                            R28 1
       80 CALL                             R24 4 1
       81 JUMPIFNOT                        R24 ; [+6]
       82 JUMPIFNOT                        R16 ; [+4]
       83 LENGTH                           R24 R23
       84 LENGTH                           R25 R16
       85 JUMPIFNOTLT                      R25 R24 ; [+2]
       87 MOVE                             R16 R23
       88 FORGLOOP                         R19 2 ; [-15]
       90 MOVE                             R19 R17
       91 LOADNIL                          R20
       92 LOADNIL                          R21
       93 FORGPREP                         R19
       94 LOADB                            R24 1
       95 SETTABLE                         R24 R3 R23
       96 FORGLOOP                         R19 2 ; [-3]
       98 GETTABLEKS                       R18 R1 K26 ["entriesByIndex"]
      100 DUPTABLE                         R19 K29 [{"measureName", "meshName"}]
      101 SETTABLEKS                       R14 R19 K27 ["measureName"]
      103 SETTABLEKS                       R16 R19 K28 ["meshName"]
      105 SETTABLE                         R19 R18 R15
      106 GETTABLEKS                       R18 R13 K30 ["instance3DMesh"]
      108 JUMPIFNOT                        R18 ; [+16]
      109 GETTABLEKS                       R18 R13 K31 ["instanceVisualizationType"]
      111 JUMPIFNOTEQKS                    R18 K32 ["Vertex"] ; [+13]
      113 GETTABLEKS                       R18 R13 K2 ["stateName"]
      115 JUMPIFNOTEQKS                    R18 K33 ["Measure_Cage_Distance_Head"] ; [+9]
      117 GETTABLEKS                       R18 R1 K34 ["buildVertexVisualizationMeshPart"]
      119 MOVE                             R19 R13
      120 CALL                             R18 1 1
      121 JUMPIFNOT                        R18 ; [+3]
      122 GETTABLEKS                       R19 R1 K35 ["entryVisualMeshParts"]
      124 SETTABLE                         R18 R19 R15
      125 FORGLOOP                         R9 2 ; [-105]
      127 FORGLOOP                         R4 2 ; [-115]
      129 RETURN                           R2 2

PROTO_5:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["SphereHandleAdornment"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R1 R0 K4 ["Adornee"]
        7 GETIMPORT                        R1 K6 [CFrame.new]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K5 ["CFrame"]
       13 GETUPVAL                         R1 2
       14 SETTABLEKS                       R1 R0 K7 ["Radius"]
       16 GETUPVAL                         R1 3
       17 SETTABLEKS                       R1 R0 K8 ["Color3"]
       19 LOADB                            R1 1
       20 SETTABLEKS                       R1 R0 K9 ["AlwaysOnTop"]
       22 LOADN                            R1 2
       23 SETTABLEKS                       R1 R0 K10 ["ZIndex"]
       25 LOADB                            R1 0
       26 SETTABLEKS                       R1 R0 K11 ["Archivable"]
       28 GETUPVAL                         R1 0
       29 SETTABLEKS                       R1 R0 K12 ["Parent"]
       31 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R4 R1
        1 LOADNIL                          R5
        2 LOADNIL                          R6
        3 FORGPREP                         R4
        4 LOADNIL                          R9
        5 FASTCALL1                        TYPEOF R8 ; [+3]
        6 MOVE                             R11 R8
        7 GETIMPORT                        R10 K1 [typeof]
        9 CALL                             R10 1 1
       10 JUMPIFNOTEQKS                    R10 K2 ["Vector3"] ; [+3]
       12 MOVE                             R9 R8
       13 JUMP                             ; [+39]
       14 FASTCALL1                        TYPEOF R8 ; [+3]
       15 MOVE                             R11 R8
       16 GETIMPORT                        R10 K1 [typeof]
       18 CALL                             R10 1 1
       19 JUMPIFNOTEQKS                    R10 K3 ["table"] ; [+33]
       21 GETTABLEN                        R11 R8 1
       22 JUMPIF                           R11 ; [+7]
       23 GETTABLEKS                       R11 R8 K4 ["x"]
       25 JUMPIF                           R11 ; [+4]
       26 GETTABLEKS                       R11 R8 K5 ["X"]
       28 JUMPIF                           R11 ; [+1]
       29 LOADN                            R11 0
       30 GETTABLEN                        R12 R8 2
       31 JUMPIF                           R12 ; [+7]
       32 GETTABLEKS                       R12 R8 K6 ["y"]
       34 JUMPIF                           R12 ; [+4]
       35 GETTABLEKS                       R12 R8 K7 ["Y"]
       37 JUMPIF                           R12 ; [+1]
       38 LOADN                            R12 0
       39 GETTABLEN                        R13 R8 3
       40 JUMPIF                           R13 ; [+7]
       41 GETTABLEKS                       R13 R8 K8 ["z"]
       43 JUMPIF                           R13 ; [+4]
       44 GETTABLEKS                       R13 R8 K9 ["Z"]
       46 JUMPIF                           R13 ; [+1]
       47 LOADN                            R13 0
       48 FASTCALL                         VECTOR ; [+2]
       49 GETIMPORT                        R10 K11 [Vector3.new]
       51 CALL                             R10 3 1
       52 MOVE                             R9 R10
       53 JUMPIF                           R9 ; [+2]
       54 CLOSEUPVALS                      R9
       55 JUMP                             ; [+9]
       56 GETIMPORT                        R10 K13 [pcall]
       58 NEWCLOSURE                       R11 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          REF R9
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 CALL                             R10 1 0
       64 CLOSEUPVALS                      R9
       65 FORGLOOP                         R4 2 ; [-62]
       67 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R5 R1
        1 LOADNIL                          R6
        2 LOADNIL                          R7
        3 FORGPREP                         R5
        4 FASTCALL1                        TYPEOF R9 ; [+3]
        5 MOVE                             R11 R9
        6 GETIMPORT                        R10 K1 [typeof]
        8 CALL                             R10 1 1
        9 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+65]
       11 MOVE                             R10 R3
       12 MOVE                             R11 R8
       13 CALL                             R10 1 2
       14 MOVE                             R12 R4
       15 MOVE                             R14 R8
       16 LOADK                            R15 K3 ["_DynHead_Colored"]
       17 CONCAT                           R13 R14 R15
       18 MOVE                             R14 R10
       19 MOVE                             R15 R11
       20 CALL                             R12 3 1
       21 MOVE                             R13 R4
       22 MOVE                             R15 R8
       23 LOADK                            R16 K4 ["_DynHead_Gray"]
       24 CONCAT                           R14 R15 R16
       25 MOVE                             R15 R10
       26 MOVE                             R16 R11
       27 CALL                             R13 3 1
       28 MOVE                             R14 R9
       29 LOADNIL                          R15
       30 LOADNIL                          R16
       31 FORGPREP                         R14
       32 FASTCALL1                        TYPEOF R18 ; [+3]
       33 MOVE                             R20 R18
       34 GETIMPORT                        R19 K1 [typeof]
       36 CALL                             R19 1 1
       37 JUMPIFNOTEQKS                    R19 K2 ["table"] ; [+35]
       39 GETTABLEKS                       R19 R18 K5 ["type"]
       41 JUMPIFNOTEQKS                    R19 K6 ["points"] ; [+31]
       43 GETTABLEKS                       R19 R18 K7 ["values"]
       45 JUMPIFNOT                        R19 ; [+27]
       46 GETUPVAL                         R20 0
       47 GETTABLE                         R19 R20 R17
       48 JUMPIF                           R19 ; [+6]
       49 GETIMPORT                        R19 K10 [Color3.fromRGB]
       51 LOADN                            R20 255
       52 LOADN                            R21 64
       53 LOADN                            R22 64
       54 CALL                             R19 3 1
       55 GETUPVAL                         R20 1
       56 MOVE                             R21 R12
       57 GETTABLEKS                       R22 R18 K7 ["values"]
       59 MOVE                             R23 R19
       60 GETUPVAL                         R24 2
       61 GETTABLEKS                       R24 R24 K11 ["SPHERE_RADIUS"]
       63 CALL                             R20 4 0
       64 GETUPVAL                         R20 1
       65 MOVE                             R21 R13
       66 GETTABLEKS                       R22 R18 K7 ["values"]
       68 MOVE                             R23 R19
       69 GETUPVAL                         R24 2
       70 GETTABLEKS                       R24 R24 K12 ["SPHERE_RADIUS_SMALL"]
       72 CALL                             R20 4 0
       73 FORGLOOP                         R14 2 ; [-42]
       75 FORGLOOP                         R5 2 ; [-72]
       77 RETURN                           R0 0

PROTO_8:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 FASTCALL1                        TYPEOF R9 ; [+3]
        7 MOVE                             R11 R9
        8 GETIMPORT                        R10 K1 [typeof]
       10 CALL                             R10 1 1
       11 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+101]
       13 GETTABLE                         R10 R1 R8
       14 JUMPIFNOT                        R10 ; [+98]
       15 GETTABLEKS                       R11 R10 K3 ["editableMesh"]
       17 JUMPIFNOT                        R11 ; [+95]
       18 NEWTABLE                         R11 0 0
       20 MOVE                             R12 R9
       21 LOADNIL                          R13
       22 LOADNIL                          R14
       23 FORGPREP                         R12
       24 FASTCALL1                        TYPEOF R16 ; [+3]
       25 MOVE                             R18 R16
       26 GETIMPORT                        R17 K1 [typeof]
       28 CALL                             R17 1 1
       29 JUMPIFNOTEQKS                    R17 K2 ["table"] ; [+22]
       31 GETTABLEKS                       R17 R16 K4 ["type"]
       33 JUMPIFNOTEQKS                    R17 K5 ["vertices"] ; [+18]
       35 GETTABLEKS                       R17 R16 K6 ["indices"]
       37 JUMPIFNOT                        R17 ; [+14]
       38 GETTABLEKS                       R17 R16 K6 ["indices"]
       40 LOADNIL                          R18
       41 LOADNIL                          R19
       42 FORGPREP                         R17
       43 FASTCALL2                        TABLE_INSERT R11 R21 ; [+5]
       45 MOVE                             R23 R11
       46 MOVE                             R24 R21
       47 GETIMPORT                        R22 K8 [table.insert]
       49 CALL                             R22 2 0
       50 FORGLOOP                         R17 2 ; [-8]
       52 FORGLOOP                         R12 2 ; [-29]
       54 LENGTH                           R12 R11
       55 JUMPIFEQKN                       R12 K9 [0] ; [+57]
       57 MOVE                             R12 R2
       58 MOVE                             R13 R8
       59 CALL                             R12 1 3
       60 MOVE                             R15 R3
       61 MOVE                             R17 R8
       62 MOVE                             R18 R4
       63 CONCAT                           R16 R17 R18
       64 MOVE                             R17 R12
       65 MOVE                             R18 R13
       66 CALL                             R15 3 1
       67 GETIMPORT                        R16 K11 [pcall]
       69 GETUPVAL                         R17 0
       70 GETTABLEKS                       R17 R17 K12 ["build"]
       72 DUPTABLE                         R18 K18 [{["editableMesh"], ["vertexIds"], ["faceIds"], ["indices"], ["adornee"], ["scale"], ["dataType"] = "vertices"}]
       73 GETTABLEKS                       R19 R10 K3 ["editableMesh"]
       75 SETTABLEKS                       R19 R18 K3 ["editableMesh"]
       77 GETTABLEKS                       R19 R10 K13 ["vertexIds"]
       79 SETTABLEKS                       R19 R18 K13 ["vertexIds"]
       81 GETTABLEKS                       R19 R10 K14 ["faceIds"]
       83 SETTABLEKS                       R19 R18 K14 ["faceIds"]
       85 SETTABLEKS                       R11 R18 K6 ["indices"]
       87 SETTABLEKS                       R15 R18 K15 ["adornee"]
       89 SETTABLEKS                       R14 R18 K16 ["scale"]
       91 CALL                             R16 2 0
       92 GETIMPORT                        R16 K11 [pcall]
       94 GETUPVAL                         R17 1
       95 GETTABLEKS                       R17 R17 K12 ["build"]
       97 DUPTABLE                         R18 K19 [{"editableMesh", "vertexIds", "indices", "adornee", "scale"}]
       98 GETTABLEKS                       R19 R10 K3 ["editableMesh"]
      100 SETTABLEKS                       R19 R18 K3 ["editableMesh"]
      102 GETTABLEKS                       R19 R10 K13 ["vertexIds"]
      104 SETTABLEKS                       R19 R18 K13 ["vertexIds"]
      106 SETTABLEKS                       R11 R18 K6 ["indices"]
      108 SETTABLEKS                       R15 R18 K15 ["adornee"]
      110 SETTABLEKS                       R14 R18 K16 ["scale"]
      112 CALL                             R16 2 0
      113 FORGLOOP                         R5 2 ; [-108]
      115 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_VertexSim"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_Manifold"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_OutsideCage"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_12:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 MOVE                             R6 R0
        3 LOADNIL                          R7
        4 LOADNIL                          R8
        5 FORGPREP                         R6
        6 FASTCALL1                        TYPEOF R10 ; [+3]
        7 MOVE                             R12 R10
        8 GETIMPORT                        R11 K1 [typeof]
       10 CALL                             R11 1 1
       11 JUMPIFNOTEQKS                    R11 K2 ["table"] ; [+94]
       13 GETTABLE                         R11 R1 R9
       14 JUMPIFNOT                        R11 ; [+91]
       15 GETTABLEKS                       R12 R11 K3 ["editableMesh"]
       17 JUMPIFNOT                        R12 ; [+88]
       18 NEWTABLE                         R12 0 0
       20 MOVE                             R13 R10
       21 LOADNIL                          R14
       22 LOADNIL                          R15
       23 FORGPREP                         R13
       24 FASTCALL1                        TYPEOF R17 ; [+3]
       25 MOVE                             R19 R17
       26 GETIMPORT                        R18 K1 [typeof]
       28 CALL                             R18 1 1
       29 JUMPIFNOTEQKS                    R18 K2 ["table"] ; [+22]
       31 GETTABLEKS                       R18 R17 K4 ["type"]
       33 JUMPIFNOTEQKS                    R18 K5 ["faces"] ; [+18]
       35 GETTABLEKS                       R18 R17 K6 ["indices"]
       37 JUMPIFNOT                        R18 ; [+14]
       38 GETTABLEKS                       R18 R17 K6 ["indices"]
       40 LOADNIL                          R19
       41 LOADNIL                          R20
       42 FORGPREP                         R18
       43 FASTCALL2                        TABLE_INSERT R12 R22 ; [+5]
       45 MOVE                             R24 R12
       46 MOVE                             R25 R22
       47 GETIMPORT                        R23 K8 [table.insert]
       49 CALL                             R23 2 0
       50 FORGLOOP                         R18 2 ; [-8]
       52 FORGLOOP                         R13 2 ; [-29]
       54 LOADB                            R13 1
       55 LENGTH                           R14 R12
       56 LOADN                            R15 0
       57 JUMPIFLT                         R15 R14 ; [+5]
       59 MOVE                             R13 R5
       60 JUMPIFNOT                        R13 ; [+2]
       61 GETTABLEKS                       R13 R5 K9 ["alwaysBuild"]
       63 JUMPIFNOT                        R13 ; [+42]
       64 MOVE                             R14 R2
       65 MOVE                             R15 R9
       66 CALL                             R14 1 3
       67 MOVE                             R17 R3
       68 MOVE                             R19 R9
       69 MOVE                             R20 R4
       70 CONCAT                           R18 R19 R20
       71 MOVE                             R19 R14
       72 MOVE                             R20 R15
       73 CALL                             R17 3 1
       74 GETIMPORT                        R18 K11 [pcall]
       76 GETUPVAL                         R19 0
       77 GETTABLEKS                       R19 R19 K12 ["build"]
       79 DUPTABLE                         R20 K18 [{["editableMesh"], ["vertexIds"], ["faceIds"], ["indices"], ["adornee"], ["scale"], ["dataType"] = "faces"}]
       80 GETTABLEKS                       R21 R11 K3 ["editableMesh"]
       82 SETTABLEKS                       R21 R20 K3 ["editableMesh"]
       84 GETTABLEKS                       R21 R11 K13 ["vertexIds"]
       86 SETTABLEKS                       R21 R20 K13 ["vertexIds"]
       88 GETTABLEKS                       R21 R11 K14 ["faceIds"]
       90 SETTABLEKS                       R21 R20 K14 ["faceIds"]
       92 LENGTH                           R22 R12
       93 LOADN                            R23 0
       94 JUMPIFNOTLT                      R23 R22 ; [+3]
       96 MOVE                             R21 R12
       97 JUMP                             ; [+1]
       98 LOADNIL                          R21
       99 SETTABLEKS                       R21 R20 K6 ["indices"]
      101 SETTABLEKS                       R17 R20 K15 ["adornee"]
      103 SETTABLEKS                       R16 R20 K16 ["scale"]
      105 CALL                             R18 2 0
      106 FORGLOOP                         R6 2 ; [-101]
      108 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_DegenTriangles"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_TriIntersection"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_CageDist"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_CageRelevancy"]
        6 DUPTABLE                         R11 K3 [{["alwaysBuild"] = True}]
        7 CALL                             R5 6 0
        8 RETURN                           R0 0

PROTO_17:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R5 R0 K0 ["measurements"]
        3 JUMPIF                           R5 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R5 R0 K1 ["referenceMeshes"]
        7 NEWTABLE                         R6 0 0
        9 GETTABLEKS                       R7 R0 K0 ["measurements"]
       11 LOADNIL                          R8
       12 LOADNIL                          R9
       13 FORGPREP                         R7
       14 FASTCALL1                        TYPEOF R11 ; [+3]
       15 MOVE                             R13 R11
       16 GETIMPORT                        R12 K3 [typeof]
       18 CALL                             R12 1 1
       19 JUMPIFNOTEQKS                    R12 K4 ["table"] ; [+39]
       21 GETUPVAL                         R13 0
       22 GETTABLE                         R12 R13 R10
       23 JUMPIFNOT                        R12 ; [+35]
       24 LOADB                            R13 0
       25 MOVE                             R14 R11
       26 LOADNIL                          R15
       27 LOADNIL                          R16
       28 FORGPREP                         R14
       29 GETTABLE                         R19 R1 R17
       30 JUMPIFNOT                        R19 ; [+2]
       31 LOADB                            R13 1
       32 JUMP                             ; [+2]
       33 FORGLOOP                         R14 1 ; [-5]
       35 JUMPIFNOT                        R13 ; [+23]
       36 GETIMPORT                        R14 K6 [pcall]
       38 MOVE                             R15 R12
       39 MOVE                             R16 R10
       40 MOVE                             R17 R11
       41 MOVE                             R18 R5
       42 MOVE                             R19 R2
       43 MOVE                             R20 R3
       44 CALL                             R14 6 2
       45 JUMPIF                           R14 ; [+11]
       46 GETIMPORT                        R16 K8 [warn]
       48 LOADK                            R17 K9 ["[AssetQualityValidation] measure-specific handler failed for"]
       49 MOVE                             R18 R10
       50 LOADK                            R19 K10 [":"]
       51 FASTCALL1                        TOSTRING R15 ; [+3]
       52 MOVE                             R21 R15
       53 GETIMPORT                        R20 K12 [tostring]
       55 CALL                             R20 1 1
       56 CALL                             R16 4 0
       57 LOADB                            R16 1
       58 SETTABLE                         R16 R6 R10
       59 FORGLOOP                         R7 2 ; [-46]
       61 GETTABLEKS                       R7 R0 K13 ["assetResults"]
       63 JUMPIFNOT                        R7 ; [+83]
       64 JUMPIFNOT                        R5 ; [+82]
       65 GETTABLEKS                       R7 R0 K13 ["assetResults"]
       67 LOADNIL                          R8
       68 LOADNIL                          R9
       69 FORGPREP                         R7
       70 GETTABLEKS                       R12 R11 K14 ["entries"]
       72 JUMPIF                           R12 ; [+2]
       73 NEWTABLE                         R12 0 0
       75 LOADNIL                          R13
       76 LOADNIL                          R14
       77 FORGPREP                         R12
       78 GETTABLEKS                       R17 R16 K15 ["stateName"]
       80 JUMPIFNOT                        R17 ; [+62]
       81 GETTABLE                         R18 R6 R17
       82 JUMPIF                           R18 ; [+60]
       83 GETUPVAL                         R19 0
       84 GETTABLE                         R18 R19 R17
       85 JUMPIFNOT                        R18 ; [+57]
       86 NEWTABLE                         R19 0 0
       88 MOVE                             R20 R5
       89 LOADNIL                          R21
       90 LOADNIL                          R22
       91 FORGPREP                         R20
       92 NEWTABLE                         R25 0 0
       94 SETTABLE                         R25 R19 R23
       95 FORGLOOP                         R20 1 ; [-4]
       97 GETIMPORT                        R20 K6 [pcall]
       99 MOVE                             R21 R18
      100 MOVE                             R22 R17
      101 MOVE                             R23 R19
      102 MOVE                             R24 R5
      103 MOVE                             R25 R2
      104 MOVE                             R26 R3
      105 CALL                             R20 6 2
      106 JUMPIF                           R20 ; [+11]
      107 GETIMPORT                        R22 K8 [warn]
      109 LOADK                            R23 K16 ["[AssetQualityValidation] entry-based handler failed for"]
      110 MOVE                             R24 R17
      111 LOADK                            R25 K10 [":"]
      112 FASTCALL1                        TOSTRING R21 ; [+3]
      113 MOVE                             R27 R21
      114 GETIMPORT                        R26 K12 [tostring]
      116 CALL                             R26 1 1
      117 CALL                             R22 4 0
      118 JUMPIFNOT                        R4 ; [+22]
      119 GETTABLE                         R22 R4 R17
      120 JUMPIF                           R22 ; [+20]
      121 NEWTABLE                         R22 0 0
      123 MOVE                             R23 R5
      124 LOADNIL                          R24
      125 LOADNIL                          R25
      126 FORGPREP                         R23
      127 FASTCALL2                        TABLE_INSERT R22 R26 ; [+5]
      129 MOVE                             R29 R22
      130 MOVE                             R30 R26
      131 GETIMPORT                        R28 K18 [table.insert]
      133 CALL                             R28 2 0
      134 FORGLOOP                         R23 1 ; [-8]
      136 LENGTH                           R23 R22
      137 LOADN                            R24 0
      138 JUMPIFNOTLT                      R24 R23 ; [+2]
      140 SETTABLE                         R22 R4 R17
      141 LOADB                            R22 1
      142 SETTABLE                         R22 R6 R17
      143 FORGLOOP                         R12 2 ; [-66]
      145 FORGLOOP                         R7 2 ; [-76]
      147 GETTABLEKS                       R7 R0 K0 ["measurements"]
      149 LOADNIL                          R8
      150 LOADNIL                          R9
      151 FORGPREP                         R7
      152 GETTABLE                         R12 R6 R10
      153 JUMPIF                           R12 ; [+143]
      154 FASTCALL1                        TYPEOF R11 ; [+3]
      155 MOVE                             R13 R11
      156 GETIMPORT                        R12 K3 [typeof]
      158 CALL                             R12 1 1
      159 JUMPIFNOTEQKS                    R12 K4 ["table"] ; [+137]
      161 MOVE                             R12 R11
      162 LOADNIL                          R13
      163 LOADNIL                          R14
      164 FORGPREP                         R12
      165 GETTABLE                         R17 R1 R15
      166 JUMPIFNOT                        R17 ; [+128]
      167 FASTCALL1                        TYPEOF R16 ; [+3]
      168 MOVE                             R18 R16
      169 GETIMPORT                        R17 K3 [typeof]
      171 CALL                             R17 1 1
      172 JUMPIFNOTEQKS                    R17 K4 ["table"] ; [+122]
      174 LOADN                            R17 0
      175 LOADB                            R18 0
      176 MOVE                             R19 R16
      177 LOADNIL                          R20
      178 LOADNIL                          R21
      179 FORGPREP                         R19
      180 FASTCALL1                        TYPEOF R23 ; [+3]
      181 MOVE                             R25 R23
      182 GETIMPORT                        R24 K3 [typeof]
      184 CALL                             R24 1 1
      185 JUMPIFNOTEQKS                    R24 K4 ["table"] ; [+107]
      187 GETTABLEKS                       R24 R23 K19 ["type"]
      189 JUMPIFNOTEQKS                    R24 K20 ["vertices"] ; [+71]
      191 JUMPIF                           R18 ; [+101]
      192 LOADB                            R18 1
      193 MOVE                             R24 R5
      194 JUMPIFNOT                        R24 ; [+1]
      195 GETTABLE                         R24 R5 R15
      196 JUMPIFNOT                        R24 ; [+96]
      197 GETTABLEKS                       R25 R24 K21 ["editableMesh"]
      199 JUMPIFNOT                        R25 ; [+93]
      200 MOVE                             R25 R2
      201 MOVE                             R26 R15
      202 CALL                             R25 1 3
      203 MOVE                             R28 R3
      204 MOVE                             R30 R15
      205 LOADK                            R31 K22 ["_Vertices"]
      206 CONCAT                           R29 R30 R31
      207 MOVE                             R30 R25
      208 MOVE                             R31 R26
      209 CALL                             R28 3 1
      210 GETIMPORT                        R29 K6 [pcall]
      212 GETUPVAL                         R30 1
      213 GETTABLEKS                       R30 R30 K23 ["build"]
      215 DUPTABLE                         R31 K30 [{["editableMesh"], ["vertexIds"], ["faceIds"], ["indices"], ["adornee"], ["scale"], ["dataType"] = "vertices"}]
      216 GETTABLEKS                       R32 R24 K21 ["editableMesh"]
      218 SETTABLEKS                       R32 R31 K21 ["editableMesh"]
      220 GETTABLEKS                       R32 R24 K24 ["vertexIds"]
      222 SETTABLEKS                       R32 R31 K24 ["vertexIds"]
      224 GETTABLEKS                       R32 R24 K25 ["faceIds"]
      226 SETTABLEKS                       R32 R31 K25 ["faceIds"]
      228 GETTABLEKS                       R32 R23 K26 ["indices"]
      230 SETTABLEKS                       R32 R31 K26 ["indices"]
      232 SETTABLEKS                       R28 R31 K27 ["adornee"]
      234 SETTABLEKS                       R27 R31 K28 ["scale"]
      236 CALL                             R29 2 0
      237 GETIMPORT                        R29 K6 [pcall]
      239 GETUPVAL                         R30 2
      240 GETTABLEKS                       R30 R30 K23 ["build"]
      242 DUPTABLE                         R31 K31 [{"editableMesh", "vertexIds", "indices", "adornee", "scale"}]
      243 GETTABLEKS                       R32 R24 K21 ["editableMesh"]
      245 SETTABLEKS                       R32 R31 K21 ["editableMesh"]
      247 GETTABLEKS                       R32 R24 K24 ["vertexIds"]
      249 SETTABLEKS                       R32 R31 K24 ["vertexIds"]
      251 GETTABLEKS                       R32 R23 K26 ["indices"]
      253 SETTABLEKS                       R32 R31 K26 ["indices"]
      255 SETTABLEKS                       R28 R31 K27 ["adornee"]
      257 SETTABLEKS                       R27 R31 K28 ["scale"]
      259 CALL                             R29 2 0
      260 JUMP                             ; [+32]
      261 GETTABLEKS                       R24 R23 K19 ["type"]
      263 JUMPIFNOTEQKS                    R24 K32 ["points"] ; [+29]
      265 GETTABLEKS                       R24 R23 K33 ["values"]
      267 JUMPIFNOT                        R24 ; [+25]
      268 ADDK                             R17 R17 K34 [1]
      269 GETUPVAL                         R25 3
      270 SUBK                             R28 R17 K34 [1]
      271 GETUPVAL                         R30 3
      272 LENGTH                           R29 R30
      273 MOD                              R27 R28 R29
      274 ADDK                             R26 R27 K34 [1]
      275 GETTABLE                         R24 R25 R26
      276 MOVE                             R25 R2
      277 MOVE                             R26 R15
      278 CALL                             R25 1 2
      279 MOVE                             R27 R3
      280 MOVE                             R28 R15
      281 MOVE                             R29 R25
      282 MOVE                             R30 R26
      283 CALL                             R27 3 1
      284 GETUPVAL                         R28 4
      285 MOVE                             R29 R27
      286 GETTABLEKS                       R30 R23 K33 ["values"]
      288 MOVE                             R31 R24
      289 GETUPVAL                         R32 5
      290 GETTABLEKS                       R32 R32 K35 ["SPHERE_RADIUS"]
      292 CALL                             R28 4 0
      293 FORGLOOP                         R19 2 ; [-114]
      295 FORGLOOP                         R12 2 ; [-131]
      297 FORGLOOP                         R7 2 ; [-146]
      299 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["UGCValidation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["fixUpPreValidation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K11 ["Parent"]
       38 GETTABLEKS                       R5 R5 K13 ["Visualization"]
       40 GETTABLEKS                       R5 R5 K14 ["FaceWireframe"]
       42 GETTABLEKS                       R5 R5 K14 ["FaceWireframe"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETIMPORT                        R6 K1 [script]
       49 GETTABLEKS                       R6 R6 K11 ["Parent"]
       51 GETTABLEKS                       R6 R6 K13 ["Visualization"]
       53 GETTABLEKS                       R6 R6 K15 ["VertexSphereMarkers"]
       55 GETTABLEKS                       R6 R6 K15 ["VertexSphereMarkers"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETIMPORT                        R7 K1 [script]
       62 GETTABLEKS                       R7 R7 K11 ["Parent"]
       64 GETTABLEKS                       R7 R7 K13 ["Visualization"]
       66 GETTABLEKS                       R7 R7 K16 ["Constants"]
       68 CALL                             R6 1 1
       69 GETTABLEKS                       R7 R6 K17 ["POINT_COLORS"]
       71 NEWTABLE                         R8 8 0
       73 DUPCLOSURE                       R9 K18 [PROTO_1]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R2
       76 DUPCLOSURE                       R10 K19 [PROTO_2]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R10 R8 K20 ["buildValidationInputs"]
       81 DUPCLOSURE                       R10 K21 [PROTO_3]
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R10 R8 K22 ["buildValidationSettings"]
       85 DUPCLOSURE                       R10 K23 [PROTO_4]
       86 SETTABLEKS                       R10 R8 K24 ["processValidationEntries"]
       88 NEWTABLE                         R10 0 5
       90 LOADK                            R11 K14 ["FaceWireframe"]
       91 LOADK                            R12 K25 ["VertexIncidentEdges"]
       92 LOADK                            R13 K15 ["VertexSphereMarkers"]
       93 LOADK                            R14 K26 ["FaceColorHeatmap"]
       94 LOADK                            R15 K27 ["DualMeshOverlay"]
       95 SETLIST                          R10 R11 5 [1]
       97 NEWTABLE                         R11 8 0
       99 NEWTABLE                         R12 1 0
      101 LOADB                            R13 1
      102 SETTABLEKS                       R13 R12 K15 ["VertexSphereMarkers"]
      104 SETTABLEKS                       R12 R11 K28 ["Measure_Dynamic_Head"]
      106 LOADNIL                          R12
      107 SETTABLEKS                       R12 R11 K29 ["Measure_Cage_Distance_Head"]
      109 NEWTABLE                         R12 1 0
      111 LOADB                            R13 1
      112 SETTABLEKS                       R13 R12 K15 ["VertexSphereMarkers"]
      114 SETTABLEKS                       R12 R11 K30 ["Measure_Vertex_Similarity"]
      116 NEWTABLE                         R12 1 0
      118 LOADB                            R13 1
      119 SETTABLEKS                       R13 R12 K15 ["VertexSphereMarkers"]
      121 SETTABLEKS                       R12 R11 K31 ["Measure_Mesh_Manifold"]
      123 NEWTABLE                         R12 1 0
      125 LOADB                            R13 1
      126 SETTABLEKS                       R13 R12 K27 ["DualMeshOverlay"]
      128 SETTABLEKS                       R12 R11 K32 ["Measure_Triangle_Intersection"]
      130 NEWTABLE                         R12 1 0
      132 LOADB                            R13 1
      133 SETTABLEKS                       R13 R12 K27 ["DualMeshOverlay"]
      135 SETTABLEKS                       R12 R11 K33 ["Measure_Degen_Triangles"]
      137 LOADNIL                          R12
      138 SETTABLEKS                       R12 R11 K34 ["Measure_Mesh_Outside_OuterCage"]
      140 NEWTABLE                         R12 0 0
      142 MOVE                             R13 R11
      143 LOADNIL                          R14
      144 LOADNIL                          R15
      145 FORGPREP                         R13
      146 NEWTABLE                         R18 0 0
      148 MOVE                             R19 R10
      149 LOADNIL                          R20
      150 LOADNIL                          R21
      151 FORGPREP                         R19
      152 JUMPIFNOT                        R17 ; [+2]
      153 GETTABLE                         R24 R17 R23
      154 JUMPIF                           R24 ; [+2]
      155 LOADB                            R24 1
      156 SETTABLE                         R24 R18 R23
      157 FORGLOOP                         R19 2 ; [-6]
      159 SETTABLE                         R18 R12 R16
      160 FORGLOOP                         R13 2 ; [-15]
      162 NEWTABLE                         R13 0 0
      164 DUPCLOSURE                       R14 K35 [PROTO_6]
      165 DUPTABLE                         R15 K39 [{"left_eye_landmark_positions", "right_eye_landmark_positions", "mouth_landmark_positions"}]
      166 GETIMPORT                        R16 K42 [Color3.fromRGB]
      168 LOADN                            R17 255
      169 LOADN                            R18 64
      170 LOADN                            R19 64
      171 CALL                             R16 3 1
      172 SETTABLEKS                       R16 R15 K36 ["left_eye_landmark_positions"]
      174 GETIMPORT                        R16 K42 [Color3.fromRGB]
      176 LOADN                            R17 64
      177 LOADN                            R18 160
      178 LOADN                            R19 255
      179 CALL                             R16 3 1
      180 SETTABLEKS                       R16 R15 K37 ["right_eye_landmark_positions"]
      182 GETIMPORT                        R16 K42 [Color3.fromRGB]
      184 LOADN                            R17 64
      185 LOADN                            R18 200
      186 LOADN                            R19 64
      187 CALL                             R16 3 1
      188 SETTABLEKS                       R16 R15 K38 ["mouth_landmark_positions"]
      190 DUPCLOSURE                       R16 K43 [PROTO_7]
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R6
      194 SETTABLEKS                       R16 R13 K28 ["Measure_Dynamic_Head"]
      196 DUPCLOSURE                       R16 K44 [PROTO_8]
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R5
      199 DUPCLOSURE                       R17 K45 [PROTO_9]
      200 CAPTURE                          VAL R16
      201 SETTABLEKS                       R17 R13 K30 ["Measure_Vertex_Similarity"]
      203 DUPCLOSURE                       R17 K46 [PROTO_10]
      204 CAPTURE                          VAL R16
      205 SETTABLEKS                       R17 R13 K31 ["Measure_Mesh_Manifold"]
      207 DUPCLOSURE                       R17 K47 [PROTO_11]
      208 CAPTURE                          VAL R16
      209 SETTABLEKS                       R17 R13 K34 ["Measure_Mesh_Outside_OuterCage"]
      211 DUPCLOSURE                       R17 K48 [PROTO_12]
      212 CAPTURE                          VAL R4
      213 DUPCLOSURE                       R18 K49 [PROTO_13]
      214 CAPTURE                          VAL R17
      215 SETTABLEKS                       R18 R13 K33 ["Measure_Degen_Triangles"]
      217 DUPCLOSURE                       R18 K50 [PROTO_14]
      218 CAPTURE                          VAL R17
      219 SETTABLEKS                       R18 R13 K32 ["Measure_Triangle_Intersection"]
      221 DUPCLOSURE                       R18 K51 [PROTO_15]
      222 CAPTURE                          VAL R16
      223 SETTABLEKS                       R18 R13 K52 ["Measure_Cage_Mesh_Distance"]
      225 DUPCLOSURE                       R18 K53 [PROTO_16]
      226 CAPTURE                          VAL R17
      227 SETTABLEKS                       R18 R13 K54 ["Measure_Cage_Relevancy"]
      229 DUPCLOSURE                       R18 K55 [PROTO_17]
      230 CAPTURE                          VAL R13
      231 CAPTURE                          VAL R4
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R6
      236 SETTABLEKS                       R18 R8 K56 ["buildMeasurementVisualization"]
      238 SETTABLEKS                       R12 R8 K57 ["MEASURE_VIS_EXCLUSIONS"]
      240 RETURN                           R8 1
