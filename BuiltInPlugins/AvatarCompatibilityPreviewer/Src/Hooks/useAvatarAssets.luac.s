PROTO_0:
        0 DUPTABLE                         R0 K8 [{"accessories", "animation", "clothing", "gear", "makeup", "emotion", "patches", "skinTone"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["accessories"]
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["animation"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["clothing"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K3 ["gear"]
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K4 ["makeup"]
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K5 ["emotion"]
       23 NEWTABLE                         R1 0 0
       25 SETTABLEKS                       R1 R0 K6 ["patches"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K7 ["skinTone"]
       30 GETUPVAL                         R1 0
       31 LOADNIL                          R2
       32 LOADNIL                          R3
       33 FORGPREP                         R1
       34 GETTABLEKS                       R6 R5 K9 ["item"]
       36 GETUPVAL                         R7 1
       37 CALL                             R7 0 1
       38 JUMPIFNOT                        R7 ; [+31]
       39 GETTABLEKS                       R7 R6 K10 ["source"]
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R8 R8 K11 ["SOURCE_INSTANCE"]
       44 JUMPIFEQ                         R7 R8 ; [+61]
       46 GETTABLEKS                       R7 R5 K12 ["isHidden"]
       48 JUMPIF                           R7 ; [+57]
       49 GETTABLEKS                       R8 R6 K10 ["source"]
       51 GETUPVAL                         R9 2
       52 GETTABLEKS                       R9 R9 K13 ["SOURCE_BUILTIN"]
       54 JUMPIFNOTEQ                      R8 R9 ; [+4]
       56 GETTABLEKS                       R7 R6 K14 ["builtinItem"]
       58 JUMP                             ; [+2]
       59 GETTABLEKS                       R7 R6 K15 ["marketplaceItem"]
       61 GETTABLEKS                       R8 R5 K16 ["palette"]
       63 GETTABLEKS                       R8 R8 K17 ["WearBuiltin"]
       65 MOVE                             R9 R7
       66 MOVE                             R10 R0
       67 MOVE                             R11 R4
       68 CALL                             R8 3 0
       69 JUMP                             ; [+36]
       70 GETTABLEKS                       R7 R6 K10 ["source"]
       72 GETUPVAL                         R8 2
       73 GETTABLEKS                       R8 R8 K13 ["SOURCE_BUILTIN"]
       75 JUMPIFNOTEQ                      R7 R8 ; [+30]
       77 GETTABLEKS                       R9 R6 K10 ["source"]
       79 GETUPVAL                         R10 2
       80 GETTABLEKS                       R10 R10 K13 ["SOURCE_BUILTIN"]
       82 JUMPIFEQ                         R9 R10 ; [+2]
       84 LOADB                            R8 0 +1
       85 LOADB                            R8 1
       86 GETUPVAL                         R9 2
       87 GETTABLEKS                       R9 R9 K18 ["LUAU_ANALYZE_ERROR"]
       89 FASTCALL2                        ASSERT R8 R9 ; [+3]
       91 GETIMPORT                        R7 K20 [assert]
       93 CALL                             R7 2 0
       94 GETTABLEKS                       R7 R5 K12 ["isHidden"]
       96 JUMPIF                           R7 ; [+9]
       97 GETTABLEKS                       R7 R5 K16 ["palette"]
       99 GETTABLEKS                       R7 R7 K17 ["WearBuiltin"]
      101 GETTABLEKS                       R8 R6 K14 ["builtinItem"]
      103 MOVE                             R9 R0
      104 MOVE                             R10 R4
      105 CALL                             R7 3 0
      106 FORGLOOP                         R1 2 ; [-73]
      108 RETURN                           R0 1

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
