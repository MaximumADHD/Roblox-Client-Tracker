PROTO_0:
        0 GETTABLEKS                       R7 R0 K0 ["buildDropdownItems"]
        2 GETTABLEKS                       R8 R0 K1 ["bundleTypeItems"]
        4 NEWTABLE                         R9 0 0
        6 MOVE                             R10 R1
        7 LOADNIL                          R11
        8 LOADNIL                          R12
        9 FORGPREP                         R10
       10 JUMPIFNOT                        R7 ; [+6]
       11 MOVE                             R15 R7
       12 MOVE                             R16 R8
       13 GETTABLEKS                       R17 R14 K2 ["ClassName"]
       15 CALL                             R15 2 1
       16 JUMP                             ; [+2]
       17 NEWTABLE                         R15 0 0
       19 GETTABLE                         R16 R2 R13
       20 LOADB                            R17 0
       21 MOVE                             R18 R15
       22 LOADNIL                          R19
       23 LOADNIL                          R20
       24 FORGPREP                         R18
       25 GETTABLEKS                       R23 R22 K3 ["id"]
       27 JUMPIFNOTEQ                      R23 R16 ; [+3]
       29 LOADB                            R17 1
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R18 2 ; [-7]
       33 JUMPIF                           R17 ; [+7]
       34 LENGTH                           R18 R15
       35 LOADN                            R19 0
       36 JUMPIFNOTLT                      R19 R18 ; [+4]
       38 GETTABLEN                        R18 R15 1
       39 GETTABLEKS                       R16 R18 K3 ["id"]
       41 LOADK                            R19 K4 ["AssetTypeDropdown_%*"]
       42 MOVE                             R21 R13
       43 NAMECALL                         R19 R19 K5 ["format"]
       45 CALL                             R19 2 1
       46 MOVE                             R18 R19
       47 GETUPVAL                         R19 0
       48 GETTABLEKS                       R19 R19 K6 ["createElement"]
       50 GETUPVAL                         R20 1
       51 GETTABLEKS                       R20 R20 K7 ["Root"]
       53 DUPTABLE                         R21 K17 [{"label", "items", "value", "onItemChanged", "width", "size", "maxHeight", "testId", "LayoutOrder"}]
       54 GETTABLEKS                       R22 R14 K18 ["Name"]
       56 SETTABLEKS                       R22 R21 K8 ["label"]
       58 SETTABLEKS                       R15 R21 K9 ["items"]
       60 SETTABLEKS                       R16 R21 K10 ["value"]
       62 GETTABLEKS                       R22 R0 K19 ["onAssetTypeChanged"]
       64 MOVE                             R23 R13
       65 CALL                             R22 1 1
       66 SETTABLEKS                       R22 R21 K11 ["onItemChanged"]
       68 GETIMPORT                        R22 K22 [UDim.new]
       70 LOADN                            R23 1
       71 LOADN                            R24 0
       72 CALL                             R22 2 1
       73 SETTABLEKS                       R22 R21 K12 ["width"]
       75 GETUPVAL                         R22 2
       76 GETTABLEKS                       R22 R22 K23 ["Small"]
       78 SETTABLEKS                       R22 R21 K13 ["size"]
       80 LOADN                            R22 240
       81 SETTABLEKS                       R22 R21 K14 ["maxHeight"]
       83 LOADK                            R23 K24 ["aqv-asset-type-dropdown-%*"]
       84 MOVE                             R25 R13
       85 NAMECALL                         R23 R23 K5 ["format"]
       87 CALL                             R23 2 1
       88 MOVE                             R22 R23
       89 SETTABLEKS                       R22 R21 K15 ["testId"]
       91 SETTABLEKS                       R13 R21 K16 ["LayoutOrder"]
       93 CALL                             R19 2 1
       94 SETTABLE                         R19 R9 R18
       95 FORGLOOP                         R10 2 ; [-86]
       97 GETUPVAL                         R10 0
       98 GETTABLEKS                       R10 R10 K6 ["createElement"]
      100 GETUPVAL                         R11 3
      101 DUPTABLE                         R12 K26 [{"tag", "testId", "LayoutOrder"}]
      102 ORK                              R13 R6 K27 ["col size-full-full"]
      103 SETTABLEKS                       R13 R12 K25 ["tag"]
      105 LOADK                            R13 K28 ["aqv-asset-type-dialog"]
      106 SETTABLEKS                       R13 R12 K15 ["testId"]
      108 GETTABLEKS                       R13 R0 K16 ["LayoutOrder"]
      110 SETTABLEKS                       R13 R12 K16 ["LayoutOrder"]
      112 DUPTABLE                         R13 K33 [{"Title", "Dropdowns", "Spacer", "Actions"}]
      113 GETUPVAL                         R14 0
      114 GETTABLEKS                       R14 R14 K6 ["createElement"]
      116 GETUPVAL                         R15 4
      117 DUPTABLE                         R16 K35 [{"tag", "Text", "LayoutOrder"}]
      118 LOADK                            R17 K36 ["text-heading-small content-default padding-x-large padding-y-small"]
      119 SETTABLEKS                       R17 R16 K25 ["tag"]
      121 SETTABLEKS                       R3 R16 K34 ["Text"]
      123 LOADN                            R17 0
      124 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      126 CALL                             R14 2 1
      127 SETTABLEKS                       R14 R13 K29 ["Title"]
      129 GETUPVAL                         R14 0
      130 GETTABLEKS                       R14 R14 K6 ["createElement"]
      132 GETUPVAL                         R15 3
      133 DUPTABLE                         R16 K37 [{"tag", "LayoutOrder"}]
      134 LOADK                            R17 K38 ["col gap-small size-full-0 auto-y padding-x-large padding-y-small"]
      135 SETTABLEKS                       R17 R16 K25 ["tag"]
      137 LOADN                            R17 1
      138 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      140 MOVE                             R17 R9
      141 CALL                             R14 3 1
      142 SETTABLEKS                       R14 R13 K30 ["Dropdowns"]
      144 GETUPVAL                         R14 0
      145 GETTABLEKS                       R14 R14 K6 ["createElement"]
      147 GETUPVAL                         R15 3
      148 DUPTABLE                         R16 K37 [{"tag", "LayoutOrder"}]
      149 LOADK                            R17 K39 ["size-full-0 grow"]
      150 SETTABLEKS                       R17 R16 K25 ["tag"]
      152 LOADN                            R17 2
      153 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      155 CALL                             R14 2 1
      156 SETTABLEKS                       R14 R13 K31 ["Spacer"]
      158 GETUPVAL                         R14 0
      159 GETTABLEKS                       R14 R14 K6 ["createElement"]
      161 GETUPVAL                         R15 3
      162 DUPTABLE                         R16 K37 [{"tag", "LayoutOrder"}]
      163 LOADK                            R17 K40 ["row gap-small align-x-right size-full-0 auto-y padding-x-large padding-y-small"]
      164 SETTABLEKS                       R17 R16 K25 ["tag"]
      166 LOADN                            R17 3
      167 SETTABLEKS                       R17 R16 K16 ["LayoutOrder"]
      169 DUPTABLE                         R17 K43 [{"SubmitButton", "CancelButton"}]
      170 GETUPVAL                         R18 0
      171 GETTABLEKS                       R18 R18 K6 ["createElement"]
      173 GETUPVAL                         R19 5
      174 DUPTABLE                         R20 K47 [{"text", "variant", "onActivated", "size", "testId", "LayoutOrder"}]
      175 SETTABLEKS                       R5 R20 K44 ["text"]
      177 GETUPVAL                         R21 6
      178 GETTABLEKS                       R21 R21 K48 ["Emphasis"]
      180 SETTABLEKS                       R21 R20 K45 ["variant"]
      182 GETTABLEKS                       R21 R0 K49 ["onSubmit"]
      184 SETTABLEKS                       R21 R20 K46 ["onActivated"]
      186 GETUPVAL                         R21 2
      187 GETTABLEKS                       R21 R21 K23 ["Small"]
      189 SETTABLEKS                       R21 R20 K13 ["size"]
      191 LOADK                            R21 K50 ["aqv-asset-type-submit"]
      192 SETTABLEKS                       R21 R20 K15 ["testId"]
      194 LOADN                            R21 0
      195 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      197 CALL                             R18 2 1
      198 SETTABLEKS                       R18 R17 K41 ["SubmitButton"]
      200 GETUPVAL                         R18 0
      201 GETTABLEKS                       R18 R18 K6 ["createElement"]
      203 GETUPVAL                         R19 5
      204 DUPTABLE                         R20 K47 [{"text", "variant", "onActivated", "size", "testId", "LayoutOrder"}]
      205 SETTABLEKS                       R4 R20 K44 ["text"]
      207 GETUPVAL                         R21 6
      208 GETTABLEKS                       R21 R21 K51 ["Standard"]
      210 SETTABLEKS                       R21 R20 K45 ["variant"]
      212 GETTABLEKS                       R21 R0 K52 ["onCancel"]
      214 SETTABLEKS                       R21 R20 K46 ["onActivated"]
      216 GETUPVAL                         R21 2
      217 GETTABLEKS                       R21 R21 K23 ["Small"]
      219 SETTABLEKS                       R21 R20 K13 ["size"]
      221 LOADK                            R21 K53 ["aqv-asset-type-cancel"]
      222 SETTABLEKS                       R21 R20 K15 ["testId"]
      224 LOADN                            R21 1
      225 SETTABLEKS                       R21 R20 K16 ["LayoutOrder"]
      227 CALL                             R18 2 1
      228 SETTABLEKS                       R18 R17 K42 ["CancelButton"]
      230 CALL                             R14 3 1
      231 SETTABLEKS                       R14 R13 K32 ["Actions"]
      233 CALL                             R10 3 -1
      234 RETURN                           R10 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 LOADK                            R4 K1 ["Text"]
        5 LOADK                            R5 K2 ["SelectAssetType"]
        6 NAMECALL                         R2 R1 K3 ["getText"]
        8 CALL                             R2 3 1
        9 LOADK                            R5 K1 ["Text"]
       10 LOADK                            R6 K4 ["Cancel"]
       11 NAMECALL                         R3 R1 K3 ["getText"]
       13 CALL                             R3 3 1
       14 LOADK                            R6 K1 ["Text"]
       15 LOADK                            R7 K5 ["RunValidation"]
       16 NAMECALL                         R4 R1 K3 ["getText"]
       18 CALL                             R4 3 1
       19 GETTABLEKS                       R5 R0 K6 ["visible"]
       21 JUMPIF                           R5 ; [+2]
       22 LOADNIL                          R5
       23 RETURN                           R5 1
       24 GETTABLEKS                       R5 R0 K7 ["models"]
       26 JUMPIF                           R5 ; [+2]
       27 NEWTABLE                         R5 0 0
       29 GETTABLEKS                       R6 R0 K8 ["pendingAssetTypes"]
       31 JUMPIF                           R6 ; [+2]
       32 NEWTABLE                         R6 0 0
       34 GETUPVAL                         R7 1
       35 MOVE                             R8 R0
       36 MOVE                             R9 R5
       37 MOVE                             R10 R6
       38 MOVE                             R11 R2
       39 MOVE                             R12 R3
       40 MOVE                             R13 R4
       41 LOADK                            R14 K9 ["col size-full-0 auto-y"]
       42 CALL                             R7 7 -1
       43 RETURN                           R7 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCancel"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onCancel"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Title"]
        4 GETUPVAL                         R0 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R0 R0 K1 ["BindToClose"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K1 ["Destroy"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 GETUPVAL                         R2 0
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K0 ["current"]
       10 GETUPVAL                         R2 1
       11 LOADNIL                          R3
       12 SETTABLEKS                       R3 R2 K0 ["current"]
       14 GETIMPORT                        R2 K3 [task.defer]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetQualityValidation_AssetTypeDialog"]
        2 DUPTABLE                         R3 K8 [{"Id", "InitialEnabled", "Modal", "Size", "MinSize", "Resizable", "DisableTitleBar"}]
        3 LOADK                            R4 K0 ["AssetQualityValidation_AssetTypeDialog"]
        4 SETTABLEKS                       R4 R3 K1 ["Id"]
        6 LOADB                            R4 0
        7 SETTABLEKS                       R4 R3 K2 ["InitialEnabled"]
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K3 ["Modal"]
       12 GETIMPORT                        R4 K11 [Vector2.new]
       14 LOADN                            R5 154
       15 LOADN                            R6 200
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K4 ["Size"]
       19 GETIMPORT                        R4 K11 [Vector2.new]
       21 LOADN                            R5 44
       22 LOADN                            R6 120
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K5 ["MinSize"]
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R3 K6 ["Resizable"]
       29 LOADB                            R4 0
       30 SETTABLEKS                       R4 R3 K7 ["DisableTitleBar"]
       32 NAMECALL                         R0 R0 K12 ["CreateQWidgetPluginGui"]
       34 CALL                             R0 3 1
       35 GETIMPORT                        R1 K16 [Enum.ZIndexBehavior.Sibling]
       37 SETTABLEKS                       R1 R0 K14 ["ZIndexBehavior"]
       39 GETIMPORT                        R1 K18 [pcall]
       41 NEWCLOSURE                       R2 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 CALL                             R1 1 0
       46 GETUPVAL                         R1 3
       47 SETTABLEKS                       R0 R1 K19 ["current"]
       49 GETUPVAL                         R1 4
       50 GETUPVAL                         R2 5
       51 GETTABLEKS                       R2 R2 K20 ["createRoot"]
       53 MOVE                             R3 R0
       54 CALL                             R2 1 1
       55 SETTABLEKS                       R2 R1 K19 ["current"]
       57 NEWCLOSURE                       R1 P1
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          UPVAL U3
       60 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K2 ["visible"]
        7 ORK                              R1 R2 K1 [False]
        8 SETTABLEKS                       R1 R0 K3 ["Enabled"]
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIFNOT                        R0 ; [+1]
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["models"]
       12 JUMPIF                           R2 ; [+2]
       13 NEWTABLE                         R2 0 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K2 ["pendingAssetTypes"]
       18 JUMPIF                           R3 ; [+2]
       19 NEWTABLE                         R3 0 0
       21 GETUPVAL                         R4 3
       22 GETUPVAL                         R5 2
       23 MOVE                             R6 R2
       24 MOVE                             R7 R3
       25 GETUPVAL                         R8 4
       26 GETUPVAL                         R9 5
       27 GETUPVAL                         R10 6
       28 CALL                             R4 6 1
       29 GETUPVAL                         R5 7
       30 GETTABLEKS                       R5 R5 K3 ["provide"]
       32 NEWTABLE                         R6 0 4
       34 GETUPVAL                         R7 8
       35 GETUPVAL                         R8 9
       36 GETTABLEKS                       R8 R8 K4 ["new"]
       38 MOVE                             R9 R1
       39 CALL                             R8 1 1
       40 GETUPVAL                         R9 10
       41 GETUPVAL                         R10 11
       42 GETTABLEKS                       R10 R10 K4 ["new"]
       44 CALL                             R10 0 -1
       45 SETLIST                          R6 R7 -1 [1]
       47 DUPTABLE                         R7 K6 [{"FoundationProvider"}]
       48 GETUPVAL                         R8 12
       49 GETTABLEKS                       R8 R8 K7 ["createElement"]
       51 GETUPVAL                         R9 13
       52 DUPTABLE                         R10 K9 [{"overlayGui"}]
       53 SETTABLEKS                       R1 R10 K8 ["overlayGui"]
       55 DUPTABLE                         R11 K11 [{"DialogContent"}]
       56 SETTABLEKS                       R4 R11 K10 ["DialogContent"]
       58 CALL                             R8 3 1
       59 SETTABLEKS                       R8 R7 K5 ["FoundationProvider"]
       61 CALL                             R5 2 1
       62 MOVE                             R8 R5
       63 NAMECALL                         R6 R0 K12 ["render"]
       65 CALL                             R6 2 0
       66 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 NAMECALL                         R4 R2 K1 ["get"]
       14 CALL                             R4 1 1
       15 LOADK                            R7 K2 ["Text"]
       16 LOADK                            R8 K3 ["SelectAssetType"]
       17 NAMECALL                         R5 R1 K4 ["getText"]
       19 CALL                             R5 3 1
       20 LOADK                            R8 K2 ["Text"]
       21 LOADK                            R9 K5 ["Cancel"]
       22 NAMECALL                         R6 R1 K4 ["getText"]
       24 CALL                             R6 3 1
       25 LOADK                            R9 K2 ["Text"]
       26 LOADK                            R10 K6 ["RunValidation"]
       27 NAMECALL                         R7 R1 K4 ["getText"]
       29 CALL                             R7 3 1
       30 LOADK                            R10 K7 ["Plugin"]
       31 LOADK                            R11 K8 ["Name"]
       32 NAMECALL                         R8 R1 K4 ["getText"]
       34 CALL                             R8 3 1
       35 GETUPVAL                         R9 3
       36 GETTABLEKS                       R9 R9 K9 ["useRef"]
       38 LOADNIL                          R10
       39 CALL                             R9 1 1
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R10 R10 K9 ["useRef"]
       43 LOADNIL                          R11
       44 CALL                             R10 1 1
       45 GETUPVAL                         R11 3
       46 GETTABLEKS                       R11 R11 K10 ["useEffect"]
       48 NEWCLOSURE                       R12 P0
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R10
       54 CAPTURE                          UPVAL U4
       55 NEWTABLE                         R13 0 0
       57 CALL                             R11 2 0
       58 GETUPVAL                         R11 3
       59 GETTABLEKS                       R11 R11 K10 ["useEffect"]
       61 NEWCLOSURE                       R12 P1
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R0
       64 NEWTABLE                         R13 0 1
       66 GETTABLEKS                       R14 R0 K11 ["visible"]
       68 SETLIST                          R13 R14 1 [1]
       70 CALL                             R11 2 0
       71 GETUPVAL                         R11 3
       72 GETTABLEKS                       R11 R11 K10 ["useEffect"]
       74 NEWCLOSURE                       R12 P2
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R7
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          VAL R3
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          VAL R2
       86 CAPTURE                          UPVAL U8
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          UPVAL U9
       89 NEWTABLE                         R13 0 7
       91 GETTABLEKS                       R14 R0 K11 ["visible"]
       93 GETTABLEKS                       R15 R0 K12 ["models"]
       95 GETTABLEKS                       R16 R0 K13 ["pendingAssetTypes"]
       97 GETTABLEKS                       R17 R0 K14 ["bundleTypeItems"]
       99 MOVE                             R18 R5
      100 MOVE                             R19 R6
      101 MOVE                             R20 R7
      102 SETLIST                          R13 R14 7 [1]
      104 CALL                             R11 2 0
      105 LOADNIL                          R11
      106 RETURN                           R11 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["inline"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["createElement"]
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R0
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K12 ["Components"]
       44 GETTABLEKS                       R6 R6 K13 ["FoundationProviderAdapter"]
       46 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K15 ["Localization"]
       50 GETTABLEKS                       R9 R7 K16 ["Plugin"]
       52 GETTABLEKS                       R10 R7 K17 ["Design"]
       54 GETTABLEKS                       R11 R7 K18 ["Focus"]
       56 GETTABLEKS                       R12 R3 K19 ["Style"]
       58 GETTABLEKS                       R12 R12 K20 ["Themes"]
       60 GETTABLEKS                       R12 R12 K21 ["StudioTheme"]
       62 GETTABLEKS                       R13 R4 K22 ["View"]
       64 GETTABLEKS                       R14 R4 K23 ["Text"]
       66 GETTABLEKS                       R15 R4 K24 ["Button"]
       68 GETTABLEKS                       R16 R4 K25 ["Dropdown"]
       70 GETTABLEKS                       R17 R4 K26 ["Enums"]
       72 GETTABLEKS                       R17 R17 K27 ["ButtonVariant"]
       74 GETTABLEKS                       R18 R4 K26 ["Enums"]
       76 GETTABLEKS                       R18 R18 K28 ["InputSize"]
       78 DUPCLOSURE                       R19 K29 [PROTO_0]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R16
       81 CAPTURE                          VAL R18
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R17
       86 DUPCLOSURE                       R20 K30 [PROTO_1]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R19
       89 DUPCLOSURE                       R21 K31 [PROTO_9]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R19
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R6
      100 DUPCLOSURE                       R22 K32 [PROTO_10]
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R20
      103 CAPTURE                          VAL R21
      104 RETURN                           R22 1
