PROTO_0:
        0 GETIMPORT                        R0 K3 [Enum.BundleType.Animations]
        2 GETIMPORT                        R1 K6 [Enum.AssetType.ClimbAnimation]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETIMPORT                        R0 K1 [game]
        4 LOADK                            R2 K2 ["UGCValidationAnimationPackSupport"]
        5 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationAnimationPackSupport"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K5 [pcall]
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CALL                             R0 1 1
       12 DUPCLOSURE                       R1 K7 [PROTO_1]
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1
