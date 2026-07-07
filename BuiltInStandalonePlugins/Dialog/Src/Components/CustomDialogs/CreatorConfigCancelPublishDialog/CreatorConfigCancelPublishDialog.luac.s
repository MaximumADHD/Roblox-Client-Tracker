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
       32 DUPTABLE                         R6 K16 [{["uri"], ["type"] = "Default", ["title"], ["width"] = 320, ["primaryAction"], ["secondaryAction"], ["description"], ["showIndeterminateProgressIndicator"] = False}]
       33 GETTABLEKS                       R7 R0 K5 ["uri"]
       35 SETTABLEKS                       R7 R6 K5 ["uri"]
       37 GETTABLEKS                       R7 R1 K17 ["Title"]
       39 SETTABLEKS                       R7 R6 K8 ["title"]
       41 DUPTABLE                         R7 K20 [{"uri", "text", "onActivated"}]
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R8 R8 K21 ["child"]
       45 GETTABLEKS                       R9 R0 K5 ["uri"]
       47 LOADK                            R10 K22 ["Publish"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K5 ["uri"]
       51 GETTABLEKS                       R8 R1 K23 ["ConfirmButton"]
       53 SETTABLEKS                       R8 R7 K18 ["text"]
       55 SETTABLEKS                       R2 R7 K19 ["onActivated"]
       57 SETTABLEKS                       R7 R6 K11 ["primaryAction"]
       59 DUPTABLE                         R7 K20 [{"uri", "text", "onActivated"}]
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R8 R8 K21 ["child"]
       63 GETTABLEKS                       R9 R0 K5 ["uri"]
       65 LOADK                            R10 K24 ["Cancel"]
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K5 ["uri"]
       69 GETTABLEKS                       R8 R1 K25 ["CancelButton"]
       71 SETTABLEKS                       R8 R7 K18 ["text"]
       73 SETTABLEKS                       R3 R7 K19 ["onActivated"]
       75 SETTABLEKS                       R7 R6 K12 ["secondaryAction"]
       77 GETTABLEKS                       R7 R1 K26 ["Description"]
       79 SETTABLEKS                       R7 R6 K13 ["description"]
       81 CALL                             R4 2 -1
       82 RETURN                           R4 -1

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
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagCreatorConfigStudioPublishWorkflow"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R2 K13 ["SharedFlags"]
       39 GETTABLEKS                       R6 R6 K14 ["getFFlagStudioFoundationDialogComponent"]
       41 CALL                             R6 0 1
       42 JUMPIFNOT                        R6 ; [+5]
       43 GETTABLEKS                       R5 R2 K15 ["Components"]
       45 GETTABLEKS                       R5 R5 K2 ["Dialog"]
       47 JUMP                             ; [+9]
       48 GETIMPORT                        R5 K5 [require]
       50 GETTABLEKS                       R6 R0 K9 ["Src"]
       52 GETTABLEKS                       R6 R6 K15 ["Components"]
       54 GETTABLEKS                       R6 R6 K16 ["DEPRECATED_Dialog"]
       56 CALL                             R5 1 1
       57 GETTABLEKS                       R6 R2 K17 ["Util"]
       59 GETTABLEKS                       R6 R6 K18 ["StudioUri"]
       61 DUPCLOSURE                       R7 K19 [PROTO_2]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 MOVE                             R9 R4
       66 CALL                             R9 0 1
       67 JUMPIFNOT                        R9 ; [+18]
       68 GETIMPORT                        R8 K22 [table.freeze]
       70 DUPTABLE                         R9 K25 [{"uri", "component"}]
       71 GETTABLEKS                       R10 R6 K26 ["fromWidget"]
       73 LOADK                            R11 K27 ["CreatorConfig"]
       74 LOADK                            R12 K28 ["CancelPublishDialog"]
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K23 ["uri"]
       78 GETTABLEKS                       R10 R1 K29 ["memo"]
       80 MOVE                             R11 R7
       81 CALL                             R10 1 1
       82 SETTABLEKS                       R10 R9 K24 ["component"]
       84 CALL                             R8 1 1
       85 RETURN                           R8 1
       86 LOADNIL                          R8
       87 RETURN                           R8 1
