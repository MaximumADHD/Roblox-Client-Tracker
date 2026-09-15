PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        4 GETUPVAL                         R3 2
        5 LOADK                            R4 K1 ["dashboard/creations/experiences/%*/places"]
        6 GETUPVAL                         R6 3
        7 GETTABLEKS                       R6 R6 K2 ["Id"]
        9 NAMECALL                         R4 R4 K3 ["format"]
       11 CALL                             R4 2 1
       12 CALL                             R2 2 -1
       13 NAMECALL                         R0 R0 K4 ["openLink"]
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["cell"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 2
       10 DUPTABLE                         R5 K15 [{["uri"], ["type"] = "Default", ["title"], ["description"], ["showIndeterminateProgressIndicator"] = False, ["width"] = 604, ["escapeAction"], ["secondaryAction"], ["tertiaryAction"]}]
       11 GETUPVAL                         R6 3
       12 SETTABLEKS                       R6 R5 K3 ["uri"]
       14 LOADK                            R8 K16 ["Plugin"]
       15 LOADK                            R9 K17 ["PlaceDialog.Title"]
       16 DUPTABLE                         R10 K19 [{"experienceName"}]
       17 GETTABLEKS                       R11 R2 K20 ["Name"]
       19 SETTABLEKS                       R11 R10 K18 ["experienceName"]
       21 NAMECALL                         R6 R1 K21 ["getText"]
       23 CALL                             R6 4 1
       24 SETTABLEKS                       R6 R5 K6 ["title"]
       26 LOADK                            R8 K16 ["Plugin"]
       27 LOADK                            R9 K22 ["PlaceDialog.Description"]
       28 NAMECALL                         R6 R1 K21 ["getText"]
       30 CALL                             R6 3 1
       31 SETTABLEKS                       R6 R5 K7 ["description"]
       33 DUPTABLE                         R6 K24 [{"uri", "onClose"}]
       34 GETUPVAL                         R7 4
       35 SETTABLEKS                       R7 R6 K3 ["uri"]
       37 GETTABLEKS                       R7 R0 K23 ["onClose"]
       39 SETTABLEKS                       R7 R6 K23 ["onClose"]
       41 SETTABLEKS                       R6 R5 K12 ["escapeAction"]
       43 DUPTABLE                         R6 K27 [{"uri", "text", "onActivated"}]
       44 GETUPVAL                         R7 5
       45 SETTABLEKS                       R7 R6 K3 ["uri"]
       47 LOADK                            R9 K16 ["Plugin"]
       48 LOADK                            R10 K28 ["PlaceDialog.Cancel"]
       49 NAMECALL                         R7 R1 K21 ["getText"]
       51 CALL                             R7 3 1
       52 SETTABLEKS                       R7 R6 K25 ["text"]
       54 GETTABLEKS                       R7 R0 K23 ["onClose"]
       56 SETTABLEKS                       R7 R6 K26 ["onActivated"]
       58 SETTABLEKS                       R6 R5 K13 ["secondaryAction"]
       60 DUPTABLE                         R6 K27 [{"uri", "text", "onActivated"}]
       61 GETUPVAL                         R7 6
       62 SETTABLEKS                       R7 R6 K3 ["uri"]
       64 LOADK                            R9 K16 ["Plugin"]
       65 LOADK                            R10 K29 ["PlaceDialog.ManagePlaces"]
       66 NAMECALL                         R7 R1 K21 ["getText"]
       68 CALL                             R7 3 1
       69 SETTABLEKS                       R7 R6 K25 ["text"]
       71 NEWCLOSURE                       R7 P0
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          UPVAL U8
       74 CAPTURE                          UPVAL U9
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R7 R6 K26 ["onActivated"]
       78 SETTABLEKS                       R6 R5 K14 ["tertiaryAction"]
       80 DUPTABLE                         R6 K31 [{"Table"}]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K2 ["createElement"]
       84 GETUPVAL                         R8 10
       85 DUPTABLE                         R9 K34 [{["cell"], ["LayoutOrder"] = 1}]
       86 SETTABLEKS                       R2 R9 K1 ["cell"]
       88 CALL                             R7 2 1
       89 SETTABLEKS                       R7 R6 K30 ["Table"]
       91 CALL                             R3 3 -1
       92 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETTABLEKS                       R4 R2 K11 ["RobloxAPI"]
       27 GETTABLEKS                       R4 R4 K12 ["Url"]
       29 GETTABLEKS                       R5 R4 K13 ["new"]
       31 CALL                             R5 0 1
       32 GETTABLEKS                       R5 R5 K14 ["CREATOR_HUB_URL"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K15 ["Src"]
       38 GETTABLEKS                       R7 R7 K16 ["Util"]
       40 GETTABLEKS                       R7 R7 K17 ["Services"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R6 K18 ["StartPageManager"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K6 ["Packages"]
       49 GETTABLEKS                       R9 R9 K19 ["StudioFoundation"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R9 R8 K20 ["Components"]
       54 GETTABLEKS                       R9 R9 K21 ["Dialog"]
       56 GETTABLEKS                       R10 R8 K16 ["Util"]
       58 GETTABLEKS                       R10 R10 K22 ["StudioUri"]
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R0 K15 ["Src"]
       64 GETTABLEKS                       R12 R12 K20 ["Components"]
       66 GETTABLEKS                       R12 R12 K23 ["PlacesTable"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R13 R0 K15 ["Src"]
       73 GETTABLEKS                       R13 R13 K24 ["Types"]
       75 CALL                             R12 1 1
       76 GETTABLEKS                       R13 R10 K25 ["fromWidget"]
       78 LOADK                            R14 K2 ["StartPage"]
       79 LOADK                            R15 K26 ["PlacesDialog"]
       80 CALL                             R13 2 1
       81 GETTABLEKS                       R14 R10 K27 ["child"]
       83 MOVE                             R15 R13
       84 LOADK                            R16 K28 ["Close"]
       85 CALL                             R14 2 1
       86 GETTABLEKS                       R15 R10 K27 ["child"]
       88 MOVE                             R16 R13
       89 LOADK                            R17 K29 ["Cancel"]
       90 CALL                             R15 2 1
       91 GETTABLEKS                       R16 R10 K27 ["child"]
       93 MOVE                             R17 R13
       94 LOADK                            R18 K30 ["ManagePlaces"]
       95 CALL                             R16 2 1
       96 DUPCLOSURE                       R17 K31 [PROTO_1]
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R11
      108 RETURN                           R17 1
