PROTO_0:
        0 LOADK                            R3 K0 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/%*.png"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["Expanded"] ; [+8]
        2 LOADK                            R3 K1 ["rbxasset://studio_svg_textures/Shared/Navigation/%*/Standard/ArrowDown.png"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K2 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 RETURN                           R2 1
        9 LOADK                            R3 K3 ["rbxasset://studio_svg_textures/Shared/Navigation/%*/Standard/ArrowRight.png"]
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R3 K2 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ThemeContext"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K10 ["scriptTypeIcons"]
       21 DUPCLOSURE                       R3 K11 [PROTO_1]
       22 SETTABLEKS                       R3 R2 K12 ["collapseExpandArrowIcon"]
       24 RETURN                           R2 1
