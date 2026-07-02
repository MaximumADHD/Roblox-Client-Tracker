PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{[1], ["includeBuiltInAccessories"] = True}]
        2 GETTABLEKS                       R3 R0 K0 ["dummy"]
        4 SETTABLEKS                       R3 R2 K0 ["dummy"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 LOADN                            R5 0
        5 SETTABLEKS                       R5 R3 K0 ["LocalTransparencyModifier"]
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 LOADB                            R5 1
       14 SETTABLEKS                       R5 R3 K1 ["Enabled"]
       16 FORGLOOP                         R0 2 ; [-4]
       18 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K0 ["GetChildren"]
        7 CALL                             R2 1 3
        8 FORGPREP                         R2
        9 LOADK                            R9 K1 ["Accessory"]
       10 NAMECALL                         R7 R6 K2 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+36]
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R9 R9 K3 ["ATTRIBUTE_IS_PREVIEW_ACCESSORY"]
       17 NAMECALL                         R7 R6 K4 ["GetAttribute"]
       19 CALL                             R7 2 1
       20 JUMPIF                           R7 ; [+29]
       21 NAMECALL                         R7 R6 K5 ["GetDescendants"]
       23 CALL                             R7 1 3
       24 FORGPREP                         R7
       25 LOADK                            R14 K6 ["BasePart"]
       26 NAMECALL                         R12 R11 K2 ["IsA"]
       28 CALL                             R12 2 1
       29 JUMPIFNOT                        R12 ; [+5]
       30 LOADN                            R12 1
       31 SETTABLEKS                       R12 R11 K7 ["LocalTransparencyModifier"]
       33 LOADB                            R12 1
       34 SETTABLE                         R12 R0 R11
       35 LOADK                            R14 K8 ["WrapLayer"]
       36 NAMECALL                         R12 R11 K2 ["IsA"]
       38 CALL                             R12 2 1
       39 JUMPIFNOT                        R12 ; [+8]
       40 GETTABLEKS                       R12 R11 K9 ["Enabled"]
       42 JUMPIFNOT                        R12 ; [+5]
       43 LOADB                            R12 0
       44 SETTABLEKS                       R12 R11 K9 ["Enabled"]
       46 LOADB                            R12 1
       47 SETTABLE                         R12 R1 R11
       48 FORGLOOP                         R7 2 ; [-24]
       50 FORGLOOP                         R2 2 ; [-42]
       52 NEWCLOSURE                       R2 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useEffect"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R4 0 2
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 SETLIST                          R4 R5 2 [1]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pushIsEditingWorldModel"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["RepresentEditorStateOnWorldModle required FFlagAvatarPreviewerEditingTools"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["Context"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["useEffect"]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R1
       20 CALL                             R2 1 0
       21 GETTABLEKS                       R2 R0 K6 ["avatar"]
       23 GETTABLEKS                       R2 R2 K7 ["WorldModel"]
       25 GETTABLEKS                       R3 R0 K8 ["includeAccessories"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K5 ["useEffect"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U3
       33 NEWTABLE                         R6 0 2
       35 MOVE                             R7 R2
       36 MOVE                             R8 R3
       37 SETLIST                          R6 R7 2 [1]
       39 CALL                             R4 2 0
       40 GETTABLEKS                       R2 R0 K8 ["includeAccessories"]
       42 JUMPIFNOT                        R2 ; [+13]
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K9 ["createElement"]
       46 GETUPVAL                         R3 4
       47 DUPTABLE                         R4 K11 [{"dummy"}]
       48 GETTABLEKS                       R5 R0 K6 ["avatar"]
       50 GETTABLEKS                       R5 R5 K7 ["WorldModel"]
       52 SETTABLEKS                       R5 R4 K10 ["dummy"]
       54 CALL                             R2 2 -1
       55 RETURN                           R2 -1
       56 LOADNIL                          R2
       57 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["EditingTools"]
       24 GETTABLEKS                       R3 R3 K11 ["EditingWorldModelContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K12 ["Packages"]
       31 GETTABLEKS                       R4 R4 K13 ["React"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K14 ["Types"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Flags"]
       47 GETTABLEKS                       R6 R6 K16 ["getFFlagAvatarPreviewerEditingTools"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K17 ["Hooks"]
       56 GETTABLEKS                       R7 R7 K18 ["useClothingFromInstances"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K19 [PROTO_0]
       60 CAPTURE                          VAL R6
       61 DUPCLOSURE                       R8 K20 [PROTO_3]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R1
       64 DUPCLOSURE                       R9 K21 [PROTO_5]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R7
       70 RETURN                           R9 1
