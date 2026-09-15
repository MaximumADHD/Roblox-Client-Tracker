PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 GETTABLEKS                       R1 R1 K1 ["translationStrings"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["useCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K3 ["onResolved"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R5 0 1
       23 GETTABLEKS                       R6 R0 K3 ["onResolved"]
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K4 ["createElement"]
       31 GETUPVAL                         R5 1
       32 DUPTABLE                         R6 K17 [{["uri"], ["type"] = "Default", ["title"], ["width"] = 320, ["primaryAction"], ["secondaryAction"], ["escapeAction"], ["description"], ["showIndeterminateProgressIndicator"] = False}]
       33 GETTABLEKS                       R7 R0 K5 ["uri"]
       35 SETTABLEKS                       R7 R6 K5 ["uri"]
       37 GETTABLEKS                       R7 R1 K18 ["Title"]
       39 SETTABLEKS                       R7 R6 K8 ["title"]
       41 DUPTABLE                         R7 K21 [{"uri", "text", "onActivated"}]
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R8 R8 K22 ["child"]
       45 GETTABLEKS                       R9 R0 K5 ["uri"]
       47 LOADK                            R10 K23 ["Publish"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K5 ["uri"]
       51 GETTABLEKS                       R8 R1 K24 ["ConfirmButton"]
       53 SETTABLEKS                       R8 R7 K19 ["text"]
       55 SETTABLEKS                       R2 R7 K20 ["onActivated"]
       57 SETTABLEKS                       R7 R6 K11 ["primaryAction"]
       59 DUPTABLE                         R7 K21 [{"uri", "text", "onActivated"}]
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R8 R8 K22 ["child"]
       63 GETTABLEKS                       R9 R0 K5 ["uri"]
       65 LOADK                            R10 K25 ["Cancel"]
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K5 ["uri"]
       69 GETTABLEKS                       R8 R1 K26 ["CancelButton"]
       71 SETTABLEKS                       R8 R7 K19 ["text"]
       73 SETTABLEKS                       R3 R7 K20 ["onActivated"]
       75 SETTABLEKS                       R7 R6 K12 ["secondaryAction"]
       77 GETUPVAL                         R8 3
       78 JUMPIFNOT                        R8 ; [+13]
       79 DUPTABLE                         R7 K28 [{"uri", "onClose"}]
       80 GETUPVAL                         R8 2
       81 GETTABLEKS                       R8 R8 K22 ["child"]
       83 GETTABLEKS                       R9 R0 K5 ["uri"]
       85 LOADK                            R10 K29 ["Close"]
       86 CALL                             R8 2 1
       87 SETTABLEKS                       R8 R7 K5 ["uri"]
       89 SETTABLEKS                       R3 R7 K27 ["onClose"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R7
       93 SETTABLEKS                       R7 R6 K13 ["escapeAction"]
       95 GETTABLEKS                       R7 R1 K30 ["Description"]
       97 SETTABLEKS                       R7 R6 K14 ["description"]
       99 CALL                             R4 2 -1
      100 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagCreatorConfigDialogEscapeAction"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Flags"]
       43 GETTABLEKS                       R6 R6 K13 ["getFFlagCreatorConfigStudioPublishWorkflow"]
       45 CALL                             R5 1 1
       46 MOVE                             R6 R4
       47 CALL                             R6 0 1
       48 GETTABLEKS                       R7 R2 K14 ["Components"]
       50 GETTABLEKS                       R7 R7 K2 ["Dialog"]
       52 GETTABLEKS                       R8 R2 K15 ["Util"]
       54 GETTABLEKS                       R8 R8 K16 ["StudioUri"]
       56 DUPCLOSURE                       R9 K17 [PROTO_2]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R6
       61 MOVE                             R11 R5
       62 CALL                             R11 0 1
       63 JUMPIFNOT                        R11 ; [+18]
       64 GETIMPORT                        R10 K20 [table.freeze]
       66 DUPTABLE                         R11 K23 [{"uri", "component"}]
       67 GETTABLEKS                       R12 R8 K24 ["fromWidget"]
       69 LOADK                            R13 K25 ["CreatorConfig"]
       70 LOADK                            R14 K26 ["CancelPublishDialog"]
       71 CALL                             R12 2 1
       72 SETTABLEKS                       R12 R11 K21 ["uri"]
       74 GETTABLEKS                       R12 R1 K27 ["memo"]
       76 MOVE                             R13 R9
       77 CALL                             R12 1 1
       78 SETTABLEKS                       R12 R11 K22 ["component"]
       80 CALL                             R10 1 1
       81 RETURN                           R10 1
       82 LOADNIL                          R10
       83 RETURN                           R10 1
