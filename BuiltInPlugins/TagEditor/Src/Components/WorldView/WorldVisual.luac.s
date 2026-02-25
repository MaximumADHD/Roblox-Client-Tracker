PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["partsList"]
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K2 [pairs]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 LOADNIL                          R8
       10 GETTABLEKS                       R9 R7 K3 ["DrawType"]
       12 JUMPIFNOTEQKS                    R9 K4 ["Outline"] ; [+3]
       14 GETUPVAL                         R8 0
       15 JUMP                             ; [+35]
       16 GETTABLEKS                       R9 R7 K3 ["DrawType"]
       18 JUMPIFNOTEQKS                    R9 K5 ["Box"] ; [+3]
       20 GETUPVAL                         R8 1
       21 JUMP                             ; [+29]
       22 GETTABLEKS                       R9 R7 K3 ["DrawType"]
       24 JUMPIFNOTEQKS                    R9 K6 ["Sphere"] ; [+3]
       26 GETUPVAL                         R8 2
       27 JUMP                             ; [+23]
       28 GETTABLEKS                       R9 R7 K3 ["DrawType"]
       30 JUMPIFNOTEQKS                    R9 K7 ["Icon"] ; [+3]
       32 GETUPVAL                         R8 3
       33 JUMP                             ; [+17]
       34 GETTABLEKS                       R9 R7 K3 ["DrawType"]
       36 JUMPIFNOTEQKS                    R9 K8 ["Text"] ; [+3]
       38 GETUPVAL                         R8 4
       39 JUMP                             ; [+11]
       40 GETIMPORT                        R9 K10 [error]
       42 LOADK                            R11 K11 ["Unknown DrawType: "]
       43 GETTABLEKS                       R13 R7 K3 ["DrawType"]
       45 FASTCALL1                        TOSTRING R13 ; [+2]
       46 GETIMPORT                        R12 K13 [tostring]
       48 CALL                             R12 1 1
       49 CONCAT                           R10 R11 R12
       50 CALL                             R9 1 0
       51 GETUPVAL                         R10 5
       52 GETTABLEKS                       R9 R10 K14 ["createElement"]
       54 MOVE                             R10 R8
       55 DUPTABLE                         R11 K19 [{"Adornee", "Icon", "Color", "TagName", "AlwaysOnTop"}]
       56 GETTABLEKS                       R12 R7 K20 ["Part"]
       58 SETTABLEKS                       R12 R11 K15 ["Adornee"]
       60 GETTABLEKS                       R12 R7 K7 ["Icon"]
       62 SETTABLEKS                       R12 R11 K7 ["Icon"]
       64 GETTABLEKS                       R12 R7 K16 ["Color"]
       66 SETTABLEKS                       R12 R11 K16 ["Color"]
       68 GETTABLEKS                       R12 R7 K17 ["TagName"]
       70 SETTABLEKS                       R12 R11 K17 ["TagName"]
       72 GETTABLEKS                       R12 R7 K18 ["AlwaysOnTop"]
       74 SETTABLEKS                       R12 R11 K18 ["AlwaysOnTop"]
       76 CALL                             R9 2 1
       77 SETTABLE                         R9 R2 R6
       78 FORGLOOP                         R3 2 ; [-70]
       80 GETUPVAL                         R4 5
       81 GETTABLEKS                       R3 R4 K14 ["createElement"]
       83 GETUPVAL                         R5 5
       84 GETTABLEKS                       R4 R5 K21 ["Portal"]
       86 DUPTABLE                         R5 K23 [{"target"}]
       87 GETUPVAL                         R6 6
       88 SETTABLEKS                       R6 R5 K22 ["target"]
       90 DUPTABLE                         R6 K25 [{"TagEditorWorldView"}]
       91 GETUPVAL                         R8 5
       92 GETTABLEKS                       R7 R8 K14 ["createElement"]
       94 LOADK                            R8 K26 ["Folder"]
       95 NEWTABLE                         R9 0 0
       97 MOVE                             R10 R2
       98 CALL                             R7 3 1
       99 SETTABLEKS                       R7 R6 K24 ["TagEditorWorldView"]
      101 CALL                             R3 3 -1
      102 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R4 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R4 K10 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETIMPORT                        R6 K5 [script]
       28 GETTABLEKS                       R5 R6 K6 ["Parent"]
       30 GETTABLEKS                       R4 R5 K11 ["BoxAdorn"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K8 [require]
       35 GETIMPORT                        R7 K5 [script]
       37 GETTABLEKS                       R6 R7 K6 ["Parent"]
       39 GETTABLEKS                       R5 R6 K12 ["SphereAdorn"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K8 [require]
       44 GETIMPORT                        R8 K5 [script]
       46 GETTABLEKS                       R7 R8 K6 ["Parent"]
       48 GETTABLEKS                       R6 R7 K13 ["OutlineAdorn"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K8 [require]
       53 GETIMPORT                        R9 K5 [script]
       55 GETTABLEKS                       R8 R9 K6 ["Parent"]
       57 GETTABLEKS                       R7 R8 K14 ["IconAdorn"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K8 [require]
       62 GETIMPORT                        R10 K5 [script]
       64 GETTABLEKS                       R9 R10 K6 ["Parent"]
       66 GETTABLEKS                       R8 R9 K15 ["TextAdorn"]
       68 CALL                             R7 1 1
       69 DUPCLOSURE                       R8 K16 [PROTO_0]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R0
       77 RETURN                           R8 1
