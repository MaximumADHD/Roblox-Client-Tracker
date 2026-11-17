PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["checkIsMounted"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 JUMPIFNOT                        R0 ; [+23]
        7 JUMPIFNOT                        R1 ; [+22]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["errorMessage"]
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["errorMessage"]
       15 JUMPIFNOTEQKS                    R2 K2 [""] ; [+14]
       17 GETUPVAL                         R2 0
       18 DUPTABLE                         R4 K4 [{"importAsset"}]
       19 DUPTABLE                         R5 K7 [{"file", "tempId"}]
       20 SETTABLEKS                       R0 R5 K5 ["file"]
       22 SETTABLEKS                       R1 R5 K6 ["tempId"]
       24 SETTABLEKS                       R5 R4 K3 ["importAsset"]
       26 NAMECALL                         R2 R2 K8 ["setState"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 0
       31 DUPTABLE                         R4 K4 [{"importAsset"}]
       32 NEWTABLE                         R5 0 0
       34 SETTABLEKS                       R5 R4 K3 ["importAsset"]
       36 NAMECALL                         R2 R2 K8 ["setState"]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["PBRMaterial"]
        5 GETTABLEKS                       R2 R0 K2 ["GeneralServiceController"]
        7 MOVE                             R4 R1
        8 GETTABLEKS                       R5 R0 K3 ["MapType"]
       10 LOADK                            R6 K4 [""]
       11 NAMECALL                         R2 R2 K5 ["setTextureMap"]
       13 CALL                             R2 4 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K6 ["setImportAsset"]
       17 LOADNIL                          R3
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["checkIsMounted"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 DUPTABLE                         R3 K2 [{"uploading"}]
        8 SETTABLEKS                       R0 R3 K1 ["uploading"]
       10 NAMECALL                         R1 R1 K3 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["PBRMaterial"]
        5 GETTABLEKS                       R5 R3 K2 ["GeneralServiceController"]
        7 MOVE                             R7 R4
        8 GETTABLEKS                       R8 R3 K3 ["MapType"]
       10 MOVE                             R9 R0
       11 NAMECALL                         R5 R5 K4 ["setTextureMap"]
       13 CALL                             R5 4 0
       14 GETTABLEKS                       R5 R3 K5 ["Analytics"]
       16 MOVE                             R7 R1
       17 NAMECALL                         R5 R5 K6 ["report"]
       19 CALL                             R5 2 0
       20 GETUPVAL                         R5 0
       21 SETTABLEKS                       R2 R5 K7 ["errorMessage"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K8 ["setImportAsset"]
       26 LOADNIL                          R6
       27 CALL                             R5 1 0
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K9 ["setUploading"]
       31 LOADB                            R6 0
       32 CALL                             R5 1 0
       33 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ImportAssetHandler"]
        5 GETTABLEKS                       R2 R0 K2 ["GeneralServiceController"]
        7 GETTABLEKS                       R4 R0 K3 ["PBRMaterial"]
        9 GETTABLEKS                       R5 R0 K4 ["MapType"]
       11 MOVE                             R6 R1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K5 ["setUploading"]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K6 ["setImportAsset"]
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R9 R9 K7 ["updateTextureMap"]
       21 NAMECALL                         R2 R2 K8 ["setTextureMapFromFile"]
       23 CALL                             R2 7 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R1 K1 ["Text"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 JUMPIFNOT                        R3 ; [+2]
        8 JUMPIFNOTEQKS                    R3 K2 [""] ; [+6]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["clearTextureMap"]
       13 CALL                             R4 0 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R4 R2 K4 ["GeneralServiceController"]
       17 GETTABLEKS                       R6 R2 K5 ["PBRMaterial"]
       19 GETTABLEKS                       R7 R2 K6 ["MapType"]
       21 MOVE                             R8 R3
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K7 ["checkIsMounted"]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K8 ["updateTextureMap"]
       28 NAMECALL                         R4 R4 K9 ["setTextureMapFromURL"]
       30 CALL                             R4 6 0
       31 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K3 [{[1], ["uploading"] = False}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["importAsset"]
        5 SETTABLEKS                       R1 R0 K4 ["state"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K5 ["errorMessage"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K6 ["checkIsMounted"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["setImportAsset"]
       18 NEWCLOSURE                       R1 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K8 ["clearTextureMap"]
       22 NEWCLOSURE                       R1 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K9 ["setUploading"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K10 ["updateTextureMap"]
       30 NEWCLOSURE                       R1 P5
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K11 ["promptSelection"]
       34 NEWCLOSURE                       R1 P6
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K12 ["onFocusLost"]
       38 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["PBRMaterial"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["PBRMaterial"]
        6 JUMPIFEQ                         R2 R3 ; [+12]
        8 DUPTABLE                         R4 K5 [{["importAsset"], ["uploading"] = False}]
        9 NEWTABLE                         R5 0 0
       11 SETTABLEKS                       R5 R4 K2 ["importAsset"]
       13 NAMECALL                         R2 R0 K6 ["setState"]
       15 CALL                             R2 2 0
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R0 K7 ["errorMessage"]
       19 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 LOADK                            R4 K3 [""]
        7 LOADK                            R5 K3 [""]
        8 LOADB                            R6 0
        9 GETTABLEKS                       R7 R1 K4 ["PBRMaterial"]
       11 GETUPVAL                         R9 0
       12 CALL                             R9 0 1
       13 JUMPIFNOT                        R9 ; [+16]
       14 GETTABLEKS                       R11 R1 K5 ["MapType"]
       16 GETTABLE                         R10 R7 R11
       17 FASTCALL1                        TYPEOF R10 ; [+2]
       18 GETIMPORT                        R9 K7 [typeof]
       20 CALL                             R9 1 1
       21 JUMPIFNOTEQKS                    R9 K8 ["Content"] ; [+8]
       23 GETTABLEKS                       R10 R1 K5 ["MapType"]
       25 GETTABLE                         R9 R7 R10
       26 GETTABLEKS                       R9 R9 K9 ["Uri"]
       28 ORK                              R8 R9 K3 [""]
       29 JUMP                             ; [+3]
       30 GETTABLEKS                       R9 R1 K5 ["MapType"]
       32 GETTABLE                         R8 R7 R9
       33 GETTABLEKS                       R9 R2 K10 ["importAsset"]
       35 JUMPIFNOT                        R9 ; [+5]
       36 GETTABLEKS                       R9 R2 K10 ["importAsset"]
       38 GETTABLEKS                       R9 R9 K11 ["tempId"]
       40 JUMPIF                           R9 ; [+2]
       41 JUMPIFEQKS                       R8 K3 [""] ; [+34]
       43 GETTABLEKS                       R9 R2 K10 ["importAsset"]
       45 GETTABLEKS                       R9 R9 K12 ["file"]
       47 JUMPIFNOT                        R9 ; [+7]
       48 GETTABLEKS                       R9 R2 K10 ["importAsset"]
       50 GETTABLEKS                       R9 R9 K12 ["file"]
       52 GETTABLEKS                       R4 R9 K13 ["Name"]
       54 JUMP                             ; [+1]
       55 MOVE                             R4 R8
       56 GETTABLEKS                       R9 R2 K14 ["uploading"]
       58 JUMPIFNOTEQKB                    R9 TRUE ; [+15]
       60 GETTABLEKS                       R9 R2 K10 ["importAsset"]
       62 JUMPIFNOT                        R9 ; [+11]
       63 GETTABLEKS                       R9 R2 K10 ["importAsset"]
       65 GETTABLEKS                       R9 R9 K11 ["tempId"]
       67 JUMPIFNOT                        R9 ; [+6]
       68 GETTABLEKS                       R9 R2 K10 ["importAsset"]
       70 GETTABLEKS                       R5 R9 K11 ["tempId"]
       72 LOADB                            R6 1
       73 JUMP                             ; [+2]
       74 MOVE                             R5 R8
       75 LOADB                            R6 0
       76 LOADNIL                          R9
       77 LOADNIL                          R10
       78 JUMPIFNOTEQKS                    R8 K3 [""] ; [+25]
       80 GETTABLEKS                       R11 R0 K15 ["errorMessage"]
       82 JUMPIFNOT                        R11 ; [+43]
       83 GETTABLEKS                       R11 R0 K15 ["errorMessage"]
       85 JUMPIFEQKS                       R11 K3 [""] ; [+40]
       87 GETTABLEKS                       R11 R0 K15 ["errorMessage"]
       89 GETUPVAL                         R12 1
       90 GETTABLEKS                       R12 R12 K16 ["FailedToInsertAssetManager"]
       92 JUMPIFEQ                         R11 R12 ; [+33]
       94 GETIMPORT                        R9 K20 [Enum.PropertyStatus.Error]
       96 LOADK                            R13 K21 ["CreateDialog"]
       97 GETTABLEKS                       R14 R0 K15 ["errorMessage"]
       99 NAMECALL                         R11 R3 K22 ["getText"]
      101 CALL                             R11 3 1
      102 MOVE                             R10 R11
      103 JUMP                             ; [+22]
      104 GETTABLEKS                       R11 R0 K15 ["errorMessage"]
      106 GETUPVAL                         R12 1
      107 GETTABLEKS                       R12 R12 K16 ["FailedToInsertAssetManager"]
      109 JUMPIFNOTEQ                      R11 R12 ; [+11]
      111 GETIMPORT                        R9 K24 [Enum.PropertyStatus.Warning]
      113 LOADK                            R13 K21 ["CreateDialog"]
      114 GETTABLEKS                       R14 R0 K15 ["errorMessage"]
      116 NAMECALL                         R11 R3 K22 ["getText"]
      118 CALL                             R11 3 1
      119 MOVE                             R10 R11
      120 JUMP                             ; [+5]
      121 GETIMPORT                        R9 K26 [Enum.PropertyStatus.Ok]
      123 LOADNIL                          R11
      124 SETTABLEKS                       R11 R0 K15 ["errorMessage"]
      126 GETUPVAL                         R11 2
      127 GETTABLEKS                       R11 R11 K27 ["createElement"]
      129 GETUPVAL                         R12 3
      130 DUPTABLE                         R13 K34 [{"FillDirection", "LayoutOrder", "LabelColumnWidth", "Text", "StatusText", "Status"}]
      131 GETIMPORT                        R14 K36 [Enum.FillDirection.Vertical]
      133 SETTABLEKS                       R14 R13 K28 ["FillDirection"]
      135 GETTABLEKS                       R14 R1 K29 ["LayoutOrder"]
      137 SETTABLEKS                       R14 R13 K29 ["LayoutOrder"]
      139 GETTABLEKS                       R14 R1 K30 ["LabelColumnWidth"]
      141 SETTABLEKS                       R14 R13 K30 ["LabelColumnWidth"]
      143 GETTABLEKS                       R14 R1 K31 ["Text"]
      145 SETTABLEKS                       R14 R13 K31 ["Text"]
      147 SETTABLEKS                       R10 R13 K32 ["StatusText"]
      149 SETTABLEKS                       R9 R13 K33 ["Status"]
      151 NEWTABLE                         R14 0 1
      153 GETUPVAL                         R15 2
      154 GETTABLEKS                       R15 R15 K27 ["createElement"]
      156 GETUPVAL                         R16 4
      157 DUPTABLE                         R17 K47 [{"SelectionName", "PreviewTitle", "IsTempId", "ImageId", "LabelWidth", "PromptSelection", "SearchUrl", "ClearSelection", "OnFocusLost", "ColumnWidth"}]
      158 SETTABLEKS                       R4 R17 K37 ["SelectionName"]
      160 GETTABLEKS                       R18 R1 K38 ["PreviewTitle"]
      162 SETTABLEKS                       R18 R17 K38 ["PreviewTitle"]
      164 SETTABLEKS                       R6 R17 K39 ["IsTempId"]
      166 SETTABLEKS                       R5 R17 K40 ["ImageId"]
      168 GETTABLEKS                       R18 R1 K41 ["LabelWidth"]
      170 SETTABLEKS                       R18 R17 K41 ["LabelWidth"]
      172 GETTABLEKS                       R18 R0 K48 ["promptSelection"]
      174 SETTABLEKS                       R18 R17 K42 ["PromptSelection"]
      176 SETTABLEKS                       R8 R17 K43 ["SearchUrl"]
      178 GETTABLEKS                       R18 R0 K49 ["clearTextureMap"]
      180 SETTABLEKS                       R18 R17 K44 ["ClearSelection"]
      182 GETTABLEKS                       R18 R0 K50 ["onFocusLost"]
      184 SETTABLEKS                       R18 R17 K45 ["OnFocusLost"]
      186 GETTABLEKS                       R18 R1 K46 ["ColumnWidth"]
      188 SETTABLEKS                       R18 R17 K46 ["ColumnWidth"]
      190 CALL                             R15 2 -1
      191 SETLIST                          R14 R15 -1 [1]
      193 CALL                             R11 3 -1
      194 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Packages"]
       17 GETTABLEKS                       R2 R2 K6 ["Roact"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Packages"]
       24 GETTABLEKS                       R3 R3 K7 ["Framework"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       29 GETTABLEKS                       R4 R3 K9 ["withContext"]
       31 GETTABLEKS                       R5 R3 K10 ["Analytics"]
       33 GETTABLEKS                       R6 R3 K11 ["Localization"]
       35 GETTABLEKS                       R7 R0 K12 ["Src"]
       37 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R9 R7 K14 ["ImportAssetHandler"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K4 [require]
       46 GETTABLEKS                       R10 R7 K15 ["GeneralServiceController"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R11 R0 K12 ["Src"]
       53 GETTABLEKS                       R11 R11 K16 ["Components"]
       55 GETTABLEKS                       R11 R11 K17 ["MaterialBrowser"]
       57 GETTABLEKS                       R11 R11 K18 ["MaterialEditor"]
       59 GETTABLEKS                       R11 R11 K19 ["LabeledElement"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K4 [require]
       64 GETTABLEKS                       R12 R0 K12 ["Src"]
       66 GETTABLEKS                       R12 R12 K16 ["Components"]
       68 GETTABLEKS                       R12 R12 K20 ["PromptSelectorWithPreview"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K4 [require]
       73 GETTABLEKS                       R13 R0 K12 ["Src"]
       75 GETTABLEKS                       R13 R13 K21 ["Resources"]
       77 GETTABLEKS                       R13 R13 K22 ["Constants"]
       79 GETTABLEKS                       R13 R13 K23 ["getErrorTypes"]
       81 CALL                             R12 1 1
       82 MOVE                             R13 R12
       83 CALL                             R13 0 1
       84 GETIMPORT                        R14 K4 [require]
       86 GETTABLEKS                       R15 R0 K12 ["Src"]
       88 GETTABLEKS                       R15 R15 K24 ["Flags"]
       90 GETTABLEKS                       R15 R15 K25 ["getEFEnableEmissiveMask"]
       92 CALL                             R14 1 1
       93 GETTABLEKS                       R15 R1 K26 ["PureComponent"]
       95 LOADK                            R17 K27 ["TextureMapSelector"]
       96 NAMECALL                         R15 R15 K28 ["extend"]
       98 CALL                             R15 2 1
       99 DUPCLOSURE                       R16 K29 [PROTO_7]
      100 SETTABLEKS                       R16 R15 K30 ["init"]
      102 DUPCLOSURE                       R16 K31 [PROTO_8]
      103 SETTABLEKS                       R16 R15 K32 ["didMount"]
      105 DUPCLOSURE                       R16 K33 [PROTO_9]
      106 SETTABLEKS                       R16 R15 K34 ["willUnmount"]
      108 DUPCLOSURE                       R16 K35 [PROTO_10]
      109 SETTABLEKS                       R16 R15 K36 ["didUpdate"]
      111 DUPCLOSURE                       R16 K37 [PROTO_11]
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R11
      117 SETTABLEKS                       R16 R15 K38 ["render"]
      119 MOVE                             R16 R4
      120 DUPTABLE                         R17 K39 [{"Analytics", "GeneralServiceController", "Localization", "ImportAssetHandler"}]
      121 SETTABLEKS                       R5 R17 K10 ["Analytics"]
      123 SETTABLEKS                       R9 R17 K15 ["GeneralServiceController"]
      125 SETTABLEKS                       R6 R17 K11 ["Localization"]
      127 SETTABLEKS                       R8 R17 K14 ["ImportAssetHandler"]
      129 CALL                             R16 1 1
      130 MOVE                             R17 R15
      131 CALL                             R16 1 1
      132 MOVE                             R15 R16
      133 RETURN                           R15 1
