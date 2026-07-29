PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        4 GETUPVAL                         R3 2
        5 LOADK                            R5 K1 ["dashboard/creations/experiences/%*/places"]
        6 GETUPVAL                         R7 3
        7 GETTABLEKS                       R7 R7 K2 ["Id"]
        9 NAMECALL                         R5 R5 K3 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 CALL                             R2 2 -1
       14 NAMECALL                         R0 R0 K4 ["openLink"]
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["StudioFoundation Dialog component is required"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K3 ["use"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K4 ["cell"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K5 ["createElement"]
       17 GETUPVAL                         R4 3
       18 DUPTABLE                         R5 K18 [{["uri"], ["type"] = "Default", ["title"], ["description"], ["showIndeterminateProgressIndicator"] = False, ["width"] = 604, ["escapeAction"], ["secondaryAction"], ["tertiaryAction"]}]
       19 GETUPVAL                         R6 4
       20 SETTABLEKS                       R6 R5 K6 ["uri"]
       22 LOADK                            R8 K19 ["Plugin"]
       23 LOADK                            R9 K20 ["PlaceDialog.Title"]
       24 DUPTABLE                         R10 K22 [{"experienceName"}]
       25 GETTABLEKS                       R11 R2 K23 ["Name"]
       27 SETTABLEKS                       R11 R10 K21 ["experienceName"]
       29 NAMECALL                         R6 R1 K24 ["getText"]
       31 CALL                             R6 4 1
       32 SETTABLEKS                       R6 R5 K9 ["title"]
       34 LOADK                            R8 K19 ["Plugin"]
       35 LOADK                            R9 K25 ["PlaceDialog.Description"]
       36 NAMECALL                         R6 R1 K24 ["getText"]
       38 CALL                             R6 3 1
       39 SETTABLEKS                       R6 R5 K10 ["description"]
       41 DUPTABLE                         R6 K27 [{"uri", "onClose"}]
       42 GETUPVAL                         R7 5
       43 SETTABLEKS                       R7 R6 K6 ["uri"]
       45 GETTABLEKS                       R7 R0 K26 ["onClose"]
       47 SETTABLEKS                       R7 R6 K26 ["onClose"]
       49 SETTABLEKS                       R6 R5 K15 ["escapeAction"]
       51 DUPTABLE                         R6 K30 [{"uri", "text", "onActivated"}]
       52 GETUPVAL                         R7 6
       53 SETTABLEKS                       R7 R6 K6 ["uri"]
       55 LOADK                            R9 K19 ["Plugin"]
       56 LOADK                            R10 K31 ["PlaceDialog.Cancel"]
       57 NAMECALL                         R7 R1 K24 ["getText"]
       59 CALL                             R7 3 1
       60 SETTABLEKS                       R7 R6 K28 ["text"]
       62 GETTABLEKS                       R7 R0 K26 ["onClose"]
       64 SETTABLEKS                       R7 R6 K29 ["onActivated"]
       66 SETTABLEKS                       R6 R5 K16 ["secondaryAction"]
       68 DUPTABLE                         R6 K30 [{"uri", "text", "onActivated"}]
       69 GETUPVAL                         R7 7
       70 SETTABLEKS                       R7 R6 K6 ["uri"]
       72 LOADK                            R9 K19 ["Plugin"]
       73 LOADK                            R10 K32 ["PlaceDialog.ManagePlaces"]
       74 NAMECALL                         R7 R1 K24 ["getText"]
       76 CALL                             R7 3 1
       77 SETTABLEKS                       R7 R6 K28 ["text"]
       79 NEWCLOSURE                       R7 P0
       80 CAPTURE                          UPVAL U8
       81 CAPTURE                          UPVAL U9
       82 CAPTURE                          UPVAL U10
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R7 R6 K29 ["onActivated"]
       86 SETTABLEKS                       R6 R5 K17 ["tertiaryAction"]
       88 DUPTABLE                         R6 K34 [{"Table"}]
       89 GETUPVAL                         R7 2
       90 GETTABLEKS                       R7 R7 K5 ["createElement"]
       92 GETUPVAL                         R8 11
       93 DUPTABLE                         R9 K37 [{["cell"], ["LayoutOrder"] = 1}]
       94 SETTABLEKS                       R2 R9 K4 ["cell"]
       96 CALL                             R7 2 1
       97 SETTABLEKS                       R7 R6 K33 ["Table"]
       99 CALL                             R3 3 -1
      100 RETURN                           R3 -1

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
       60 GETTABLEKS                       R11 R8 K23 ["SharedFlags"]
       62 GETTABLEKS                       R11 R11 K24 ["getFFlagStudioFoundationDialogComponent"]
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R13 R0 K15 ["Src"]
       68 GETTABLEKS                       R13 R13 K20 ["Components"]
       70 GETTABLEKS                       R13 R13 K25 ["PlacesTable"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R0 K15 ["Src"]
       77 GETTABLEKS                       R14 R14 K26 ["Types"]
       79 CALL                             R13 1 1
       80 GETTABLEKS                       R14 R10 K27 ["fromWidget"]
       82 LOADK                            R15 K2 ["StartPage"]
       83 LOADK                            R16 K28 ["PlacesDialog"]
       84 CALL                             R14 2 1
       85 GETTABLEKS                       R15 R10 K29 ["child"]
       87 MOVE                             R16 R14
       88 LOADK                            R17 K30 ["Close"]
       89 CALL                             R15 2 1
       90 GETTABLEKS                       R16 R10 K29 ["child"]
       92 MOVE                             R17 R14
       93 LOADK                            R18 K31 ["Cancel"]
       94 CALL                             R16 2 1
       95 GETTABLEKS                       R17 R10 K29 ["child"]
       97 MOVE                             R18 R14
       98 LOADK                            R19 K32 ["ManagePlaces"]
       99 CALL                             R17 2 1
      100 DUPCLOSURE                       R18 K33 [PROTO_1]
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R12
      113 RETURN                           R18 1
