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
       39 DUPTABLE                         R9 K13 [{"uri", "type", "title", "width", "primaryAction", "secondaryAction"}]
       40 GETTABLEKS                       R10 R0 K7 ["uri"]
       42 SETTABLEKS                       R10 R9 K7 ["uri"]
       44 LOADK                            R10 K14 ["Default"]
       45 SETTABLEKS                       R10 R9 K8 ["type"]
       47 GETTABLEKS                       R10 R2 K15 ["Title"]
       49 SETTABLEKS                       R10 R9 K9 ["title"]
       51 LOADN                            R10 149
       52 SETTABLEKS                       R10 R9 K10 ["width"]
       54 DUPTABLE                         R10 K18 [{"uri", "text", "onActivated"}]
       55 GETUPVAL                         R11 2
       56 GETTABLEKS                       R11 R11 K19 ["child"]
       58 GETTABLEKS                       R12 R0 K7 ["uri"]
       60 LOADK                            R13 K20 ["Publish"]
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K7 ["uri"]
       64 GETTABLEKS                       R11 R2 K21 ["PublishButton"]
       66 SETTABLEKS                       R11 R10 K16 ["text"]
       68 SETTABLEKS                       R5 R10 K17 ["onActivated"]
       70 SETTABLEKS                       R10 R9 K11 ["primaryAction"]
       72 DUPTABLE                         R10 K18 [{"uri", "text", "onActivated"}]
       73 GETUPVAL                         R11 2
       74 GETTABLEKS                       R11 R11 K19 ["child"]
       76 GETTABLEKS                       R12 R0 K7 ["uri"]
       78 LOADK                            R13 K22 ["Cancel"]
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K7 ["uri"]
       82 GETTABLEKS                       R11 R2 K23 ["CancelButton"]
       84 SETTABLEKS                       R11 R10 K16 ["text"]
       86 SETTABLEKS                       R6 R10 K17 ["onActivated"]
       88 SETTABLEKS                       R10 R9 K12 ["secondaryAction"]
       90 DUPTABLE                         R10 K25 [{"MessageField"}]
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K6 ["createElement"]
       94 GETUPVAL                         R12 3
       95 DUPTABLE                         R13 K31 [{"text", "label", "hint", "placeholder", "size", "width", "onChanged"}]
       96 SETTABLEKS                       R3 R13 K16 ["text"]
       98 GETTABLEKS                       R14 R2 K32 ["MessageFieldLabel"]
      100 SETTABLEKS                       R14 R13 K26 ["label"]
      102 GETTABLEKS                       R14 R2 K33 ["MessageFieldHint"]
      104 SETTABLEKS                       R14 R13 K27 ["hint"]
      106 GETTABLEKS                       R14 R2 K34 ["MessageFieldPlaceholder"]
      108 SETTABLEKS                       R14 R13 K28 ["placeholder"]
      110 GETUPVAL                         R14 4
      111 GETTABLEKS                       R14 R14 K35 ["Small"]
      113 SETTABLEKS                       R14 R13 K29 ["size"]
      115 GETIMPORT                        R14 K38 [UDim.new]
      117 LOADN                            R15 1
      118 LOADN                            R16 0
      119 CALL                             R14 2 1
      120 SETTABLEKS                       R14 R13 K10 ["width"]
      122 SETTABLEKS                       R4 R13 K30 ["onChanged"]
      124 CALL                             R11 2 1
      125 SETTABLEKS                       R11 R10 K24 ["MessageField"]
      127 CALL                             R7 3 -1
      128 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K2 ["Dialog"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Packages"]
       27 GETTABLEKS                       R4 R4 K10 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Packages"]
       34 GETTABLEKS                       R5 R5 K11 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K12 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Src"]
       48 GETTABLEKS                       R7 R7 K13 ["Flags"]
       50 GETTABLEKS                       R7 R7 K14 ["getFFlagCreatorConfigStudioPublishWorkflow"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R4 K15 ["Util"]
       55 GETTABLEKS                       R7 R7 K16 ["StudioUri"]
       57 GETTABLEKS                       R8 R2 K17 ["Enums"]
       59 GETTABLEKS                       R8 R8 K18 ["InputSize"]
       61 GETTABLEKS                       R9 R2 K19 ["TextInput"]
       63 DUPCLOSURE                       R10 K20 [PROTO_2]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R8
       69 MOVE                             R12 R6
       70 CALL                             R12 0 1
       71 JUMPIFNOT                        R12 ; [+18]
       72 GETIMPORT                        R11 K23 [table.freeze]
       74 DUPTABLE                         R12 K26 [{"uri", "component"}]
       75 GETTABLEKS                       R13 R7 K27 ["fromWidget"]
       77 LOADK                            R14 K28 ["CreatorConfig"]
       78 LOADK                            R15 K29 ["PublishDialog"]
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K24 ["uri"]
       82 GETTABLEKS                       R13 R3 K30 ["memo"]
       84 MOVE                             R14 R10
       85 CALL                             R13 1 1
       86 SETTABLEKS                       R13 R12 K25 ["component"]
       88 CALL                             R11 1 1
       89 RETURN                           R11 1
       90 LOADNIL                          R11
       91 RETURN                           R11 1
