PROTO_0:
        0 LOADK                            R2 K0 ["rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/%*.png"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["rbxasset://studio_svg_textures/Shared/Packages/%*/Standard/%*.png"]
        1 MOVE                             R5 R1
        2 MOVE                             R6 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ThemeContext"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K10 ["explorer"]
       21 DUPCLOSURE                       R3 K11 [PROTO_1]
       22 SETTABLEKS                       R3 R2 K12 ["packages"]
       24 RETURN                           R2 1
