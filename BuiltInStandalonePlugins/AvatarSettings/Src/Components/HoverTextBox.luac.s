PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["TextLabel"]
        2 NEWTABLE                         R3 2 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["Tag"]
        7 LOADK                            R5 K2 ["Component-HoverTextBox"]
        8 SETTABLE                         R5 R3 R4
        9 GETTABLEKS                       R4 R0 K3 ["text"]
       11 SETTABLEKS                       R4 R3 K4 ["Text"]
       13 DUPTABLE                         R4 K6 [{"SizeConstraint"}]
       14 GETUPVAL                         R5 0
       15 LOADK                            R6 K7 ["UISizeConstraint"]
       16 DUPTABLE                         R7 K9 [{"MaxSize"}]
       17 GETIMPORT                        R8 K12 [Vector2.new]
       19 GETTABLEKS                       R10 R0 K13 ["maxWidth"]
       21 JUMPIFNOT                        R10 ; [+3]
       22 GETTABLEKS                       R9 R0 K13 ["maxWidth"]
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R9 R9 K14 ["DEFAULT_HOVERTEXTBOX_MAX_WIDTH"]
       28 LOADK                            R10 K15 [∞]
       29 CALL                             R8 2 1
       30 SETTABLEKS                       R8 R7 K8 ["MaxSize"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K5 ["SizeConstraint"]
       35 CALL                             R1 3 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["createElement"]
       25 DUPCLOSURE                       R4 K12 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
