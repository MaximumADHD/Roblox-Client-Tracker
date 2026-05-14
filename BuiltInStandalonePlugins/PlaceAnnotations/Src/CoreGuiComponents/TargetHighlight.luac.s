PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R2 R0 K0 ["Instance"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 2
       10 LOADNIL                          R2
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Move"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 NAMECALL                         R2 R2 K2 ["get"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 0
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K4 ["createElement"]
       25 LOADK                            R4 K5 ["Highlight"]
       26 DUPTABLE                         R5 K13 [{"Adornee", "LineThickness", "ReservedId", "OutlineColor", "OutlineTransparency", "FillTransparency", "DepthMode"}]
       27 SETTABLEKS                       R0 R5 K6 ["Adornee"]
       29 LOADN                            R6 3
       30 SETTABLEKS                       R6 R5 K7 ["LineThickness"]
       32 GETIMPORT                        R6 K17 [Enum.ReservedHighlightId.Hover]
       34 SETTABLEKS                       R6 R5 K8 ["ReservedId"]
       36 GETIMPORT                        R6 K20 [Color3.fromRGB]
       38 LOADN                            R7 190
       39 LOADN                            R8 250
       40 LOADN                            R9 190
       41 CALL                             R6 3 1
       42 SETTABLEKS                       R6 R5 K9 ["OutlineColor"]
       44 LOADK                            R6 K21 [0.15]
       45 SETTABLEKS                       R6 R5 K10 ["OutlineTransparency"]
       47 LOADN                            R6 1
       48 SETTABLEKS                       R6 R5 K11 ["FillTransparency"]
       50 GETIMPORT                        R6 K24 [Enum.HighlightDepthMode.AlwaysOnTop]
       52 SETTABLEKS                       R6 R5 K12 ["DepthMode"]
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Mouse"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["doSelectionRaycast"]
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K14 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 RETURN                           R6 1
