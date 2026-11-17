PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"activeQueueItem"}]
        3 GETTABLEKS                       R5 R1 K0 ["activeQueueItem"]
        5 SETTABLEKS                       R5 R4 K0 ["activeQueueItem"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"assetImportSession"}]
        3 GETTABLEKS                       R5 R1 K0 ["assetImportSession"]
        5 SETTABLEKS                       R5 R4 K0 ["assetImportSession"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"importTree", "importDataExpansion"}]
        3 GETTABLEKS                       R5 R1 K0 ["importTree"]
        5 SETTABLEKS                       R5 R4 K0 ["importTree"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R6 R0 K1 ["importDataExpansion"]
       10 NEWTABLE                         R7 1 0
       12 GETTABLEKS                       R8 R1 K0 ["importTree"]
       14 LOADB                            R9 1
       15 SETTABLE                         R9 R7 R8
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K1 ["importDataExpansion"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"filename"}]
        3 GETTABLEKS                       R5 R1 K0 ["filename"]
        5 SETTABLEKS                       R5 R4 K0 ["filename"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"hasInvalidPackageId"}]
        3 GETTABLEKS                       R5 R1 K0 ["hasInvalidPackageId"]
        5 SETTABLEKS                       R5 R4 K0 ["hasInvalidPackageId"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"previewInstance"}]
        3 GETTABLEKS                       R5 R1 K0 ["previewInstance"]
        5 SETTABLEKS                       R5 R4 K0 ["previewInstance"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"selectedImportItem"}]
        3 GETTABLEKS                       R5 R1 K0 ["selectedImportItem"]
        5 SETTABLEKS                       R5 R4 K0 ["selectedImportItem"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"importDataChecked"}]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R6 R0 K0 ["importDataChecked"]
        6 GETTABLEKS                       R7 R1 K2 ["checked"]
        8 CALL                             R5 2 1
        9 SETTABLEKS                       R5 R4 K0 ["importDataChecked"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"importDataCheckedCount"}]
        3 GETTABLEKS                       R5 R1 K2 ["count"]
        5 SETTABLEKS                       R5 R4 K0 ["importDataCheckedCount"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"importDataExpansion"}]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R6 R0 K0 ["importDataExpansion"]
        6 GETTABLEKS                       R7 R1 K2 ["expansion"]
        8 CALL                             R5 2 1
        9 SETTABLEKS                       R5 R4 K0 ["importDataExpansion"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"errorNodeChecked"}]
        3 GETTABLEKS                       R5 R1 K2 ["isErrorChecked"]
        5 SETTABLEKS                       R5 R4 K0 ["errorNodeChecked"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"singleAnimationSelection"}]
        3 GETTABLEKS                       R5 R1 K0 ["singleAnimationSelection"]
        5 SETTABLEKS                       R5 R4 K0 ["singleAnimationSelection"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_12:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["join"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Types"]
       29 GETTABLEKS                       R5 R5 K12 ["QueuedSession"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R0 K10 ["Src"]
       34 GETTABLEKS                       R5 R5 K13 ["Actions"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R5 K14 ["ResetState"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R5 K15 ["SetActiveQueueItem"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R5 K16 ["SetAssetImportSession"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R5 K17 ["SetCheckedCount"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R5 K18 ["SetErrorNodeChecked"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R5 K19 ["SetFilename"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R5 K20 ["SetHasInvalidPackageId"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K5 [require]
       73 GETTABLEKS                       R14 R5 K21 ["SetImportTree"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R15 R5 K22 ["SetPreviewInstance"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K5 [require]
       83 GETTABLEKS                       R16 R5 K23 ["SetSelectedImportItem"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K5 [require]
       88 GETTABLEKS                       R17 R5 K24 ["SetSingleAnimationSelection"]
       90 CALL                             R16 1 1
       91 GETIMPORT                        R17 K5 [require]
       93 GETTABLEKS                       R18 R5 K25 ["SetTreeChecked"]
       95 CALL                             R17 1 1
       96 GETIMPORT                        R18 K5 [require]
       98 GETTABLEKS                       R19 R5 K26 ["SetTreeExpansion"]
      100 CALL                             R18 1 1
      101 DUPTABLE                         R19 K43 [{["activeQueueItem"] = , ["assetImportSession"] = , ["errorNodeChecked"] = False, ["filename"] = "", ["hasInvalidPackageId"] = False, ["importDataChecked"], ["importDataCheckedCount"] = -1, ["importDataExpansion"], ["importTree"] = , ["previewInstance"] = , ["selectedImportItem"] = , ["singleAnimationSelection"] = False}]
      102 NEWTABLE                         R20 0 0
      104 SETTABLEKS                       R20 R19 K35 ["importDataChecked"]
      106 NEWTABLE                         R20 0 0
      108 SETTABLEKS                       R20 R19 K38 ["importDataExpansion"]
      110 GETTABLEKS                       R20 R1 K44 ["createReducer"]
      112 MOVE                             R21 R19
      113 NEWTABLE                         R22 16 0
      115 GETTABLEKS                       R23 R7 K45 ["name"]
      117 DUPCLOSURE                       R24 K46 [PROTO_0]
      118 CAPTURE                          VAL R3
      119 SETTABLE                         R24 R22 R23
      120 GETTABLEKS                       R23 R8 K45 ["name"]
      122 DUPCLOSURE                       R24 K47 [PROTO_1]
      123 CAPTURE                          VAL R3
      124 SETTABLE                         R24 R22 R23
      125 GETTABLEKS                       R23 R13 K45 ["name"]
      127 DUPCLOSURE                       R24 K48 [PROTO_2]
      128 CAPTURE                          VAL R3
      129 SETTABLE                         R24 R22 R23
      130 GETTABLEKS                       R23 R11 K45 ["name"]
      132 DUPCLOSURE                       R24 K49 [PROTO_3]
      133 CAPTURE                          VAL R3
      134 SETTABLE                         R24 R22 R23
      135 GETTABLEKS                       R23 R12 K45 ["name"]
      137 DUPCLOSURE                       R24 K50 [PROTO_4]
      138 CAPTURE                          VAL R3
      139 SETTABLE                         R24 R22 R23
      140 GETTABLEKS                       R23 R14 K45 ["name"]
      142 DUPCLOSURE                       R24 K51 [PROTO_5]
      143 CAPTURE                          VAL R3
      144 SETTABLE                         R24 R22 R23
      145 GETTABLEKS                       R23 R15 K45 ["name"]
      147 DUPCLOSURE                       R24 K52 [PROTO_6]
      148 CAPTURE                          VAL R3
      149 SETTABLE                         R24 R22 R23
      150 GETTABLEKS                       R23 R17 K45 ["name"]
      152 DUPCLOSURE                       R24 K53 [PROTO_7]
      153 CAPTURE                          VAL R3
      154 SETTABLE                         R24 R22 R23
      155 GETTABLEKS                       R23 R9 K45 ["name"]
      157 DUPCLOSURE                       R24 K54 [PROTO_8]
      158 CAPTURE                          VAL R3
      159 SETTABLE                         R24 R22 R23
      160 GETTABLEKS                       R23 R18 K45 ["name"]
      162 DUPCLOSURE                       R24 K55 [PROTO_9]
      163 CAPTURE                          VAL R3
      164 SETTABLE                         R24 R22 R23
      165 GETTABLEKS                       R23 R10 K45 ["name"]
      167 DUPCLOSURE                       R24 K56 [PROTO_10]
      168 CAPTURE                          VAL R3
      169 SETTABLE                         R24 R22 R23
      170 GETTABLEKS                       R23 R16 K45 ["name"]
      172 DUPCLOSURE                       R24 K57 [PROTO_11]
      173 CAPTURE                          VAL R3
      174 SETTABLE                         R24 R22 R23
      175 GETTABLEKS                       R23 R6 K45 ["name"]
      177 DUPCLOSURE                       R24 K58 [PROTO_12]
      178 CAPTURE                          VAL R19
      179 SETTABLE                         R24 R22 R23
      180 CALL                             R20 2 -1
      181 RETURN                           R20 -1
