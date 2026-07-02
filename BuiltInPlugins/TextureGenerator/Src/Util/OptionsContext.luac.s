MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["createUnimplemented"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K40 [{["promptText"] = "", ["randomizeSeed"] = True, ["seed"] = 0, ["rotation"], ["smartUVUnwrap"] = False, ["promptMasking"] = False, ["validRotation"] = True, ["validSeed"] = True, ["artStyle"] = "", ["strength"] = 0.5, ["artStyleExpanded"] = False, ["optionsExapnded"], ["setPromptText"], ["setRandomizeSeed"], ["setSeed"], ["setRotation"], ["setSmartUVUnwrap"], ["setPromptMasking"], ["setValidRotation"], ["setValidSeed"], ["setArtStyle"], ["setStrength"], ["setArtStyleExpanded"], ["setOptionsExpanded"]}]
       24 GETIMPORT                        R4 K43 [CFrame.new]
       26 CALL                             R4 0 1
       27 SETTABLEKS                       R4 R3 K17 ["rotation"]
       29 NEWTABLE                         R4 0 0
       31 SETTABLEKS                       R4 R3 K27 ["optionsExapnded"]
       33 MOVE                             R4 R2
       34 LOADK                            R5 K28 ["setPromptText"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K28 ["setPromptText"]
       38 MOVE                             R4 R2
       39 LOADK                            R5 K29 ["setRandomizeSeed"]
       40 CALL                             R4 1 1
       41 SETTABLEKS                       R4 R3 K29 ["setRandomizeSeed"]
       43 MOVE                             R4 R2
       44 LOADK                            R5 K30 ["setSeed"]
       45 CALL                             R4 1 1
       46 SETTABLEKS                       R4 R3 K30 ["setSeed"]
       48 MOVE                             R4 R2
       49 LOADK                            R5 K31 ["setRotation"]
       50 CALL                             R4 1 1
       51 SETTABLEKS                       R4 R3 K31 ["setRotation"]
       53 MOVE                             R4 R2
       54 LOADK                            R5 K32 ["setSmartUVUnwrap"]
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R3 K32 ["setSmartUVUnwrap"]
       58 MOVE                             R4 R2
       59 LOADK                            R5 K33 ["setPromptMasking"]
       60 CALL                             R4 1 1
       61 SETTABLEKS                       R4 R3 K33 ["setPromptMasking"]
       63 MOVE                             R4 R2
       64 LOADK                            R5 K34 ["setValidRotation"]
       65 CALL                             R4 1 1
       66 SETTABLEKS                       R4 R3 K34 ["setValidRotation"]
       68 MOVE                             R4 R2
       69 LOADK                            R5 K35 ["setValidSeed"]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K35 ["setValidSeed"]
       73 MOVE                             R4 R2
       74 LOADK                            R5 K36 ["setArtStyle"]
       75 CALL                             R4 1 1
       76 SETTABLEKS                       R4 R3 K36 ["setArtStyle"]
       78 MOVE                             R4 R2
       79 LOADK                            R5 K37 ["setStrength"]
       80 CALL                             R4 1 1
       81 SETTABLEKS                       R4 R3 K37 ["setStrength"]
       83 MOVE                             R4 R2
       84 LOADK                            R5 K38 ["setArtStyleExpanded"]
       85 CALL                             R4 1 1
       86 SETTABLEKS                       R4 R3 K38 ["setArtStyleExpanded"]
       88 MOVE                             R4 R2
       89 LOADK                            R5 K39 ["setOptionsExpanded"]
       90 CALL                             R4 1 1
       91 SETTABLEKS                       R4 R3 K39 ["setOptionsExpanded"]
       93 GETTABLEKS                       R4 R1 K44 ["createContext"]
       95 MOVE                             R5 R3
       96 CALL                             R4 1 1
       97 RETURN                           R4 1
