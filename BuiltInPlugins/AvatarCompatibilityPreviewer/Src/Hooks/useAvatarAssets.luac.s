PROTO_0:
        0 DUPTABLE                         R0 K9 [{"accessories", "animation", "classicClothing", "clothing", "gear", "makeup", "emotion", "patches", "skinTone"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["accessories"]
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["animation"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["classicClothing"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K3 ["clothing"]
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K4 ["gear"]
       20 NEWTABLE                         R1 0 0
       22 SETTABLEKS                       R1 R0 K5 ["makeup"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K6 ["emotion"]
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K7 ["patches"]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K8 ["skinTone"]
       34 GETUPVAL                         R1 0
       35 LOADNIL                          R2
       36 LOADNIL                          R3
       37 FORGPREP                         R1
       38 GETTABLEKS                       R6 R5 K10 ["item"]
       40 GETUPVAL                         R7 1
       41 CALL                             R7 0 1
       42 JUMPIFNOT                        R7 ; [+31]
       43 GETTABLEKS                       R7 R6 K11 ["source"]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R8 R8 K12 ["SOURCE_INSTANCE"]
       48 JUMPIFEQ                         R7 R8 ; [+61]
       50 GETTABLEKS                       R7 R5 K13 ["isHidden"]
       52 JUMPIF                           R7 ; [+57]
       53 GETTABLEKS                       R8 R6 K11 ["source"]
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R9 R9 K14 ["SOURCE_BUILTIN"]
       58 JUMPIFNOTEQ                      R8 R9 ; [+4]
       60 GETTABLEKS                       R7 R6 K15 ["builtinItem"]
       62 JUMP                             ; [+2]
       63 GETTABLEKS                       R7 R6 K16 ["marketplaceItem"]
       65 GETTABLEKS                       R8 R5 K17 ["palette"]
       67 GETTABLEKS                       R8 R8 K18 ["WearBuiltin"]
       69 MOVE                             R9 R7
       70 MOVE                             R10 R0
       71 MOVE                             R11 R4
       72 CALL                             R8 3 0
       73 JUMP                             ; [+36]
       74 GETTABLEKS                       R7 R6 K11 ["source"]
       76 GETUPVAL                         R8 2
       77 GETTABLEKS                       R8 R8 K14 ["SOURCE_BUILTIN"]
       79 JUMPIFNOTEQ                      R7 R8 ; [+30]
       81 GETTABLEKS                       R9 R6 K11 ["source"]
       83 GETUPVAL                         R10 2
       84 GETTABLEKS                       R10 R10 K14 ["SOURCE_BUILTIN"]
       86 JUMPIFEQ                         R9 R10 ; [+2]
       88 LOADB                            R8 0 +1
       89 LOADB                            R8 1
       90 GETUPVAL                         R9 2
       91 GETTABLEKS                       R9 R9 K19 ["LUAU_ANALYZE_ERROR"]
       93 FASTCALL2                        ASSERT R8 R9 ; [+3]
       95 GETIMPORT                        R7 K21 [assert]
       97 CALL                             R7 2 0
       98 GETTABLEKS                       R7 R5 K13 ["isHidden"]
      100 JUMPIF                           R7 ; [+9]
      101 GETTABLEKS                       R7 R5 K17 ["palette"]
      103 GETTABLEKS                       R7 R7 K18 ["WearBuiltin"]
      105 GETTABLEKS                       R8 R6 K15 ["builtinItem"]
      107 MOVE                             R9 R0
      108 MOVE                             R10 R4
      109 CALL                             R7 3 0
      110 FORGLOOP                         R1 2 ; [-73]
      112 RETURN                           R0 1

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
