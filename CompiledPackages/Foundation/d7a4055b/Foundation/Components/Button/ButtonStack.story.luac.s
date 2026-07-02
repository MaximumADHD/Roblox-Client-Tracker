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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 NEWTABLE                         R4 2 0
        7 LOADB                            R5 1
        8 SETTABLEKS                       R5 R4 K3 ["row gap-small wrap auto-y size-full-0"]
       10 GETTABLEKS                       R6 R0 K4 ["fillBehavior"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K5 ["Fill"]
       15 JUMPIFEQ                         R6 R7 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K6 ["fill-x"]
       21 SETTABLEKS                       R4 R3 K1 ["tag"]
       23 DUPTABLE                         R4 K9 [{"Button1", "Button2"}]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K0 ["createElement"]
       27 GETUPVAL                         R6 3
       28 DUPTABLE                         R7 K17 [{["icon"] = "icons/common/robux", ["text"] = "BUT WAIT NO CLICK ME!!!", ["variant"], ["onActivated"], ["fillBehavior"], ["size"]}]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R8 R8 K18 ["Emphasis"]
       32 SETTABLEKS                       R8 R7 K14 ["variant"]
       34 DUPCLOSURE                       R8 K19 [PROTO_0]
       35 SETTABLEKS                       R8 R7 K15 ["onActivated"]
       37 GETTABLEKS                       R8 R0 K4 ["fillBehavior"]
       39 SETTABLEKS                       R8 R7 K4 ["fillBehavior"]
       41 GETTABLEKS                       R8 R0 K16 ["size"]
       43 SETTABLEKS                       R8 R7 K16 ["size"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K7 ["Button1"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K0 ["createElement"]
       51 GETUPVAL                         R6 3
       52 DUPTABLE                         R7 K20 [{"text", "variant", "onActivated", "fillBehavior", "size"}]
       53 GETTABLEKS                       R8 R0 K12 ["text"]
       55 SETTABLEKS                       R8 R7 K12 ["text"]
       57 GETUPVAL                         R8 4
       58 GETTABLEKS                       R8 R8 K21 ["Standard"]
       60 SETTABLEKS                       R8 R7 K14 ["variant"]
       62 DUPCLOSURE                       R8 K22 [PROTO_1]
       63 SETTABLEKS                       R8 R7 K15 ["onActivated"]
       65 GETTABLEKS                       R8 R0 K4 ["fillBehavior"]
       67 SETTABLEKS                       R8 R7 K4 ["fillBehavior"]
       69 GETTABLEKS                       R8 R0 K16 ["size"]
       71 SETTABLEKS                       R8 R7 K16 ["size"]
       73 CALL                             R5 2 1
       74 SETTABLEKS                       R5 R4 K8 ["Button2"]
       76 CALL                             R1 3 -1
       77 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"text", "size", "fillBehavior"}]
        2 GETTABLEKS                       R3 R0 K4 ["controls"]
        4 GETTABLEKS                       R3 R3 K0 ["text"]
        6 SETTABLEKS                       R3 R2 K0 ["text"]
        8 GETTABLEKS                       R3 R0 K4 ["controls"]
       10 GETTABLEKS                       R3 R3 K1 ["size"]
       12 SETTABLEKS                       R3 R2 K1 ["size"]
       14 GETTABLEKS                       R3 R0 K4 ["controls"]
       16 GETTABLEKS                       R3 R3 K2 ["fillBehavior"]
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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["ButtonVariant"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K12 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["FillBehavior"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K16 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R7
       60 DUPTABLE                         R10 K21 [{["summary"] = "Button Stack", ["story"], ["controls"]}]
       61 DUPCLOSURE                       R11 K22 [PROTO_3]
       62 CAPTURE                          VAL R9
       63 SETTABLEKS                       R11 R10 K19 ["story"]
       65 DUPTABLE                         R11 K27 [{["text"] = "Click me!", ["size"], ["fillBehavior"]}]
       66 GETTABLEKS                       R12 R3 K28 ["values"]
       68 MOVE                             R13 R6
       69 CALL                             R12 1 1
       70 SETTABLEKS                       R12 R11 K25 ["size"]
       72 NEWTABLE                         R12 0 2
       74 GETTABLEKS                       R13 R8 K29 ["Fit"]
       76 GETTABLEKS                       R14 R8 K30 ["Fill"]
       78 SETLIST                          R12 R13 2 [1]
       80 SETTABLEKS                       R12 R11 K26 ["fillBehavior"]
       82 SETTABLEKS                       R11 R10 K20 ["controls"]
       84 RETURN                           R10 1
