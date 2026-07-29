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
       39 DUPTABLE                         R9 K16 [{["uri"], ["type"] = "Default", ["title"], ["width"] = 405, ["primaryAction"], ["secondaryAction"], ["escapeAction"]}]
       40 GETTABLEKS                       R10 R0 K7 ["uri"]
       42 SETTABLEKS                       R10 R9 K7 ["uri"]
       44 GETTABLEKS                       R10 R2 K17 ["Title"]
       46 SETTABLEKS                       R10 R9 K10 ["title"]
       48 DUPTABLE                         R10 K20 [{"uri", "text", "onActivated"}]
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R11 R11 K21 ["child"]
       52 GETTABLEKS                       R12 R0 K7 ["uri"]
       54 LOADK                            R13 K22 ["Publish"]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K7 ["uri"]
       58 GETTABLEKS                       R11 R2 K23 ["PublishButton"]
       60 SETTABLEKS                       R11 R10 K18 ["text"]
       62 SETTABLEKS                       R5 R10 K19 ["onActivated"]
       64 SETTABLEKS                       R10 R9 K13 ["primaryAction"]
       66 DUPTABLE                         R10 K20 [{"uri", "text", "onActivated"}]
       67 GETUPVAL                         R11 2
       68 GETTABLEKS                       R11 R11 K21 ["child"]
       70 GETTABLEKS                       R12 R0 K7 ["uri"]
       72 LOADK                            R13 K24 ["Cancel"]
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K7 ["uri"]
       76 GETTABLEKS                       R11 R2 K25 ["CancelButton"]
       78 SETTABLEKS                       R11 R10 K18 ["text"]
       80 SETTABLEKS                       R6 R10 K19 ["onActivated"]
       82 SETTABLEKS                       R10 R9 K14 ["secondaryAction"]
       84 GETUPVAL                         R11 3
       85 JUMPIFNOT                        R11 ; [+13]
       86 DUPTABLE                         R10 K27 [{"uri", "onClose"}]
       87 GETUPVAL                         R11 2
       88 GETTABLEKS                       R11 R11 K21 ["child"]
       90 GETTABLEKS                       R12 R0 K7 ["uri"]
       92 LOADK                            R13 K28 ["Close"]
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K7 ["uri"]
       96 SETTABLEKS                       R6 R10 K26 ["onClose"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R10
      100 SETTABLEKS                       R10 R9 K15 ["escapeAction"]
      102 DUPTABLE                         R10 K30 [{"MessageField"}]
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K6 ["createElement"]
      106 GETUPVAL                         R12 4
      107 DUPTABLE                         R13 K36 [{"text", "label", "hint", "placeholder", "size", "width", "onChanged"}]
      108 SETTABLEKS                       R3 R13 K18 ["text"]
      110 GETTABLEKS                       R14 R2 K37 ["MessageFieldLabel"]
      112 SETTABLEKS                       R14 R13 K31 ["label"]
      114 GETTABLEKS                       R14 R2 K38 ["MessageFieldHint"]
      116 SETTABLEKS                       R14 R13 K32 ["hint"]
      118 GETTABLEKS                       R14 R2 K39 ["MessageFieldPlaceholder"]
      120 SETTABLEKS                       R14 R13 K33 ["placeholder"]
      122 GETUPVAL                         R14 5
      123 GETTABLEKS                       R14 R14 K40 ["Small"]
      125 SETTABLEKS                       R14 R13 K34 ["size"]
      127 GETIMPORT                        R14 K43 [UDim.new]
      129 LOADN                            R15 1
      130 LOADN                            R16 0
      131 CALL                             R14 2 1
      132 SETTABLEKS                       R14 R13 K11 ["width"]
      134 SETTABLEKS                       R4 R13 K35 ["onChanged"]
      136 CALL                             R11 2 1
      137 SETTABLEKS                       R11 R10 K29 ["MessageField"]
      139 CALL                             R7 3 -1
      140 RETURN                           R7 -1

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
       41 GETTABLEKS                       R6 R6 K13 ["getFFlagCreatorConfigDialogEscapeAction"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K12 ["Flags"]
       50 GETTABLEKS                       R7 R7 K14 ["getFFlagCreatorConfigStudioPublishWorkflow"]
       52 CALL                             R6 1 1
       53 MOVE                             R7 R5
       54 CALL                             R7 0 1
       55 GETTABLEKS                       R9 R3 K15 ["SharedFlags"]
       57 GETTABLEKS                       R9 R9 K16 ["getFFlagStudioFoundationDialogComponent"]
       59 CALL                             R9 0 1
       60 JUMPIFNOT                        R9 ; [+5]
       61 GETTABLEKS                       R8 R3 K17 ["Components"]
       63 GETTABLEKS                       R8 R8 K2 ["Dialog"]
       65 JUMP                             ; [+9]
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K10 ["Src"]
       70 GETTABLEKS                       R9 R9 K17 ["Components"]
       72 GETTABLEKS                       R9 R9 K18 ["DEPRECATED_Dialog"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R9 R3 K19 ["Util"]
       77 GETTABLEKS                       R9 R9 K20 ["StudioUri"]
       79 GETTABLEKS                       R10 R1 K21 ["Enums"]
       81 GETTABLEKS                       R10 R10 K22 ["InputSize"]
       83 GETTABLEKS                       R11 R1 K23 ["TextInput"]
       85 DUPCLOSURE                       R12 K24 [PROTO_2]
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R10
       92 MOVE                             R14 R6
       93 CALL                             R14 0 1
       94 JUMPIFNOT                        R14 ; [+18]
       95 GETIMPORT                        R13 K27 [table.freeze]
       97 DUPTABLE                         R14 K30 [{"uri", "component"}]
       98 GETTABLEKS                       R15 R9 K31 ["fromWidget"]
      100 LOADK                            R16 K32 ["CreatorConfig"]
      101 LOADK                            R17 K33 ["PublishDialog"]
      102 CALL                             R15 2 1
      103 SETTABLEKS                       R15 R14 K28 ["uri"]
      105 GETTABLEKS                       R15 R2 K34 ["memo"]
      107 MOVE                             R16 R12
      108 CALL                             R15 1 1
      109 SETTABLEKS                       R15 R14 K29 ["component"]
      111 CALL                             R13 1 1
      112 RETURN                           R13 1
      113 LOADNIL                          R13
      114 RETURN                           R13 1
