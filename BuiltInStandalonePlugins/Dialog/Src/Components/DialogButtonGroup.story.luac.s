PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Primary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Secondary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Tertiary"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["View"]
        4 DUPTABLE                         R3 K2 [{"Size"}]
        5 GETIMPORT                        R4 K5 [UDim2.fromOffset]
        7 GETTABLEKS                       R6 R0 K6 ["controls"]
        9 GETTABLEKS                       R5 R6 K7 ["containerWidth"]
       11 LOADN                            R6 0
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K1 ["Size"]
       15 DUPTABLE                         R4 K9 [{"DialogButtonGroup"}]
       16 GETUPVAL                         R5 0
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K13 [{"primaryAction", "secondaryAction", "tertiaryAction"}]
       19 GETTABLEKS                       R10 R0 K6 ["controls"]
       21 GETTABLEKS                       R9 R10 K10 ["primaryAction"]
       23 JUMPIFEQKS                       R9 K14 [""] ; [+20]
       25 DUPTABLE                         R8 K18 [{"uri", "text", "onActivated"}]
       26 GETUPVAL                         R10 3
       27 GETTABLEKS                       R9 R10 K19 ["fromWidget"]
       29 LOADK                            R10 K20 ["Dialog"]
       30 LOADK                            R11 K21 ["Primary"]
       31 CALL                             R9 2 1
       32 SETTABLEKS                       R9 R8 K15 ["uri"]
       34 GETTABLEKS                       R10 R0 K6 ["controls"]
       36 GETTABLEKS                       R9 R10 K10 ["primaryAction"]
       38 SETTABLEKS                       R9 R8 K16 ["text"]
       40 DUPCLOSURE                       R9 K22 [PROTO_0]
       41 SETTABLEKS                       R9 R8 K17 ["onActivated"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 SETTABLEKS                       R8 R7 K10 ["primaryAction"]
       47 GETTABLEKS                       R10 R0 K6 ["controls"]
       49 GETTABLEKS                       R9 R10 K11 ["secondaryAction"]
       51 JUMPIFEQKS                       R9 K14 [""] ; [+20]
       53 DUPTABLE                         R8 K18 [{"uri", "text", "onActivated"}]
       54 GETUPVAL                         R10 3
       55 GETTABLEKS                       R9 R10 K19 ["fromWidget"]
       57 LOADK                            R10 K20 ["Dialog"]
       58 LOADK                            R11 K23 ["Secondary"]
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K15 ["uri"]
       62 GETTABLEKS                       R10 R0 K6 ["controls"]
       64 GETTABLEKS                       R9 R10 K11 ["secondaryAction"]
       66 SETTABLEKS                       R9 R8 K16 ["text"]
       68 DUPCLOSURE                       R9 K24 [PROTO_1]
       69 SETTABLEKS                       R9 R8 K17 ["onActivated"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R8
       73 SETTABLEKS                       R8 R7 K11 ["secondaryAction"]
       75 GETTABLEKS                       R10 R0 K6 ["controls"]
       77 GETTABLEKS                       R9 R10 K12 ["tertiaryAction"]
       79 JUMPIFEQKS                       R9 K14 [""] ; [+20]
       81 DUPTABLE                         R8 K18 [{"uri", "text", "onActivated"}]
       82 GETUPVAL                         R10 3
       83 GETTABLEKS                       R9 R10 K19 ["fromWidget"]
       85 LOADK                            R10 K20 ["Dialog"]
       86 LOADK                            R11 K25 ["Tertiary"]
       87 CALL                             R9 2 1
       88 SETTABLEKS                       R9 R8 K15 ["uri"]
       90 GETTABLEKS                       R10 R0 K6 ["controls"]
       92 GETTABLEKS                       R9 R10 K12 ["tertiaryAction"]
       94 SETTABLEKS                       R9 R8 K16 ["text"]
       96 DUPCLOSURE                       R9 K26 [PROTO_2]
       97 SETTABLEKS                       R9 R8 K17 ["onActivated"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R8
      101 SETTABLEKS                       R8 R7 K12 ["tertiaryAction"]
      103 CALL                             R5 2 1
      104 SETTABLEKS                       R5 R4 K8 ["DialogButtonGroup"]
      106 CALL                             R1 3 -1
      107 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["DialogButtonGroup"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Packages"]
       27 GETTABLEKS                       R4 R5 K10 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Packages"]
       34 GETTABLEKS                       R5 R6 K11 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R4 K12 ["Util"]
       39 GETTABLEKS                       R5 R6 K13 ["StudioUri"]
       41 GETTABLEKS                       R6 R3 K14 ["createElement"]
       43 DUPTABLE                         R7 K18 [{"name", "controls", "stories"}]
       44 LOADK                            R8 K7 ["DialogButtonGroup"]
       45 SETTABLEKS                       R8 R7 K15 ["name"]
       47 DUPTABLE                         R8 K23 [{"containerWidth", "primaryAction", "secondaryAction", "tertiaryAction"}]
       48 LOADN                            R9 62
       49 SETTABLEKS                       R9 R8 K19 ["containerWidth"]
       51 LOADK                            R9 K24 ["Save"]
       52 SETTABLEKS                       R9 R8 K20 ["primaryAction"]
       54 LOADK                            R9 K25 ["Don't save"]
       55 SETTABLEKS                       R9 R8 K21 ["secondaryAction"]
       57 LOADK                            R9 K26 ["Cancel"]
       58 SETTABLEKS                       R9 R8 K22 ["tertiaryAction"]
       60 SETTABLEKS                       R8 R7 K16 ["controls"]
       62 NEWTABLE                         R8 0 1
       64 DUPTABLE                         R9 K28 [{"name", "story"}]
       65 LOADK                            R10 K29 ["Configurable"]
       66 SETTABLEKS                       R10 R9 K15 ["name"]
       68 DUPCLOSURE                       R10 K30 [PROTO_3]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R10 R9 K27 ["story"]
       75 SETLIST                          R8 R9 1 [1]
       77 SETTABLEKS                       R8 R7 K17 ["stories"]
       79 RETURN                           R7 1
