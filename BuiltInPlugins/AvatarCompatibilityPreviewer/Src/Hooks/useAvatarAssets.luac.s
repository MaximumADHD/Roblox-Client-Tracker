PROTO_0:
        0 DUPTABLE                         R0 K10 [{[1], ["animation"] = , ["classicClothing"], ["clothing"], ["gear"], ["makeup"], ["emotion"] = , ["patches"], ["skinTone"] = }]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["accessories"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K3 ["classicClothing"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K4 ["clothing"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K5 ["gear"]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K6 ["makeup"]
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K8 ["patches"]
       25 GETUPVAL                         R1 0
       26 LOADNIL                          R2
       27 LOADNIL                          R3
       28 FORGPREP                         R1
       29 GETTABLEKS                       R6 R5 K11 ["item"]
       31 GETUPVAL                         R7 1
       32 CALL                             R7 0 1
       33 JUMPIFNOT                        R7 ; [+31]
       34 GETTABLEKS                       R7 R6 K12 ["source"]
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R8 R8 K13 ["SOURCE_INSTANCE"]
       39 JUMPIFEQ                         R7 R8 ; [+61]
       41 GETTABLEKS                       R7 R5 K14 ["isHidden"]
       43 JUMPIF                           R7 ; [+57]
       44 GETTABLEKS                       R8 R6 K12 ["source"]
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R9 R9 K15 ["SOURCE_BUILTIN"]
       49 JUMPIFNOTEQ                      R8 R9 ; [+4]
       51 GETTABLEKS                       R7 R6 K16 ["builtinItem"]
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R7 R6 K17 ["marketplaceItem"]
       56 GETTABLEKS                       R8 R5 K18 ["palette"]
       58 GETTABLEKS                       R8 R8 K19 ["WearBuiltin"]
       60 MOVE                             R9 R7
       61 MOVE                             R10 R0
       62 MOVE                             R11 R4
       63 CALL                             R8 3 0
       64 JUMP                             ; [+36]
       65 GETTABLEKS                       R7 R6 K12 ["source"]
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R8 R8 K15 ["SOURCE_BUILTIN"]
       70 JUMPIFNOTEQ                      R7 R8 ; [+30]
       72 GETTABLEKS                       R9 R6 K12 ["source"]
       74 GETUPVAL                         R10 2
       75 GETTABLEKS                       R10 R10 K15 ["SOURCE_BUILTIN"]
       77 JUMPIFEQ                         R9 R10 ; [+2]
       79 LOADB                            R8 0 +1
       80 LOADB                            R8 1
       81 GETUPVAL                         R9 2
       82 GETTABLEKS                       R9 R9 K20 ["LUAU_ANALYZE_ERROR"]
       84 FASTCALL2                        ASSERT R8 R9 ; [+3]
       86 GETIMPORT                        R7 K22 [assert]
       88 CALL                             R7 2 0
       89 GETTABLEKS                       R7 R5 K14 ["isHidden"]
       91 JUMPIF                           R7 ; [+9]
       92 GETTABLEKS                       R7 R5 K18 ["palette"]
       94 GETTABLEKS                       R7 R7 K19 ["WearBuiltin"]
       96 GETTABLEKS                       R8 R6 K16 ["builtinItem"]
       98 MOVE                             R9 R0
       99 MOVE                             R10 R4
      100 CALL                             R7 3 0
      101 FORGLOOP                         R1 2 ; [-73]
      103 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 1
        9 MOVE                             R4 R0
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Flags"]
       36 GETTABLEKS                       R5 R5 K13 ["getFFlagAvatarPreviewerLookComposer"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_1]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 RETURN                           R5 1
