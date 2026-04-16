PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K8 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId", "skipBackgroundColoringDisabled"}]
        3 LOADK                            R4 K9 ["icons/common/plus_small"]
        4 SETTABLEKS                       R4 R3 K0 ["icon"]
        6 LOADK                            R4 K10 ["size-600-600 radius-circle bg-action-standard align-x-center align-y-center"]
        7 SETTABLEKS                       R4 R3 K1 ["tag"]
        9 LOADK                            R4 K11 ["size-300-300 content-emphasis"]
       10 SETTABLEKS                       R4 R3 K2 ["iconTag"]
       12 GETTABLEKS                       R4 R0 K3 ["isDisabled"]
       14 SETTABLEKS                       R4 R3 K3 ["isDisabled"]
       16 GETTABLEKS                       R4 R0 K4 ["onActivated"]
       18 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       20 GETTABLEKS                       R4 R0 K5 ["LayoutOrder"]
       22 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K12 ["InputArea"]
       27 GETTABLEKS                       R4 R5 K13 ["AttachImageButton"]
       29 SETTABLEKS                       R4 R3 K6 ["testId"]
       31 LOADB                            R4 1
       32 SETTABLEKS                       R4 R3 K7 ["skipBackgroundColoringDisabled"]
       34 CALL                             R1 2 -1
       35 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["TestIds"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K12 ["createElement"]
       30 DUPCLOSURE                       R5 K13 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 GETTABLEKS                       R6 R2 K14 ["memo"]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 -1
       38 RETURN                           R6 -1
