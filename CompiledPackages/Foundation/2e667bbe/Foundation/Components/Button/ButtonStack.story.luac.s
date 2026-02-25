PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["PrimaryButton clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["SecondaryButton clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 NEWTABLE                         R4 2 0
        7 LOADB                            R5 1
        8 SETTABLEKS                       R5 R4 K3 ["row gap-small wrap auto-y size-full-0"]
       10 GETTABLEKS                       R6 R0 K4 ["fillBehavior"]
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R7 R8 K5 ["Fill"]
       15 JUMPIFEQ                         R6 R7 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K6 ["fill-x"]
       21 SETTABLEKS                       R4 R3 K1 ["tag"]
       23 DUPTABLE                         R4 K9 [{"Button1", "Button2"}]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K0 ["createElement"]
       27 GETUPVAL                         R6 3
       28 DUPTABLE                         R7 K15 [{"icon", "text", "variant", "onActivated", "fillBehavior", "size"}]
       29 LOADK                            R8 K16 ["icons/common/robux"]
       30 SETTABLEKS                       R8 R7 K10 ["icon"]
       32 LOADK                            R8 K17 ["BUT WAIT NO CLICK ME!!!"]
       33 SETTABLEKS                       R8 R7 K11 ["text"]
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R8 R9 K18 ["Emphasis"]
       38 SETTABLEKS                       R8 R7 K12 ["variant"]
       40 DUPCLOSURE                       R8 K19 [PROTO_0]
       41 SETTABLEKS                       R8 R7 K13 ["onActivated"]
       43 GETTABLEKS                       R8 R0 K4 ["fillBehavior"]
       45 SETTABLEKS                       R8 R7 K4 ["fillBehavior"]
       47 GETTABLEKS                       R8 R0 K14 ["size"]
       49 SETTABLEKS                       R8 R7 K14 ["size"]
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K7 ["Button1"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K0 ["createElement"]
       57 GETUPVAL                         R6 3
       58 DUPTABLE                         R7 K20 [{"text", "variant", "onActivated", "fillBehavior", "size"}]
       59 GETTABLEKS                       R8 R0 K11 ["text"]
       61 SETTABLEKS                       R8 R7 K11 ["text"]
       63 GETUPVAL                         R9 4
       64 GETTABLEKS                       R8 R9 K21 ["Standard"]
       66 SETTABLEKS                       R8 R7 K12 ["variant"]
       68 DUPCLOSURE                       R8 K22 [PROTO_1]
       69 SETTABLEKS                       R8 R7 K13 ["onActivated"]
       71 GETTABLEKS                       R8 R0 K4 ["fillBehavior"]
       73 SETTABLEKS                       R8 R7 K4 ["fillBehavior"]
       75 GETTABLEKS                       R8 R0 K14 ["size"]
       77 SETTABLEKS                       R8 R7 K14 ["size"]
       79 CALL                             R5 2 1
       80 SETTABLEKS                       R5 R4 K8 ["Button2"]
       82 CALL                             R1 3 -1
       83 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"text", "size", "fillBehavior"}]
        2 GETTABLEKS                       R4 R0 K4 ["controls"]
        4 GETTABLEKS                       R3 R4 K0 ["text"]
        6 SETTABLEKS                       R3 R2 K0 ["text"]
        8 GETTABLEKS                       R4 R0 K4 ["controls"]
       10 GETTABLEKS                       R3 R4 K1 ["size"]
       12 SETTABLEKS                       R3 R2 K1 ["size"]
       14 GETTABLEKS                       R4 R0 K4 ["controls"]
       16 GETTABLEKS                       R3 R4 K2 ["fillBehavior"]
       18 SETTABLEKS                       R3 R2 K2 ["fillBehavior"]
       20 CALL                             R1 1 -1
       21 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R8 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K12 ["Enums"]
       44 GETTABLEKS                       R8 R9 K14 ["ButtonVariant"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K12 ["Enums"]
       51 GETTABLEKS                       R9 R10 K15 ["FillBehavior"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K16 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R7
       60 DUPTABLE                         R10 K20 [{"summary", "story", "controls"}]
       61 LOADK                            R11 K21 ["Button Stack"]
       62 SETTABLEKS                       R11 R10 K17 ["summary"]
       64 DUPCLOSURE                       R11 K22 [PROTO_3]
       65 CAPTURE                          VAL R9
       66 SETTABLEKS                       R11 R10 K18 ["story"]
       68 DUPTABLE                         R11 K26 [{"text", "size", "fillBehavior"}]
       69 LOADK                            R12 K27 ["Click me!"]
       70 SETTABLEKS                       R12 R11 K23 ["text"]
       72 GETTABLEKS                       R12 R3 K28 ["values"]
       74 MOVE                             R13 R6
       75 CALL                             R12 1 1
       76 SETTABLEKS                       R12 R11 K24 ["size"]
       78 NEWTABLE                         R12 0 2
       80 GETTABLEKS                       R13 R8 K29 ["Fit"]
       82 GETTABLEKS                       R14 R8 K30 ["Fill"]
       84 SETLIST                          R12 R13 2 [1]
       86 SETTABLEKS                       R12 R11 K25 ["fillBehavior"]
       88 SETTABLEKS                       R11 R10 K19 ["controls"]
       90 RETURN                           R10 1
