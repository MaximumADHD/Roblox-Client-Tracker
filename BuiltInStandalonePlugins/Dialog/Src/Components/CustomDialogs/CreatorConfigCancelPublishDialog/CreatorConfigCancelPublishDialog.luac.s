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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K2 ["Dialog"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R3 K9 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Packages"]
       27 GETTABLEKS                       R4 R4 K10 ["StudioFoundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K11 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K12 ["Flags"]
       43 GETTABLEKS                       R6 R6 K13 ["getFFlagCreatorConfigStudioPublishWorkflow"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R3 K14 ["Util"]
       48 GETTABLEKS                       R6 R6 K15 ["StudioUri"]
       50 DUPCLOSURE                       R7 K16 [PROTO_2]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R6
       54 MOVE                             R9 R5
       55 CALL                             R9 0 1
       56 JUMPIFNOT                        R9 ; [+18]
       57 GETIMPORT                        R8 K19 [table.freeze]
       59 DUPTABLE                         R9 K22 [{"uri", "component"}]
       60 GETTABLEKS                       R10 R6 K23 ["fromWidget"]
       62 LOADK                            R11 K24 ["CreatorConfig"]
       63 LOADK                            R12 K25 ["CancelPublishDialog"]
       64 CALL                             R10 2 1
       65 SETTABLEKS                       R10 R9 K20 ["uri"]
       67 GETTABLEKS                       R10 R2 K26 ["memo"]
       69 MOVE                             R11 R7
       70 CALL                             R10 1 1
       71 SETTABLEKS                       R10 R9 K21 ["component"]
       73 CALL                             R8 1 1
       74 RETURN                           R8 1
       75 LOADNIL                          R8
       76 RETURN                           R8 1
