PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 LOADK                            R3 K0 ["rbxasset://"]
        4 GETUPVAL                         R5 0
        5 FASTCALL1                        TOSTRING R5 ; [+2]
        6 GETIMPORT                        R4 K2 [tostring]
        8 CALL                             R4 1 1
        9 CONCAT                           R2 R3 R4
       10 NAMECALL                         R0 R0 K3 ["CopyToClipboard"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["sourceAssetId"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["useCallback"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R4 0 1
       17 MOVE                             R5 R1
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 1
       21 JUMPIF                           R1 ; [+2]
       22 LOADNIL                          R3
       23 RETURN                           R3 1
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["GraphDirtyStateContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K11 [game]
       23 LOADK                            R5 K12 ["StudioService"]
       24 NAMECALL                         R3 R3 K13 ["GetService"]
       26 CALL                             R3 2 1
       27 DUPCLOSURE                       R4 K14 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 RETURN                           R4 1
