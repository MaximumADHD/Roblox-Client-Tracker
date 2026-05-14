PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NOT                              R1 R2
        3 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        5 LOADK                            R2 K0 ["DEPRECATED_registerPluginStyles should not be used when FFlagPreviewToolbar is enabled"]
        6 GETIMPORT                        R0 K2 [assert]
        8 CALL                             R0 2 0
        9 GETIMPORT                        R0 K5 [Instance.new]
       11 LOADK                            R1 K6 ["StyleSheet"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["registerPluginStyles should only be used when FFlagPreviewToolbar is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETIMPORT                        R0 K5 [Instance.new]
       10 LOADK                            R1 K6 ["StyleSheet"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CAPTURE                          UPVAL U1
        3 SETTABLEKS                       R1 R0 K1 ["DEPRECATED_registerPluginStyles"]
        5 GETUPVAL                         R0 0
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R1 R0 K3 ["registerPluginStyles"]
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Interfaces"]
       15 GETTABLEKS                       R2 R2 K9 ["RegisterPluginStylesInterface"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Flags"]
       24 GETTABLEKS                       R3 R3 K11 ["getFFlagPreviewToolbar"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K12 [PROTO_2]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
