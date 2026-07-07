PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 DUPTABLE                         R1 K2 [{"message"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["message"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 GETTABLEKS                       R2 R1 K1 ["translationStrings"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["useState"]
        7 LOADK                            R4 K3 [""]
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R3
       15 NEWTABLE                         R7 0 2
       17 GETTABLEKS                       R8 R0 K5 ["onResolved"]
       19 MOVE                             R9 R3
       20 SETLIST                          R7 R8 2 [1]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       26 NEWCLOSURE                       R7 P1
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R8 0 1
       30 GETTABLEKS                       R9 R0 K5 ["onResolved"]
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K6 ["createElement"]
       38 GETUPVAL                         R8 1
       39 DUPTABLE                         R9 K15 [{["uri"], ["type"] = "Default", ["title"], ["width"] = 405, ["primaryAction"], ["secondaryAction"]}]
       40 GETTABLEKS                       R10 R0 K7 ["uri"]
       42 SETTABLEKS                       R10 R9 K7 ["uri"]
       44 GETTABLEKS                       R10 R2 K16 ["Title"]
       46 SETTABLEKS                       R10 R9 K10 ["title"]
       48 DUPTABLE                         R10 K19 [{"uri", "text", "onActivated"}]
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R11 R11 K20 ["child"]
       52 GETTABLEKS                       R12 R0 K7 ["uri"]
       54 LOADK                            R13 K21 ["Publish"]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K7 ["uri"]
       58 GETTABLEKS                       R11 R2 K22 ["PublishButton"]
       60 SETTABLEKS                       R11 R10 K17 ["text"]
       62 SETTABLEKS                       R5 R10 K18 ["onActivated"]
       64 SETTABLEKS                       R10 R9 K13 ["primaryAction"]
       66 DUPTABLE                         R10 K19 [{"uri", "text", "onActivated"}]
       67 GETUPVAL                         R11 2
       68 GETTABLEKS                       R11 R11 K20 ["child"]
       70 GETTABLEKS                       R12 R0 K7 ["uri"]
       72 LOADK                            R13 K23 ["Cancel"]
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K7 ["uri"]
       76 GETTABLEKS                       R11 R2 K24 ["CancelButton"]
       78 SETTABLEKS                       R11 R10 K17 ["text"]
       80 SETTABLEKS                       R6 R10 K18 ["onActivated"]
       82 SETTABLEKS                       R10 R9 K14 ["secondaryAction"]
       84 DUPTABLE                         R10 K26 [{"MessageField"}]
       85 GETUPVAL                         R11 0
       86 GETTABLEKS                       R11 R11 K6 ["createElement"]
       88 GETUPVAL                         R12 3
       89 DUPTABLE                         R13 K32 [{"text", "label", "hint", "placeholder", "size", "width", "onChanged"}]
       90 SETTABLEKS                       R3 R13 K17 ["text"]
       92 GETTABLEKS                       R14 R2 K33 ["MessageFieldLabel"]
       94 SETTABLEKS                       R14 R13 K27 ["label"]
       96 GETTABLEKS                       R14 R2 K34 ["MessageFieldHint"]
       98 SETTABLEKS                       R14 R13 K28 ["hint"]
      100 GETTABLEKS                       R14 R2 K35 ["MessageFieldPlaceholder"]
      102 SETTABLEKS                       R14 R13 K29 ["placeholder"]
      104 GETUPVAL                         R14 4
      105 GETTABLEKS                       R14 R14 K36 ["Small"]
      107 SETTABLEKS                       R14 R13 K30 ["size"]
      109 GETIMPORT                        R14 K39 [UDim.new]
      111 LOADN                            R15 1
      112 LOADN                            R16 0
      113 CALL                             R14 2 1
      114 SETTABLEKS                       R14 R13 K11 ["width"]
      116 SETTABLEKS                       R4 R13 K31 ["onChanged"]
      118 CALL                             R11 2 1
      119 SETTABLEKS                       R11 R10 K25 ["MessageField"]
      121 CALL                             R7 3 -1
      122 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Flags"]
       41 GETTABLEKS                       R6 R6 K13 ["getFFlagCreatorConfigStudioPublishWorkflow"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R7 R3 K14 ["SharedFlags"]
       46 GETTABLEKS                       R7 R7 K15 ["getFFlagStudioFoundationDialogComponent"]
       48 CALL                             R7 0 1
       49 JUMPIFNOT                        R7 ; [+5]
       50 GETTABLEKS                       R6 R3 K16 ["Components"]
       52 GETTABLEKS                       R6 R6 K2 ["Dialog"]
       54 JUMP                             ; [+9]
       55 GETIMPORT                        R6 K5 [require]
       57 GETTABLEKS                       R7 R0 K10 ["Src"]
       59 GETTABLEKS                       R7 R7 K16 ["Components"]
       61 GETTABLEKS                       R7 R7 K17 ["DEPRECATED_Dialog"]
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R7 R3 K18 ["Util"]
       66 GETTABLEKS                       R7 R7 K19 ["StudioUri"]
       68 GETTABLEKS                       R8 R1 K20 ["Enums"]
       70 GETTABLEKS                       R8 R8 K21 ["InputSize"]
       72 GETTABLEKS                       R9 R1 K22 ["TextInput"]
       74 DUPCLOSURE                       R10 K23 [PROTO_2]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R8
       80 MOVE                             R12 R5
       81 CALL                             R12 0 1
       82 JUMPIFNOT                        R12 ; [+18]
       83 GETIMPORT                        R11 K26 [table.freeze]
       85 DUPTABLE                         R12 K29 [{"uri", "component"}]
       86 GETTABLEKS                       R13 R7 K30 ["fromWidget"]
       88 LOADK                            R14 K31 ["CreatorConfig"]
       89 LOADK                            R15 K32 ["PublishDialog"]
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R12 K27 ["uri"]
       93 GETTABLEKS                       R13 R2 K33 ["memo"]
       95 MOVE                             R14 R10
       96 CALL                             R13 1 1
       97 SETTABLEKS                       R13 R12 K28 ["component"]
       99 CALL                             R11 1 1
      100 RETURN                           R11 1
      101 LOADNIL                          R11
      102 RETURN                           R11 1
