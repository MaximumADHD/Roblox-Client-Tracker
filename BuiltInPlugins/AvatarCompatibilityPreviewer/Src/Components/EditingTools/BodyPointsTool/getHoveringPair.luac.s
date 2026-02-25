PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["generallyEquivalentPointNames"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R3 R0 K0 ["generallyEquivalentPointNames"]
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K1 ["LUAU_ANALYZE_ERROR"]
       15 FASTCALL2                        ASSERT R2 R3 ; [+3]
       17 GETIMPORT                        R1 K3 [assert]
       19 CALL                             R1 2 0
       20 GETTABLEKS                       R2 R0 K4 ["hoveredPointNames"]
       22 LENGTH                           R1 R2
       23 LOADN                            R2 1
       24 JUMPIFNOTLE                      R1 R2 ; [+3]
       26 LOADNIL                          R1
       27 RETURN                           R1 1
       28 GETUPVAL                         R1 1
       29 MOVE                             R2 R0
       30 GETIMPORT                        R3 K7 [Ray.new]
       32 LOADK                            R4 K8 [{0, 0, 0}]
       33 LOADK                            R5 K8 [{0, 0, 0}]
       34 CALL                             R3 2 1
       35 GETTABLEKS                       R4 R0 K9 ["selection"]
       37 NAMECALL                         R4 R4 K10 ["Get"]
       39 CALL                             R4 1 -1
       40 CALL                             R1 -1 1
       41 JUMPIFNOTEQKNIL                  R1 ; [+3]
       43 LOADNIL                          R2
       44 RETURN                           R2 1
       45 JUMPIFNOTEQKNIL                  R1 ; [+2]
       47 LOADB                            R3 0 +1
       48 LOADB                            R3 1
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R4 R5 K1 ["LUAU_ANALYZE_ERROR"]
       52 FASTCALL2                        ASSERT R3 R4 ; [+3]
       54 GETIMPORT                        R2 K3 [assert]
       56 CALL                             R2 2 0
       57 GETTABLEKS                       R2 R0 K0 ["generallyEquivalentPointNames"]
       59 LOADNIL                          R3
       60 LOADNIL                          R4
       61 FORGPREP                         R2
       62 LENGTH                           R9 R6
       63 JUMPIFEQKN                       R9 K11 [2] ; [+2]
       65 LOADB                            R8 0 +1
       66 LOADB                            R8 1
       67 FASTCALL2K                       ASSERT R8 K12 ; [+4]
       69 LOADK                            R9 K12 ["Generally equivalent point names should be in pairs"]
       70 GETIMPORT                        R7 K3 [assert]
       72 CALL                             R7 2 0
       73 GETTABLEN                        R7 R6 1
       74 JUMPIFEQ                         R7 R1 ; [+4]
       76 GETTABLEN                        R7 R6 2
       77 JUMPIFNOTEQ                      R7 R1 ; [+17]
       79 GETTABLEKS                       R7 R0 K4 ["hoveredPointNames"]
       81 LOADNIL                          R8
       82 LOADNIL                          R9
       83 FORGPREP                         R7
       84 JUMPIFEQ                         R11 R1 ; [+8]
       86 GETTABLEN                        R12 R6 1
       87 JUMPIFEQ                         R11 R12 ; [+4]
       89 GETTABLEN                        R12 R6 2
       90 JUMPIFNOTEQ                      R11 R12 ; [+2]
       92 RETURN                           R6 1
       93 FORGLOOP                         R7 2 ; [-10]
       95 FORGLOOP                         R2 2 ; [-34]
       97 LOADNIL                          R2
       98 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["EditingTools"]
       15 GETTABLEKS                       R3 R4 K9 ["BodyPointsTool"]
       17 GETTABLEKS                       R2 R3 K10 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R8 R0 K6 ["Src"]
       24 GETTABLEKS                       R7 R8 K7 ["Components"]
       26 GETTABLEKS                       R6 R7 K8 ["EditingTools"]
       28 GETTABLEKS                       R5 R6 K9 ["BodyPointsTool"]
       30 GETTABLEKS                       R4 R5 K11 ["DraggerSchema"]
       32 GETTABLEKS                       R3 R4 K12 ["getMouseTarget"]
       34 CALL                             R2 1 1
       35 GETIMPORT                        R3 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Src"]
       39 GETTABLEKS                       R5 R6 K13 ["Util"]
       41 GETTABLEKS                       R4 R5 K14 ["Constants"]
       43 CALL                             R3 1 1
       44 DUPCLOSURE                       R4 K15 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 RETURN                           R4 1
