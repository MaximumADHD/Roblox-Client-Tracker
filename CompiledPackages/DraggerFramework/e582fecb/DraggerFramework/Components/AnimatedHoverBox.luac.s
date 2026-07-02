PROTO_0:
        0 DIV                              R8 R3 R2
        1 MULK                             R7 R8 K1 [3.14159265358979]
        2 FASTCALL1                        MATH_SIN R7 ; [+2]
        3 GETIMPORT                        R6 K4 [math.sin]
        5 CALL                             R6 1 1
        6 MULK                             R5 R6 K0 [0.5]
        7 ADDK                             R4 R5 K0 [0.5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R4
       10 NAMECALL                         R5 R1 K5 ["lerp"]
       12 CALL                             R5 3 -1
       13 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AnimatePeriod"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["HoverTarget"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Missing required property 'HoverTarget'."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R3 R1 K4 ["SelectColor"]
       10 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       12 LOADK                            R4 K5 ["Missing required property 'SelectColor'."]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R3 R1 K6 ["HoverColor"]
       18 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       20 LOADK                            R4 K7 ["Missing required property 'HoverColor'."]
       21 GETIMPORT                        R2 K3 [assert]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R3 R1 K8 ["LineThickness"]
       26 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       28 LOADK                            R4 K9 ["Missing required property 'LineThickness'."]
       29 GETIMPORT                        R2 K3 [assert]
       31 CALL                             R2 2 0
       32 GETTABLEKS                       R3 R1 K10 ["SelectionBoxComponent"]
       34 FASTCALL2K                       ASSERT R3 K11 ; [+4]
       36 LOADK                            R4 K11 ["Missing required property 'SelectionBoxComponent'."]
       37 GETIMPORT                        R2 K3 [assert]
       39 CALL                             R2 2 0
       40 DUPTABLE                         R4 K13 [{"currentColor"}]
       41 GETTABLEKS                       R5 R1 K4 ["SelectColor"]
       43 SETTABLEKS                       R5 R4 K12 ["currentColor"]
       45 NAMECALL                         R2 R0 K14 ["setState"]
       47 CALL                             R2 2 0
       48 NEWCLOSURE                       R2 P0
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R2 R0 K15 ["shouldAnimate"]
       52 LOADB                            R2 0
       53 SETTABLEKS                       R2 R0 K16 ["_isMounted"]
       55 LOADN                            R2 0
       56 SETTABLEKS                       R2 R0 K17 ["_startTime"]
       58 GETUPVAL                         R2 0
       59 LOADB                            R4 0
       60 NAMECALL                         R2 R2 K18 ["GenerateGUID"]
       62 CALL                             R2 2 1
       63 LOADK                            R4 K19 ["AnimatedHoverBoxUpdate"]
       64 LOADK                            R5 K20 ["_"]
       65 MOVE                             R6 R2
       66 CONCAT                           R3 R4 R6
       67 SETTABLEKS                       R3 R0 K21 ["_bindName"]
       69 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        3 JUMPIFNOT                        R0 ; [+42]
        4 GETIMPORT                        R1 K2 [tick]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["_startTime"]
       10 SUB                              R0 R1 R2
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["props"]
       14 GETTABLEKS                       R3 R1 K5 ["AnimatePeriod"]
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETTABLEKS                       R2 R1 K5 ["AnimatePeriod"]
       19 JUMP                             ; [+1]
       20 LOADN                            R2 0
       21 GETTABLEKS                       R4 R1 K6 ["SelectColor"]
       23 GETTABLEKS                       R5 R1 K7 ["HoverColor"]
       25 DIV                              R10 R0 R2
       26 MULK                             R9 R10 K9 [3.14159265358979]
       27 FASTCALL1                        MATH_SIN R9 ; [+2]
       28 GETIMPORT                        R8 K12 [math.sin]
       30 CALL                             R8 1 1
       31 MULK                             R7 R8 K8 [0.5]
       32 ADDK                             R6 R7 K8 [0.5]
       33 MOVE                             R9 R4
       34 MOVE                             R10 R6
       35 NAMECALL                         R7 R5 K13 ["lerp"]
       37 CALL                             R7 3 1
       38 MOVE                             R3 R7
       39 GETUPVAL                         R4 0
       40 DUPTABLE                         R6 K15 [{"currentColor"}]
       41 SETTABLEKS                       R3 R6 K14 ["currentColor"]
       43 NAMECALL                         R4 R4 K16 ["setState"]
       45 CALL                             R4 2 0
       46 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["shouldAnimate"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+17]
        7 GETIMPORT                        R1 K3 [tick]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K4 ["_startTime"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R3 R0 K5 ["_bindName"]
       15 GETIMPORT                        R4 K9 [Enum.RenderPriority.First]
       17 GETTABLEKS                       R4 R4 K10 ["Value"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R0
       21 NAMECALL                         R1 R1 K11 ["BindToRenderStep"]
       23 CALL                             R1 4 0
       24 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R3 R0 K1 ["_bindName"]
        6 NAMECALL                         R1 R1 K2 ["UnbindFromRenderStep"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["HoverTarget"]
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 GETTABLEKS                       R3 R0 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K2 ["Thickness"]
       11 GETTABLEKS                       R5 R0 K3 ["shouldAnimate"]
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+5]
       15 GETTABLEKS                       R4 R0 K4 ["state"]
       17 GETTABLEKS                       R4 R4 K5 ["currentColor"]
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R4 R1 K6 ["HoverColor"]
       22 LOADK                            R7 K7 ["PVInstance"]
       23 NAMECALL                         R5 R2 K8 ["IsA"]
       25 CALL                             R5 2 1
       26 JUMPIFNOT                        R5 ; [+55]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["createFragment"]
       30 DUPTABLE                         R6 K12 [{"Outline", "BoundingBox"}]
       31 GETTABLEKS                       R8 R1 K13 ["ShowOutline"]
       33 JUMPIFNOT                        R8 ; [+21]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K14 ["createElement"]
       37 LOADK                            R8 K15 ["Highlight"]
       38 DUPTABLE                         R9 K25 [{["Adornee"], ["FillTransparency"] = 1, ["FillColor"], ["LineThickness"], ["OutlineTransparency"] = 0, ["OutlineColor"], ["ReservedId"]}]
       39 SETTABLEKS                       R2 R9 K16 ["Adornee"]
       41 SETTABLEKS                       R4 R9 K19 ["FillColor"]
       43 GETTABLEKS                       R10 R1 K20 ["LineThickness"]
       45 SETTABLEKS                       R10 R9 K20 ["LineThickness"]
       47 SETTABLEKS                       R4 R9 K23 ["OutlineColor"]
       49 GETIMPORT                        R10 K29 [Enum.ReservedHighlightId.Hover]
       51 SETTABLEKS                       R10 R9 K24 ["ReservedId"]
       53 CALL                             R7 2 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R7
       56 SETTABLEKS                       R7 R6 K10 ["Outline"]
       58 GETTABLEKS                       R8 R1 K30 ["ShowHoverBox"]
       60 JUMPIFNOT                        R8 ; [+16]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K14 ["createElement"]
       64 GETTABLEKS                       R8 R0 K0 ["props"]
       66 GETTABLEKS                       R8 R8 K31 ["SelectionBoxComponent"]
       68 DUPTABLE                         R9 K35 [{["Adornee"], ["Color3"], ["LineThickness"], ["StudioSelectionBox"] = True}]
       69 SETTABLEKS                       R2 R9 K16 ["Adornee"]
       71 SETTABLEKS                       R4 R9 K32 ["Color3"]
       73 SETTABLEKS                       R3 R9 K20 ["LineThickness"]
       75 CALL                             R7 2 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R7
       78 SETTABLEKS                       R7 R6 K11 ["BoundingBox"]
       80 CALL                             R5 1 -1
       81 RETURN                           R5 -1
       82 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R3 R2 K7 ["Parent"]
       21 GETTABLEKS                       R3 R3 K7 ["Parent"]
       23 GETIMPORT                        R4 K9 [require]
       25 GETTABLEKS                       R5 R3 K10 ["Packages"]
       27 GETTABLEKS                       R5 R5 K11 ["Roact"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_0]
       31 GETTABLEKS                       R6 R4 K13 ["PureComponent"]
       33 LOADK                            R8 K14 ["AnimatedHoverBox"]
       34 NAMECALL                         R6 R6 K15 ["extend"]
       36 CALL                             R6 2 1
       37 DUPCLOSURE                       R7 K16 [PROTO_2]
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R7 R6 K17 ["init"]
       41 DUPCLOSURE                       R7 K18 [PROTO_4]
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R7 R6 K19 ["didMount"]
       45 DUPCLOSURE                       R7 K20 [PROTO_5]
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R7 R6 K21 ["willUnmount"]
       49 DUPCLOSURE                       R7 K22 [PROTO_6]
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R7 R6 K23 ["render"]
       53 RETURN                           R6 1
