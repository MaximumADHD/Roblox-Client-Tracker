PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["ImportTree"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["ImportTree"]
        5 GETTABLEKS                       R1 R1 K1 ["ImportName"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 GETTABLEKS                       R3 R0 K2 ["HasInvalidPackageId"]
       11 NOT                              R2 R3
       12 JUMPIFNOT                        R2 ; [+12]
       13 LOADB                            R2 0
       14 GETTABLEKS                       R3 R0 K3 ["ImportDataCheckedCount"]
       16 JUMPIFEQKN                       R3 K4 [0] ; [+8]
       18 GETTABLEKS                       R3 R0 K5 ["ErrorNodeChecked"]
       20 NOT                              R2 R3
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETUPVAL                         R2 0
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ClosePreview"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["SessionQueue"]
        5 GETTABLEKS                       R3 R0 K2 ["Filename"]
        7 GETTABLE                         R1 R2 R3
        8 GETTABLEKS                       R2 R0 K3 ["ClosePreview"]
       10 CALL                             R2 0 0
       11 GETTABLEKS                       R2 R0 K4 ["UploadController"]
       13 NEWTABLE                         R4 0 1
       15 MOVE                             R5 R1
       16 SETLIST                          R4 R5 1 [1]
       18 NAMECALL                         R2 R2 K5 ["uploadItems"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["Close"] ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["onClose"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["Import"] ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["onImport"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"assetName"}]
        1 LOADK                            R2 K2 [""]
        2 SETTABLEKS                       R2 R1 K0 ["assetName"]
        4 SETTABLEKS                       R1 R0 K3 ["state"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K4 ["_importNameChangedConnection"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["onClose"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K6 ["onImport"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K7 ["onButtonPressed"]
       21 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R5 R1 K2 ["ImportTree"]
        6 JUMPIFNOT                        R5 ; [+5]
        7 GETTABLEKS                       R4 R1 K2 ["ImportTree"]
        9 GETTABLEKS                       R4 R4 K3 ["ImportName"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 GETTABLEKS                       R5 R1 K4 ["HasInvalidPackageId"]
       15 NOT                              R3 R5
       16 JUMPIFNOT                        R3 ; [+13]
       17 LOADB                            R3 0
       18 GETTABLEKS                       R5 R1 K5 ["ImportDataCheckedCount"]
       20 JUMPIFEQKN                       R5 K6 [0] ; [+9]
       22 GETTABLEKS                       R5 R1 K7 ["ErrorNodeChecked"]
       24 NOT                              R3 R5
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETUPVAL                         R5 0
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 MOVE                             R3 R5
       30 NEWTABLE                         R4 0 2
       32 DUPTABLE                         R5 K10 [{"Key", "Text"}]
       33 LOADK                            R6 K11 ["Close"]
       34 SETTABLEKS                       R6 R5 K8 ["Key"]
       36 LOADK                            R8 K12 ["Plugin"]
       37 LOADK                            R9 K11 ["Close"]
       38 NAMECALL                         R6 R2 K13 ["getText"]
       40 CALL                             R6 3 1
       41 SETTABLEKS                       R6 R5 K9 ["Text"]
       43 DUPTABLE                         R6 K16 [{"Key", "Text", "Style", "StyleModifier"}]
       44 LOADK                            R7 K17 ["Import"]
       45 SETTABLEKS                       R7 R6 K8 ["Key"]
       47 LOADK                            R9 K12 ["Plugin"]
       48 LOADK                            R10 K17 ["Import"]
       49 NAMECALL                         R7 R2 K13 ["getText"]
       51 CALL                             R7 3 1
       52 SETTABLEKS                       R7 R6 K9 ["Text"]
       54 LOADK                            R7 K18 ["RoundPrimary"]
       55 SETTABLEKS                       R7 R6 K14 ["Style"]
       57 JUMPIF                           R3 ; [+4]
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K19 ["Disabled"]
       61 JUMPIF                           R7 ; [+1]
       62 LOADNIL                          R7
       63 SETTABLEKS                       R7 R6 K15 ["StyleModifier"]
       65 SETLIST                          R4 R5 2 [1]
       67 GETTABLEKS                       R5 R0 K20 ["onClose"]
       69 GETUPVAL                         R6 2
       70 GETTABLEKS                       R6 R6 K21 ["createElement"]
       72 GETUPVAL                         R7 3
       73 DUPTABLE                         R8 K30 [{"Enabled", "MinContentSize", "Modal", "Resizable", "Title", "Buttons", "OnClose", "OnButtonPressed", "Style"}]
       74 GETTABLEKS                       R9 R1 K31 ["ShowPreview"]
       76 SETTABLEKS                       R9 R8 K22 ["Enabled"]
       78 GETIMPORT                        R9 K34 [Vector2.new]
       80 LOADN                            R10 32
       81 LOADN                            R11 138
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R8 K23 ["MinContentSize"]
       85 GETUPVAL                         R10 4
       86 CALL                             R10 0 1
       87 NOT                              R9 R10
       88 SETTABLEKS                       R9 R8 K24 ["Modal"]
       90 LOADB                            R9 1
       91 SETTABLEKS                       R9 R8 K25 ["Resizable"]
       93 GETTABLEKS                       R9 R1 K26 ["Title"]
       95 SETTABLEKS                       R9 R8 K26 ["Title"]
       97 SETTABLEKS                       R4 R8 K27 ["Buttons"]
       99 SETTABLEKS                       R5 R8 K28 ["OnClose"]
      101 GETTABLEKS                       R9 R0 K35 ["onButtonPressed"]
      103 SETTABLEKS                       R9 R8 K29 ["OnButtonPressed"]
      105 LOADK                            R9 K36 ["FullBleed"]
      106 SETTABLEKS                       R9 R8 K14 ["Style"]
      108 GETUPVAL                         R10 5
      109 CALL                             R10 0 1
      110 JUMPIFNOT                        R10 ; [+54]
      111 DUPTABLE                         R9 K38 [{"FoundationProvider"}]
      112 GETUPVAL                         R10 2
      113 GETTABLEKS                       R10 R10 K21 ["createElement"]
      115 GETUPVAL                         R11 6
      116 LOADNIL                          R12
      117 DUPTABLE                         R13 K42 [{"Layout", "AssetImporterUI", "Separator"}]
      118 GETUPVAL                         R14 2
      119 GETTABLEKS                       R14 R14 K21 ["createElement"]
      121 LOADK                            R15 K43 ["UIListLayout"]
      122 DUPTABLE                         R16 K45 [{"FillDirection"}]
      123 GETIMPORT                        R17 K48 [Enum.FillDirection.Vertical]
      125 SETTABLEKS                       R17 R16 K44 ["FillDirection"]
      127 CALL                             R14 2 1
      128 SETTABLEKS                       R14 R13 K39 ["Layout"]
      130 GETTABLEKS                       R15 R1 K31 ["ShowPreview"]
      132 JUMPIFNOT                        R15 ; [+10]
      133 GETUPVAL                         R14 2
      134 GETTABLEKS                       R14 R14 K21 ["createElement"]
      136 GETUPVAL                         R15 7
      137 DUPTABLE                         R16 K50 [{"LayoutOrder"}]
      138 LOADN                            R17 1
      139 SETTABLEKS                       R17 R16 K49 ["LayoutOrder"]
      141 CALL                             R14 2 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R14
      144 SETTABLEKS                       R14 R13 K40 ["AssetImporterUI"]
      146 GETUPVAL                         R14 2
      147 GETTABLEKS                       R14 R14 K21 ["createElement"]
      149 GETUPVAL                         R15 8
      150 DUPTABLE                         R16 K52 [{"DominantAxis", "LayoutOrder"}]
      151 GETIMPORT                        R17 K54 [Enum.DominantAxis.Width]
      153 SETTABLEKS                       R17 R16 K51 ["DominantAxis"]
      155 LOADN                            R17 2
      156 SETTABLEKS                       R17 R16 K49 ["LayoutOrder"]
      158 CALL                             R14 2 1
      159 SETTABLEKS                       R14 R13 K41 ["Separator"]
      161 CALL                             R10 3 1
      162 SETTABLEKS                       R10 R9 K37 ["FoundationProvider"]
      164 JUMP                             ; [+44]
      165 DUPTABLE                         R9 K42 [{"Layout", "AssetImporterUI", "Separator"}]
      166 GETUPVAL                         R10 2
      167 GETTABLEKS                       R10 R10 K21 ["createElement"]
      169 LOADK                            R11 K43 ["UIListLayout"]
      170 DUPTABLE                         R12 K45 [{"FillDirection"}]
      171 GETIMPORT                        R13 K48 [Enum.FillDirection.Vertical]
      173 SETTABLEKS                       R13 R12 K44 ["FillDirection"]
      175 CALL                             R10 2 1
      176 SETTABLEKS                       R10 R9 K39 ["Layout"]
      178 GETTABLEKS                       R11 R1 K31 ["ShowPreview"]
      180 JUMPIFNOT                        R11 ; [+10]
      181 GETUPVAL                         R10 2
      182 GETTABLEKS                       R10 R10 K21 ["createElement"]
      184 GETUPVAL                         R11 7
      185 DUPTABLE                         R12 K50 [{"LayoutOrder"}]
      186 LOADN                            R13 1
      187 SETTABLEKS                       R13 R12 K49 ["LayoutOrder"]
      189 CALL                             R10 2 1
      190 JUMP                             ; [+1]
      191 LOADNIL                          R10
      192 SETTABLEKS                       R10 R9 K40 ["AssetImporterUI"]
      194 GETUPVAL                         R10 2
      195 GETTABLEKS                       R10 R10 K21 ["createElement"]
      197 GETUPVAL                         R11 8
      198 DUPTABLE                         R12 K52 [{"DominantAxis", "LayoutOrder"}]
      199 GETIMPORT                        R13 K54 [Enum.DominantAxis.Width]
      201 SETTABLEKS                       R13 R12 K51 ["DominantAxis"]
      203 LOADN                            R13 2
      204 SETTABLEKS                       R13 R12 K49 ["LayoutOrder"]
      206 CALL                             R10 2 1
      207 SETTABLEKS                       R10 R9 K41 ["Separator"]
      209 CALL                             R6 3 -1
      210 RETURN                           R6 -1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["_connect"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOTEQKS                    R0 K0 ["ImportName"] ; [+11]
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R3 K2 [{"assetName"}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["ImportName"]
        7 SETTABLEKS                       R4 R3 K1 ["assetName"]
        9 NAMECALL                         R1 R1 K3 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["ImportTree"]
        4 JUMPIFEQKNIL                     R1 ; [+11]
        6 GETTABLEKS                       R2 R1 K2 ["Changed"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R2 R2 K3 ["Connect"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R0 K4 ["_importNameChangedConnection"]
       16 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R1 R0 K0 ["_disconnect"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_importNameChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_importNameChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_importNameChangedConnection"]
       11 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R1 K0 ["ImportTree"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R4 K0 ["ImportTree"]
        6 JUMPIFEQ                         R3 R4 ; [+7]
        8 NAMECALL                         R3 R0 K2 ["_disconnect"]
       10 CALL                             R3 1 0
       11 NAMECALL                         R3 R0 K3 ["_connect"]
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R2 K1 [{"assetName"}]
        1 GETTABLEKS                       R4 R0 K2 ["ImportTree"]
        3 JUMPIFNOT                        R4 ; [+5]
        4 GETTABLEKS                       R3 R0 K2 ["ImportTree"]
        6 GETTABLEKS                       R3 R3 K3 ["ImportName"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 SETTABLEKS                       R3 R2 K0 ["assetName"]
       12 RETURN                           R2 1

PROTO_13:
        0 DUPTABLE                         R1 K8 [{"ImportTree", "AssetImportSession", "ImportDataCheckedCount", "ErrorNodeChecked", "HasInvalidPackageId", "ShowPreview", "SessionQueue", "Filename"}]
        1 GETTABLEKS                       R2 R0 K9 ["Preview"]
        3 GETTABLEKS                       R2 R2 K10 ["importTree"]
        5 SETTABLEKS                       R2 R1 K0 ["ImportTree"]
        7 GETTABLEKS                       R2 R0 K9 ["Preview"]
        9 GETTABLEKS                       R2 R2 K11 ["assetImportSession"]
       11 SETTABLEKS                       R2 R1 K1 ["AssetImportSession"]
       13 GETTABLEKS                       R2 R0 K9 ["Preview"]
       15 GETTABLEKS                       R2 R2 K12 ["importDataCheckedCount"]
       17 SETTABLEKS                       R2 R1 K2 ["ImportDataCheckedCount"]
       19 GETTABLEKS                       R2 R0 K9 ["Preview"]
       21 GETTABLEKS                       R2 R2 K13 ["errorNodeChecked"]
       23 SETTABLEKS                       R2 R1 K3 ["ErrorNodeChecked"]
       25 GETTABLEKS                       R2 R0 K9 ["Preview"]
       27 GETTABLEKS                       R2 R2 K14 ["hasInvalidPackageId"]
       29 SETTABLEKS                       R2 R1 K4 ["HasInvalidPackageId"]
       31 GETTABLEKS                       R2 R0 K15 ["Dialogs"]
       33 GETTABLEKS                       R2 R2 K16 ["showPreview"]
       35 SETTABLEKS                       R2 R1 K5 ["ShowPreview"]
       37 GETTABLEKS                       R2 R0 K17 ["Sessions"]
       39 GETTABLEKS                       R2 R2 K18 ["sessionQueue"]
       41 SETTABLEKS                       R2 R1 K6 ["SessionQueue"]
       43 GETTABLEKS                       R2 R0 K9 ["Preview"]
       45 GETTABLEKS                       R2 R2 K19 ["filename"]
       47 SETTABLEKS                       R2 R1 K7 ["Filename"]
       49 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K1 [{"ClosePreview"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ClosePreview"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETTABLEKS                       R7 R5 K13 ["Localization"]
       41 GETTABLEKS                       R8 R3 K14 ["Style"]
       43 GETTABLEKS                       R8 R8 K15 ["Stylizer"]
       45 GETTABLEKS                       R9 R4 K16 ["Components"]
       47 GETTABLEKS                       R9 R9 K17 ["FoundationProviderAdapter"]
       49 GETTABLEKS                       R10 R3 K18 ["Util"]
       51 GETTABLEKS                       R11 R10 K19 ["StyleModifier"]
       53 GETTABLEKS                       R12 R3 K20 ["UI"]
       55 GETTABLEKS                       R13 R12 K21 ["Separator"]
       57 GETTABLEKS                       R14 R12 K22 ["StyledDialog"]
       59 GETIMPORT                        R15 K5 [require]
       61 GETTABLEKS                       R16 R0 K23 ["Src"]
       63 GETTABLEKS                       R16 R16 K16 ["Components"]
       65 GETTABLEKS                       R16 R16 K24 ["AssetImporterUI"]
       67 CALL                             R15 1 1
       68 GETIMPORT                        R16 K5 [require]
       70 GETTABLEKS                       R17 R0 K23 ["Src"]
       72 GETTABLEKS                       R17 R17 K25 ["Controllers"]
       74 GETTABLEKS                       R17 R17 K26 ["FileController"]
       76 CALL                             R16 1 1
       77 GETIMPORT                        R17 K5 [require]
       79 GETTABLEKS                       R18 R0 K23 ["Src"]
       81 GETTABLEKS                       R18 R18 K25 ["Controllers"]
       83 GETTABLEKS                       R18 R18 K27 ["UploadController"]
       85 CALL                             R17 1 1
       86 GETIMPORT                        R18 K5 [require]
       88 GETTABLEKS                       R19 R0 K23 ["Src"]
       90 GETTABLEKS                       R19 R19 K28 ["Thunks"]
       92 GETTABLEKS                       R19 R19 K29 ["ClosePreview"]
       94 CALL                             R18 1 1
       95 GETIMPORT                        R19 K5 [require]
       97 GETTABLEKS                       R20 R0 K23 ["Src"]
       99 GETTABLEKS                       R20 R20 K30 ["Utility"]
      101 GETTABLEKS                       R20 R20 K31 ["isAssetNameValid"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K5 [require]
      106 GETTABLEKS                       R21 R0 K23 ["Src"]
      108 GETTABLEKS                       R21 R21 K32 ["Flags"]
      110 GETTABLEKS                       R21 R21 K33 ["getFFlagDebugAssetImportPlugin"]
      112 CALL                             R20 1 1
      113 GETIMPORT                        R21 K5 [require]
      115 GETTABLEKS                       R22 R0 K23 ["Src"]
      117 GETTABLEKS                       R22 R22 K32 ["Flags"]
      119 GETTABLEKS                       R22 R22 K34 ["getFFlagShowNewReimportCallout"]
      121 CALL                             R21 1 1
      122 GETTABLEKS                       R22 R1 K35 ["PureComponent"]
      124 LOADK                            R24 K36 ["MeshImportDialog"]
      125 NAMECALL                         R22 R22 K37 ["extend"]
      127 CALL                             R22 2 1
      128 DUPCLOSURE                       R23 K38 [PROTO_0]
      129 CAPTURE                          VAL R19
      130 DUPCLOSURE                       R24 K39 [PROTO_4]
      131 SETTABLEKS                       R24 R22 K40 ["init"]
      133 DUPCLOSURE                       R24 K41 [PROTO_5]
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R20
      139 CAPTURE                          VAL R21
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R13
      143 SETTABLEKS                       R24 R22 K42 ["render"]
      145 DUPCLOSURE                       R24 K43 [PROTO_6]
      146 SETTABLEKS                       R24 R22 K44 ["didMount"]
      148 DUPCLOSURE                       R24 K45 [PROTO_8]
      149 SETTABLEKS                       R24 R22 K46 ["_connect"]
      151 DUPCLOSURE                       R24 K47 [PROTO_9]
      152 SETTABLEKS                       R24 R22 K48 ["willUnmount"]
      154 DUPCLOSURE                       R24 K49 [PROTO_10]
      155 SETTABLEKS                       R24 R22 K50 ["_disconnect"]
      157 DUPCLOSURE                       R24 K51 [PROTO_11]
      158 SETTABLEKS                       R24 R22 K52 ["didUpdate"]
      160 DUPCLOSURE                       R24 K53 [PROTO_12]
      161 SETTABLEKS                       R24 R22 K54 ["getDerivedStateFromProps"]
      163 MOVE                             R24 R6
      164 DUPTABLE                         R25 K56 [{"FileController", "UploadController", "Localization", "Stylizer", "Plugin"}]
      165 SETTABLEKS                       R16 R25 K26 ["FileController"]
      167 SETTABLEKS                       R17 R25 K27 ["UploadController"]
      169 SETTABLEKS                       R7 R25 K13 ["Localization"]
      171 SETTABLEKS                       R8 R25 K15 ["Stylizer"]
      173 GETTABLEKS                       R26 R5 K55 ["Plugin"]
      175 SETTABLEKS                       R26 R25 K55 ["Plugin"]
      177 CALL                             R24 1 1
      178 MOVE                             R25 R22
      179 CALL                             R24 1 1
      180 MOVE                             R22 R24
      181 DUPCLOSURE                       R24 K57 [PROTO_13]
      182 DUPCLOSURE                       R25 K58 [PROTO_15]
      183 CAPTURE                          VAL R18
      184 GETTABLEKS                       R26 R2 K59 ["connect"]
      186 MOVE                             R27 R24
      187 MOVE                             R28 R25
      188 CALL                             R26 2 1
      189 MOVE                             R27 R22
      190 CALL                             R26 1 -1
      191 RETURN                           R26 -1
