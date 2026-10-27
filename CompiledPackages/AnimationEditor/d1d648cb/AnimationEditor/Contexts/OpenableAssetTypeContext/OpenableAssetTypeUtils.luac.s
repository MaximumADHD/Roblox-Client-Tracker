PROTO_0:
        0 GETIMPORT                        R1 K3 [Enum.AssetType.Animation]
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADK                            R1 K4 ["AnimationClip"]
        5 RETURN                           R1 1
        6 LOADK                            R1 K5 ["AnimationGraphDefinition"]
        7 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["DEFAULT"]
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K2 [typeof]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K3 ["EnumItem"] ; [+4]
       12 GETTABLEKS                       R2 R1 K4 ["Name"]
       14 RETURN                           R2 1
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPTABLE                         R2 K9 [{["DEFAULT"] = "AnimationGraph"}]
       13 DUPCLOSURE                       R3 K10 [PROTO_0]
       14 SETTABLEKS                       R3 R2 K11 ["getClassName"]
       16 DUPCLOSURE                       R3 K12 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 SETTABLEKS                       R3 R2 K13 ["getPromptAssetTypeName"]
       20 RETURN                           R2 1
