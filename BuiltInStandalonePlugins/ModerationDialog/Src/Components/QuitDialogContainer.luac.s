PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CloseStudioInstance"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K5 [{"Label", "OnActivated"}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K6 ["Buttons"]
        5 LOADK                            R5 K7 ["Quit"]
        6 NAMECALL                         R2 R2 K8 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K3 ["Label"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R2 R1 K4 ["OnActivated"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OpenModerationDialog"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K5 [{"Label", "OnActivated"}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K6 ["Buttons"]
        5 LOADK                            R5 K7 ["ReviewToU"]
        6 NAMECALL                         R2 R2 K8 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K3 ["Label"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R2 R1 K4 ["OnActivated"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R4 0 1
       12 GETTABLEKS                       R5 R1 K2 ["locale"]
       14 SETLIST                          R4 R5 1 [1]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R6 R1 K2 ["locale"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 2
       31 DUPTABLE                         R5 K11 [{"Intent", "Heading", "Contents", "ActionPrimary", "ActionSecondary", "Modal", "DisableTitleBar", "Width"}]
       32 LOADK                            R6 K12 ["Warning"]
       33 SETTABLEKS                       R6 R5 K3 ["Intent"]
       35 LOADK                            R8 K13 ["QuitConfirmationDialog"]
       36 LOADK                            R9 K14 ["Title"]
       37 NAMECALL                         R6 R1 K15 ["getText"]
       39 CALL                             R6 3 1
       40 SETTABLEKS                       R6 R5 K4 ["Heading"]
       42 DUPTABLE                         R6 K17 [{"Body"}]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K18 ["createElement"]
       46 LOADK                            R8 K19 ["TextLabel"]
       47 NEWTABLE                         R9 2 0
       49 LOADK                            R12 K13 ["QuitConfirmationDialog"]
       50 LOADK                            R13 K20 ["Text"]
       51 NAMECALL                         R10 R1 K15 ["getText"]
       53 CALL                             R10 3 1
       54 SETTABLEKS                       R10 R9 K20 ["Text"]
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R10 R10 K21 ["Tag"]
       59 LOADK                            R11 K22 ["X-FitY"]
       60 SETTABLE                         R11 R9 R10
       61 CALL                             R7 2 1
       62 SETTABLEKS                       R7 R6 K16 ["Body"]
       64 SETTABLEKS                       R6 R5 K5 ["Contents"]
       66 SETTABLEKS                       R3 R5 K6 ["ActionPrimary"]
       68 SETTABLEKS                       R2 R5 K7 ["ActionSecondary"]
       70 LOADB                            R6 1
       71 SETTABLEKS                       R6 R5 K8 ["Modal"]
       73 LOADB                            R6 1
       74 SETTABLEKS                       R6 R5 K9 ["DisableTitleBar"]
       76 LOADN                            R6 254
       77 SETTABLEKS                       R6 R5 K10 ["Width"]
       79 CALL                             R4 1 1
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R5 R5 K23 ["useEffect"]
       83 MOVE                             R6 R4
       84 NEWTABLE                         R7 0 0
       86 CALL                             R5 2 0
       87 LOADNIL                          R5
       88 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
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
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       29 GETTABLEKS                       R5 R5 K13 ["useDialog"]
       31 DUPCLOSURE                       R6 K14 [PROTO_4]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R5
       35 RETURN                           R6 1
