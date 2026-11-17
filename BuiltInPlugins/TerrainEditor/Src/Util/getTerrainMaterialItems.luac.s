PROTO_0:
        0 GETIMPORT                        R3 K2 [string.find]
        2 GETIMPORT                        R4 K4 [string.lower]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 1
        6 MOVE                             R5 R1
        7 LOADN                            R6 1
        8 LOADB                            R7 1
        9 CALL                             R3 4 1
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [string.lower]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R0
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 JUMPIFEQKS                       R2 K3 [""] ; [+54]
       12 GETTABLEKS                       R10 R8 K4 ["displayName"]
       14 GETIMPORT                        R11 K6 [string.find]
       16 GETIMPORT                        R12 K2 [string.lower]
       18 MOVE                             R13 R10
       19 CALL                             R12 1 1
       20 MOVE                             R13 R2
       21 LOADN                            R14 1
       22 LOADB                            R15 1
       23 CALL                             R11 4 1
       24 JUMPIFNOTEQKNIL                  R11 ; [+2]
       26 LOADB                            R9 0 +1
       27 LOADB                            R9 1
       28 JUMPIF                           R9 ; [+36]
       29 GETTABLEKS                       R10 R8 K7 ["variantName"]
       31 GETIMPORT                        R11 K6 [string.find]
       33 GETIMPORT                        R12 K2 [string.lower]
       35 MOVE                             R13 R10
       36 CALL                             R12 1 1
       37 MOVE                             R13 R2
       38 LOADN                            R14 1
       39 LOADB                            R15 1
       40 CALL                             R11 4 1
       41 JUMPIFNOTEQKNIL                  R11 ; [+2]
       43 LOADB                            R9 0 +1
       44 LOADB                            R9 1
       45 JUMPIF                           R9 ; [+19]
       46 GETTABLEKS                       R10 R8 K8 ["baseMaterial"]
       48 GETTABLEKS                       R10 R10 K9 ["Name"]
       50 GETIMPORT                        R11 K6 [string.find]
       52 GETIMPORT                        R12 K2 [string.lower]
       54 MOVE                             R13 R10
       55 CALL                             R12 1 1
       56 MOVE                             R13 R2
       57 LOADN                            R14 1
       58 LOADB                            R15 1
       59 CALL                             R11 4 1
       60 JUMPIFNOTEQKNIL                  R11 ; [+2]
       62 LOADB                            R9 0 +1
       63 LOADB                            R9 1
       64 JUMPIFNOT                        R9 ; [+26]
       65 DUPTABLE                         R11 K14 [{"Id", "Material", "OverrideColor", "Text"}]
       66 GETTABLEKS                       R12 R8 K15 ["slotIndex"]
       68 SETTABLEKS                       R12 R11 K10 ["Id"]
       70 GETTABLEKS                       R12 R8 K16 ["resolvedVariant"]
       72 JUMPIF                           R12 ; [+2]
       73 GETTABLEKS                       R12 R8 K8 ["baseMaterial"]
       75 SETTABLEKS                       R12 R11 K11 ["Material"]
       77 GETTABLEKS                       R12 R8 K17 ["color"]
       79 SETTABLEKS                       R12 R11 K12 ["OverrideColor"]
       81 GETTABLEKS                       R12 R8 K4 ["displayName"]
       83 SETTABLEKS                       R12 R11 K13 ["Text"]
       85 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       87 MOVE                             R10 R3
       88 GETIMPORT                        R9 K20 [table.insert]
       90 CALL                             R9 2 0
       91 FORGLOOP                         R4 2 ; [-82]
       93 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TerrainPalette"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 RETURN                           R3 1
