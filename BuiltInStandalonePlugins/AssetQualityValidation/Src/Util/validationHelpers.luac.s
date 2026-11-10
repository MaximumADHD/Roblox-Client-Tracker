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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getEngineFeatureAssetQualityVisualizationShapes"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 MOVE                             R1 R0
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["SphereHandleAdornment"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R1 R0 K4 ["Adornee"]
        7 GETIMPORT                        R1 K6 [CFrame.new]
        9 GETUPVAL                         R3 1
       10 GETUPVAL                         R4 2
       11 MUL                              R2 R3 R4
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K5 ["CFrame"]
       15 GETUPVAL                         R1 3
       16 SETTABLEKS                       R1 R0 K7 ["Radius"]
       18 GETUPVAL                         R1 4
       19 SETTABLEKS                       R1 R0 K8 ["Color3"]
       21 LOADB                            R1 1
       22 SETTABLEKS                       R1 R0 K9 ["AlwaysOnTop"]
       24 LOADN                            R1 2
       25 SETTABLEKS                       R1 R0 K10 ["ZIndex"]
       27 LOADB                            R1 0
       28 SETTABLEKS                       R1 R0 K11 ["Archivable"]
       30 GETUPVAL                         R1 0
       31 SETTABLEKS                       R1 R0 K12 ["Parent"]
       33 RETURN                           R0 0

PROTO_7:
        0 ORK                              R5 R4 K0 [{1, 1, 1}]
        1 MOVE                             R6 R1
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 FORGPREP                         R6
        5 LOADNIL                          R11
        6 FASTCALL1                        TYPEOF R10 ; [+3]
        7 MOVE                             R13 R10
        8 GETIMPORT                        R12 K2 [typeof]
       10 CALL                             R12 1 1
       11 JUMPIFNOTEQKS                    R12 K3 ["Vector3"] ; [+3]
       13 MOVE                             R11 R10
       14 JUMP                             ; [+39]
       15 FASTCALL1                        TYPEOF R10 ; [+3]
       16 MOVE                             R13 R10
       17 GETIMPORT                        R12 K2 [typeof]
       19 CALL                             R12 1 1
       20 JUMPIFNOTEQKS                    R12 K4 ["table"] ; [+33]
       22 GETTABLEN                        R13 R10 1
       23 JUMPIF                           R13 ; [+7]
       24 GETTABLEKS                       R13 R10 K5 ["x"]
       26 JUMPIF                           R13 ; [+4]
       27 GETTABLEKS                       R13 R10 K6 ["X"]
       29 JUMPIF                           R13 ; [+1]
       30 LOADN                            R13 0
       31 GETTABLEN                        R14 R10 2
       32 JUMPIF                           R14 ; [+7]
       33 GETTABLEKS                       R14 R10 K7 ["y"]
       35 JUMPIF                           R14 ; [+4]
       36 GETTABLEKS                       R14 R10 K8 ["Y"]
       38 JUMPIF                           R14 ; [+1]
       39 LOADN                            R14 0
       40 GETTABLEN                        R15 R10 3
       41 JUMPIF                           R15 ; [+7]
       42 GETTABLEKS                       R15 R10 K9 ["z"]
       44 JUMPIF                           R15 ; [+4]
       45 GETTABLEKS                       R15 R10 K10 ["Z"]
       47 JUMPIF                           R15 ; [+1]
       48 LOADN                            R15 0
       49 FASTCALL                         VECTOR ; [+2]
       50 GETIMPORT                        R12 K12 [Vector3.new]
       52 CALL                             R12 3 1
       53 MOVE                             R11 R12
       54 JUMPIF                           R11 ; [+2]
       55 CLOSEUPVALS                      R11
       56 JUMP                             ; [+10]
       57 GETIMPORT                        R12 K14 [pcall]
       59 NEWCLOSURE                       R13 P0
       60 CAPTURE                          VAL R0
       61 CAPTURE                          REF R11
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R2
       65 CALL                             R12 1 0
       66 CLOSEUPVALS                      R11
       67 FORGLOOP                         R6 2 ; [-63]
       69 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R5 R1
        1 LOADNIL                          R6
        2 LOADNIL                          R7
        3 FORGPREP                         R5
        4 FASTCALL1                        TYPEOF R9 ; [+3]
        5 MOVE                             R11 R9
        6 GETIMPORT                        R10 K1 [typeof]
        8 CALL                             R10 1 1
        9 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+75]
       11 MOVE                             R10 R3
       12 MOVE                             R11 R8
       13 CALL                             R10 1 3
       14 GETUPVAL                         R14 0
       15 GETTABLEKS                       R14 R14 K3 ["getEngineFeatureAssetQualityVisualizationShapes"]
       17 CALL                             R14 0 1
       18 JUMPIFNOT                        R14 ; [+2]
       19 MOVE                             R13 R12
       20 JUMP                             ; [+1]
       21 LOADNIL                          R13
       22 MOVE                             R14 R4
       23 MOVE                             R16 R8
       24 LOADK                            R17 K4 ["_DynHead_Colored"]
       25 CONCAT                           R15 R16 R17
       26 MOVE                             R16 R10
       27 MOVE                             R17 R11
       28 CALL                             R14 3 1
       29 MOVE                             R15 R4
       30 MOVE                             R17 R8
       31 LOADK                            R18 K5 ["_DynHead_Gray"]
       32 CONCAT                           R16 R17 R18
       33 MOVE                             R17 R10
       34 MOVE                             R18 R11
       35 CALL                             R15 3 1
       36 MOVE                             R16 R9
       37 LOADNIL                          R17
       38 LOADNIL                          R18
       39 FORGPREP                         R16
       40 FASTCALL1                        TYPEOF R20 ; [+3]
       41 MOVE                             R22 R20
       42 GETIMPORT                        R21 K1 [typeof]
       44 CALL                             R21 1 1
       45 JUMPIFNOTEQKS                    R21 K2 ["table"] ; [+37]
       47 GETTABLEKS                       R21 R20 K6 ["type"]
       49 JUMPIFNOTEQKS                    R21 K7 ["points"] ; [+33]
       51 GETTABLEKS                       R21 R20 K8 ["values"]
       53 JUMPIFNOT                        R21 ; [+29]
       54 GETUPVAL                         R22 1
       55 GETTABLE                         R21 R22 R19
       56 JUMPIF                           R21 ; [+6]
       57 GETIMPORT                        R21 K11 [Color3.fromRGB]
       59 LOADN                            R22 255
       60 LOADN                            R23 64
       61 LOADN                            R24 64
       62 CALL                             R21 3 1
       63 GETUPVAL                         R22 2
       64 MOVE                             R23 R14
       65 GETTABLEKS                       R24 R20 K8 ["values"]
       67 MOVE                             R25 R21
       68 GETUPVAL                         R26 3
       69 GETTABLEKS                       R26 R26 K12 ["SPHERE_RADIUS"]
       71 MOVE                             R27 R13
       72 CALL                             R22 5 0
       73 GETUPVAL                         R22 2
       74 MOVE                             R23 R15
       75 GETTABLEKS                       R24 R20 K8 ["values"]
       77 MOVE                             R25 R21
       78 GETUPVAL                         R26 3
       79 GETTABLEKS                       R26 R26 K13 ["SPHERE_RADIUS_SMALL"]
       81 MOVE                             R27 R13
       82 CALL                             R22 5 0
       83 FORGLOOP                         R16 2 ; [-44]
       85 FORGLOOP                         R5 2 ; [-82]
       87 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_VertexSim"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_Manifold"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_OutsideCage"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_DegenTriangles"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_TriIntersection"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_CageDist"]
        6 CALL                             R5 5 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R1
        2 MOVE                             R7 R2
        3 MOVE                             R8 R3
        4 MOVE                             R9 R4
        5 LOADK                            R10 K0 ["_CageRelevancy"]
        6 DUPTABLE                         R11 K3 [{["alwaysBuild"] = True}]
        7 CALL                             R5 6 0
        8 RETURN                           R0 0

PROTO_18:
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
      153 JUMPIF                           R12 ; [+225]
      154 FASTCALL1                        TYPEOF R11 ; [+3]
      155 MOVE                             R13 R11
      156 GETIMPORT                        R12 K3 [typeof]
      158 CALL                             R12 1 1
      159 JUMPIFNOTEQKS                    R12 K4 ["table"] ; [+219]
      161 MOVE                             R12 R11
      162 LOADNIL                          R13
      163 LOADNIL                          R14
      164 FORGPREP                         R12
      165 GETTABLE                         R17 R1 R15
      166 JUMPIFNOT                        R17 ; [+210]
      167 FASTCALL1                        TYPEOF R16 ; [+3]
      168 MOVE                             R18 R16
      169 GETIMPORT                        R17 K3 [typeof]
      171 CALL                             R17 1 1
      172 JUMPIFNOTEQKS                    R17 K4 ["table"] ; [+204]
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
      185 JUMPIFNOTEQKS                    R24 K4 ["table"] ; [+189]
      187 GETTABLEKS                       R24 R23 K19 ["type"]
      189 JUMPIFNOTEQKS                    R24 K20 ["vertices"] ; [+71]
      191 JUMPIF                           R18 ; [+183]
      192 LOADB                            R18 1
      193 MOVE                             R24 R5
      194 JUMPIFNOT                        R24 ; [+1]
      195 GETTABLE                         R24 R5 R15
      196 JUMPIFNOT                        R24 ; [+178]
      197 GETTABLEKS                       R25 R24 K21 ["editableMesh"]
      199 JUMPIFNOT                        R25 ; [+175]
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
      260 JUMP                             ; [+114]
      261 GETTABLEKS                       R24 R23 K19 ["type"]
      263 JUMPIFNOTEQKS                    R24 K32 ["points"] ; [+38]
      265 GETTABLEKS                       R24 R23 K33 ["values"]
      267 JUMPIFNOT                        R24 ; [+34]
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
      278 CALL                             R25 1 3
      279 MOVE                             R28 R3
      280 MOVE                             R29 R15
      281 MOVE                             R30 R25
      282 MOVE                             R31 R26
      283 CALL                             R28 3 1
      284 GETUPVAL                         R29 4
      285 MOVE                             R30 R28
      286 GETTABLEKS                       R31 R23 K33 ["values"]
      288 MOVE                             R32 R24
      289 GETUPVAL                         R33 5
      290 GETTABLEKS                       R33 R33 K35 ["SPHERE_RADIUS"]
      292 GETUPVAL                         R35 6
      293 GETTABLEKS                       R35 R35 K36 ["getEngineFeatureAssetQualityVisualizationShapes"]
      295 CALL                             R35 0 1
      296 JUMPIFNOT                        R35 ; [+2]
      297 MOVE                             R34 R27
      298 JUMP                             ; [+1]
      299 LOADNIL                          R34
      300 CALL                             R29 5 0
      301 JUMP                             ; [+73]
      302 GETUPVAL                         R24 6
      303 GETTABLEKS                       R24 R24 K36 ["getEngineFeatureAssetQualityVisualizationShapes"]
      305 CALL                             R24 0 1
      306 JUMPIFNOT                        R24 ; [+68]
      307 GETUPVAL                         R25 7
      308 GETTABLEKS                       R25 R25 K37 ["SHAPE_TYPES"]
      310 GETTABLEKS                       R26 R23 K19 ["type"]
      312 GETTABLE                         R24 R25 R26
      313 JUMPIFNOT                        R24 ; [+61]
      314 GETTABLEKS                       R24 R23 K33 ["values"]
      316 JUMPIFNOT                        R24 ; [+58]
      317 ADDK                             R17 R17 K34 [1]
      318 GETUPVAL                         R25 3
      319 SUBK                             R28 R17 K34 [1]
      320 GETUPVAL                         R30 3
      321 LENGTH                           R29 R30
      322 MOD                              R27 R28 R29
      323 ADDK                             R26 R27 K34 [1]
      324 GETTABLE                         R24 R25 R26
      325 MOVE                             R25 R2
      326 MOVE                             R26 R15
      327 CALL                             R25 1 3
      328 MOVE                             R28 R3
      329 GETUPVAL                         R29 8
      330 GETTABLEKS                       R29 R29 K38 ["getShapeVolumesPartName"]
      332 MOVE                             R30 R15
      333 MOVE                             R31 R10
      334 CALL                             R29 2 1
      335 MOVE                             R30 R25
      336 MOVE                             R31 R26
      337 CALL                             R28 3 1
      338 GETIMPORT                        R29 K6 [pcall]
      340 GETUPVAL                         R30 7
      341 GETTABLEKS                       R30 R30 K23 ["build"]
      343 DUPTABLE                         R31 K41 [{"shapeType", "values", "adornee", "scale", "color"}]
      344 GETTABLEKS                       R32 R23 K19 ["type"]
      346 SETTABLEKS                       R32 R31 K39 ["shapeType"]
      348 GETTABLEKS                       R32 R23 K33 ["values"]
      350 SETTABLEKS                       R32 R31 K33 ["values"]
      352 SETTABLEKS                       R28 R31 K27 ["adornee"]
      354 SETTABLEKS                       R27 R31 K28 ["scale"]
      356 SETTABLEKS                       R24 R31 K40 ["color"]
      358 CALL                             R29 2 2
      359 JUMPIF                           R29 ; [+15]
      360 GETIMPORT                        R31 K8 [warn]
      362 LOADK                            R32 K42 ["[AssetQualityValidation] failed to build"]
      363 GETTABLEKS                       R33 R23 K19 ["type"]
      365 LOADK                            R34 K43 ["for"]
      366 MOVE                             R35 R10
      367 MOVE                             R36 R15
      368 LOADK                            R37 K10 [":"]
      369 FASTCALL1                        TOSTRING R30 ; [+3]
      370 MOVE                             R39 R30
      371 GETIMPORT                        R38 K12 [tostring]
      373 CALL                             R38 1 1
      374 CALL                             R31 7 0
      375 FORGLOOP                         R19 2 ; [-196]
      377 FORGLOOP                         R12 2 ; [-213]
      379 FORGLOOP                         R7 2 ; [-228]
      381 RETURN                           R0 0

PROTO_19:
        0 MOVE                             R3 R0
        1 LOADK                            R4 K0 ["_"]
        2 LOADK                            R5 K1 ["ShapeVolumes_"]
        3 MOVE                             R6 R1
        4 CONCAT                           R2 R3 R6
        5 RETURN                           R2 1

PROTO_20:
        0 GETIMPORT                        R2 K2 [string.find]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["ShapeVolumes_"]
        4 LOADN                            R5 1
        5 LOADB                            R6 1
        6 CALL                             R2 4 2
        7 LOADB                            R4 0
        8 JUMPIFEQKNIL                     R3 ; [+12]
       10 ADDK                             R7 R3 K4 [1]
       11 FASTCALL2                        STRING_SUB R0 R7 ; [+4]
       13 MOVE                             R6 R0
       14 GETIMPORT                        R5 K6 [string.sub]
       16 CALL                             R5 2 1
       17 JUMPIFNOTEQ                      R5 R1 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

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
       66 GETTABLEKS                       R7 R7 K16 ["ShapeVolumes"]
       68 GETTABLEKS                       R7 R7 K16 ["ShapeVolumes"]
       70 CALL                             R6 1 1
       71 GETIMPORT                        R7 K5 [require]
       73 GETIMPORT                        R8 K1 [script]
       75 GETTABLEKS                       R8 R8 K11 ["Parent"]
       77 GETTABLEKS                       R8 R8 K13 ["Visualization"]
       79 GETTABLEKS                       R8 R8 K17 ["Constants"]
       81 CALL                             R7 1 1
       82 GETTABLEKS                       R8 R7 K18 ["POINT_COLORS"]
       84 NEWTABLE                         R9 8 0
       86 DUPCLOSURE                       R10 K19 [PROTO_1]
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R2
       89 DUPCLOSURE                       R11 K20 [PROTO_2]
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R11 R9 K21 ["buildValidationInputs"]
       94 DUPCLOSURE                       R11 K22 [PROTO_3]
       95 CAPTURE                          VAL R1
       96 SETTABLEKS                       R11 R9 K23 ["buildValidationSettings"]
       98 DUPCLOSURE                       R11 K24 [PROTO_4]
       99 SETTABLEKS                       R11 R9 K25 ["processValidationEntries"]
      101 NEWTABLE                         R11 0 6
      103 LOADK                            R12 K14 ["FaceWireframe"]
      104 LOADK                            R13 K26 ["VertexIncidentEdges"]
      105 LOADK                            R14 K15 ["VertexSphereMarkers"]
      106 LOADK                            R15 K27 ["FaceColorHeatmap"]
      107 LOADK                            R16 K28 ["DualMeshOverlay"]
      108 LOADK                            R17 K16 ["ShapeVolumes"]
      109 SETLIST                          R11 R12 6 [1]
      111 NEWTABLE                         R12 8 0
      113 NEWTABLE                         R13 1 0
      115 LOADB                            R14 1
      116 SETTABLEKS                       R14 R13 K15 ["VertexSphereMarkers"]
      118 SETTABLEKS                       R13 R12 K29 ["Measure_Dynamic_Head"]
      120 LOADNIL                          R13
      121 SETTABLEKS                       R13 R12 K30 ["Measure_Cage_Distance_Head"]
      123 NEWTABLE                         R13 1 0
      125 LOADB                            R14 1
      126 SETTABLEKS                       R14 R13 K15 ["VertexSphereMarkers"]
      128 SETTABLEKS                       R13 R12 K31 ["Measure_Vertex_Similarity"]
      130 NEWTABLE                         R13 1 0
      132 LOADB                            R14 1
      133 SETTABLEKS                       R14 R13 K15 ["VertexSphereMarkers"]
      135 SETTABLEKS                       R13 R12 K32 ["Measure_Mesh_Manifold"]
      137 NEWTABLE                         R13 1 0
      139 LOADB                            R14 1
      140 SETTABLEKS                       R14 R13 K28 ["DualMeshOverlay"]
      142 SETTABLEKS                       R13 R12 K33 ["Measure_Triangle_Intersection"]
      144 NEWTABLE                         R13 1 0
      146 LOADB                            R14 1
      147 SETTABLEKS                       R14 R13 K28 ["DualMeshOverlay"]
      149 SETTABLEKS                       R13 R12 K34 ["Measure_Degen_Triangles"]
      151 LOADNIL                          R13
      152 SETTABLEKS                       R13 R12 K35 ["Measure_Mesh_Outside_OuterCage"]
      154 NEWTABLE                         R13 0 0
      156 MOVE                             R14 R12
      157 LOADNIL                          R15
      158 LOADNIL                          R16
      159 FORGPREP                         R14
      160 NEWTABLE                         R19 0 0
      162 MOVE                             R20 R11
      163 LOADNIL                          R21
      164 LOADNIL                          R22
      165 FORGPREP                         R20
      166 JUMPIFNOT                        R18 ; [+2]
      167 GETTABLE                         R25 R18 R24
      168 JUMPIF                           R25 ; [+2]
      169 LOADB                            R25 1
      170 SETTABLE                         R25 R19 R24
      171 FORGLOOP                         R20 2 ; [-6]
      173 SETTABLE                         R19 R13 R17
      174 FORGLOOP                         R14 2 ; [-15]
      176 NEWTABLE                         R14 0 0
      178 DUPCLOSURE                       R15 K36 [PROTO_5]
      179 CAPTURE                          VAL R1
      180 DUPCLOSURE                       R16 K37 [PROTO_7]
      181 DUPTABLE                         R17 K41 [{"left_eye_landmark_positions", "right_eye_landmark_positions", "mouth_landmark_positions"}]
      182 GETIMPORT                        R18 K44 [Color3.fromRGB]
      184 LOADN                            R19 255
      185 LOADN                            R20 64
      186 LOADN                            R21 64
      187 CALL                             R18 3 1
      188 SETTABLEKS                       R18 R17 K38 ["left_eye_landmark_positions"]
      190 GETIMPORT                        R18 K44 [Color3.fromRGB]
      192 LOADN                            R19 64
      193 LOADN                            R20 160
      194 LOADN                            R21 255
      195 CALL                             R18 3 1
      196 SETTABLEKS                       R18 R17 K39 ["right_eye_landmark_positions"]
      198 GETIMPORT                        R18 K44 [Color3.fromRGB]
      200 LOADN                            R19 64
      201 LOADN                            R20 200
      202 LOADN                            R21 64
      203 CALL                             R18 3 1
      204 SETTABLEKS                       R18 R17 K40 ["mouth_landmark_positions"]
      206 DUPCLOSURE                       R18 K45 [PROTO_8]
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R16
      210 CAPTURE                          VAL R7
      211 SETTABLEKS                       R18 R14 K29 ["Measure_Dynamic_Head"]
      213 DUPCLOSURE                       R18 K46 [PROTO_9]
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R5
      216 DUPCLOSURE                       R19 K47 [PROTO_10]
      217 CAPTURE                          VAL R18
      218 SETTABLEKS                       R19 R14 K31 ["Measure_Vertex_Similarity"]
      220 DUPCLOSURE                       R19 K48 [PROTO_11]
      221 CAPTURE                          VAL R18
      222 SETTABLEKS                       R19 R14 K32 ["Measure_Mesh_Manifold"]
      224 DUPCLOSURE                       R19 K49 [PROTO_12]
      225 CAPTURE                          VAL R18
      226 SETTABLEKS                       R19 R14 K35 ["Measure_Mesh_Outside_OuterCage"]
      228 DUPCLOSURE                       R19 K50 [PROTO_13]
      229 CAPTURE                          VAL R4
      230 DUPCLOSURE                       R20 K51 [PROTO_14]
      231 CAPTURE                          VAL R19
      232 SETTABLEKS                       R20 R14 K34 ["Measure_Degen_Triangles"]
      234 DUPCLOSURE                       R20 K52 [PROTO_15]
      235 CAPTURE                          VAL R19
      236 SETTABLEKS                       R20 R14 K33 ["Measure_Triangle_Intersection"]
      238 DUPCLOSURE                       R20 K53 [PROTO_16]
      239 CAPTURE                          VAL R18
      240 SETTABLEKS                       R20 R14 K54 ["Measure_Cage_Mesh_Distance"]
      242 DUPCLOSURE                       R20 K55 [PROTO_17]
      243 CAPTURE                          VAL R19
      244 SETTABLEKS                       R20 R14 K56 ["Measure_Cage_Relevancy"]
      246 DUPCLOSURE                       R20 K57 [PROTO_18]
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R4
      249 CAPTURE                          VAL R5
      250 CAPTURE                          VAL R8
      251 CAPTURE                          VAL R16
      252 CAPTURE                          VAL R7
      253 CAPTURE                          VAL R1
      254 CAPTURE                          VAL R6
      255 CAPTURE                          VAL R9
      256 SETTABLEKS                       R20 R9 K58 ["buildMeasurementVisualization"]
      258 SETTABLEKS                       R13 R9 K59 ["MEASURE_VIS_EXCLUSIONS"]
      260 DUPCLOSURE                       R20 K60 [PROTO_19]
      261 SETTABLEKS                       R20 R9 K61 ["getShapeVolumesPartName"]
      263 DUPCLOSURE                       R20 K62 [PROTO_20]
      264 SETTABLEKS                       R20 R9 K63 ["isShapeVolumesPartForOtherMeasure"]
      266 RETURN                           R9 1
