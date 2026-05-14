PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADN                            R1 0
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["MeshPart"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["transparencyFromPropertyToLCEditor"]
       11 GETTABLEKS                       R2 R0 K3 ["Transparency"]
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1
       15 LOADK                            R3 K4 ["Model"]
       16 NAMECALL                         R1 R0 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+18]
       20 LOADK                            R3 K0 ["MeshPart"]
       21 NAMECALL                         R1 R0 K5 ["FindFirstChildWhichIsA"]
       23 CALL                             R1 2 1
       24 JUMPIFNOT                        R1 ; [+7]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K2 ["transparencyFromPropertyToLCEditor"]
       28 GETTABLEKS                       R3 R1 K3 ["Transparency"]
       30 CALL                             R2 1 -1
       31 RETURN                           R2 -1
       32 GETIMPORT                        R2 K7 [warn]
       34 LOADK                            R3 K8 ["Avatar does not have a MeshPart as child"]
       35 CALL                             R2 1 0
       36 LOADN                            R2 0
       37 RETURN                           R2 1
       38 LOADK                            R3 K9 ["Folder"]
       39 NAMECALL                         R1 R0 K1 ["IsA"]
       41 CALL                             R1 2 1
       42 JUMPIFNOT                        R1 ; [+27]
       43 GETIMPORT                        R1 K11 [pairs]
       45 NAMECALL                         R2 R0 K12 ["GetDescendants"]
       47 CALL                             R2 1 -1
       48 CALL                             R1 -1 3
       49 FORGPREP_NEXT                    R1
       50 LOADK                            R8 K13 ["BasePart"]
       51 NAMECALL                         R6 R5 K1 ["IsA"]
       53 CALL                             R6 2 1
       54 JUMPIFNOT                        R6 ; [+7]
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K2 ["transparencyFromPropertyToLCEditor"]
       58 GETTABLEKS                       R7 R5 K3 ["Transparency"]
       60 CALL                             R6 1 -1
       61 RETURN                           R6 -1
       62 FORGLOOP                         R1 2 ; [-13]
       64 GETIMPORT                        R1 K7 [warn]
       66 LOADK                            R2 K14 ["folder does not have a Part as child"]
       67 CALL                             R1 1 0
       68 LOADN                            R1 0
       69 RETURN                           R1 1
       70 GETIMPORT                        R1 K7 [warn]
       72 LOADK                            R3 K15 ["Try to modify transparency on inavlid item "]
       73 GETTABLEKS                       R4 R0 K16 ["Name"]
       75 CONCAT                           R2 R3 R4
       76 CALL                             R1 1 0
       77 LOADN                            R1 0
       78 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TONUMBER R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [tonumber]
        4 CALL                             R2 1 1
        5 MOVE                             R1 R2
        6 JUMPIF                           R0 ; [+5]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["Try to modify transparency on nil"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R0 K5 ["Parent"]
       14 JUMPIF                           R2 ; [+5]
       15 GETIMPORT                        R2 K3 [warn]
       17 LOADK                            R3 K6 ["Item isn't parented to anything."]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0
       20 LOADK                            R4 K7 ["MeshPart"]
       21 NAMECALL                         R2 R0 K8 ["IsA"]
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+13]
       25 GETTABLEKS                       R2 R0 K5 ["Parent"]
       27 LOADK                            R4 K9 ["Model"]
       28 NAMECALL                         R2 R2 K8 ["IsA"]
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+3]
       32 GETTABLEKS                       R0 R0 K5 ["Parent"]
       34 JUMP                             ; [+3]
       35 SETTABLEKS                       R1 R0 K10 ["Transparency"]
       37 RETURN                           R0 0
       38 LOADK                            R4 K9 ["Model"]
       39 NAMECALL                         R2 R0 K8 ["IsA"]
       41 CALL                             R2 2 1
       42 JUMPIFNOT                        R2 ; [+41]
       43 GETIMPORT                        R2 K12 [pairs]
       45 NAMECALL                         R3 R0 K13 ["GetChildren"]
       47 CALL                             R3 1 -1
       48 CALL                             R2 -1 3
       49 FORGPREP_NEXT                    R2
       50 LOADK                            R9 K14 ["BasePart"]
       51 NAMECALL                         R7 R6 K8 ["IsA"]
       53 CALL                             R7 2 1
       54 JUMPIFNOT                        R7 ; [+6]
       55 GETTABLEKS                       R7 R6 K15 ["Name"]
       57 JUMPIFEQKS                       R7 K16 ["HumanoidRootPart"] ; [+3]
       59 SETTABLEKS                       R1 R6 K10 ["Transparency"]
       61 FORGLOOP                         R2 2 ; [-12]
       63 GETIMPORT                        R2 K12 [pairs]
       65 NAMECALL                         R3 R0 K17 ["GetDescendants"]
       67 CALL                             R3 1 -1
       68 CALL                             R2 -1 3
       69 FORGPREP_NEXT                    R2
       70 LOADK                            R9 K18 ["Decal"]
       71 NAMECALL                         R7 R6 K8 ["IsA"]
       73 CALL                             R7 2 1
       74 JUMPIFNOT                        R7 ; [+6]
       75 GETTABLEKS                       R7 R6 K15 ["Name"]
       77 JUMPIFNOTEQKS                    R7 K19 ["face"] ; [+3]
       79 SETTABLEKS                       R1 R6 K10 ["Transparency"]
       81 FORGLOOP                         R2 2 ; [-12]
       83 RETURN                           R0 0
       84 GETIMPORT                        R2 K3 [warn]
       86 LOADK                            R4 K20 ["Try to modify transparency on inavlid item "]
       87 GETTABLEKS                       R5 R0 K15 ["Name"]
       89 CONCAT                           R3 R4 R5
       90 CALL                             R2 1 0
       91 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+2]
        1 MOVE                             R1 R0
        2 JUMPIF                           R1 ; [+1]
        3 LOADN                            R1 0
        4 MOVE                             R0 R1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["MAX_TRANSPARENCY_PERCENT"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["MAX_TRANSPARENCY_PERCENT"]
       11 MUL                              R3 R0 R4
       12 SUB                              R1 R2 R3
       13 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+2]
        1 MOVE                             R1 R0
        2 JUMPIF                           R1 ; [+1]
        3 LOADN                            R1 0
        4 MOVE                             R0 R1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["MAX_TRANSPARENCY_PERCENT"]
        8 DIV                              R2 R0 R3
        9 SUBRK                            R1 R0 K2 [NULL]
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Constants"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 4 0
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R1 K7 ["getTransparency"]
       16 DUPCLOSURE                       R2 K8 [PROTO_1]
       17 SETTABLEKS                       R2 R1 K9 ["setTransparency"]
       19 DUPCLOSURE                       R2 K10 [PROTO_2]
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R1 K11 ["transparencyFromPropertyToLCEditor"]
       23 DUPCLOSURE                       R2 K12 [PROTO_3]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R1 K13 ["transparencyFromLCEditorToProperty"]
       27 RETURN                           R1 1
