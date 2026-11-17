PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentDataModelType"]
        3 GETIMPORT                        R1 K4 [Enum.StudioDataModelType.Edit]
        5 JUMPIFNOTEQ                      R0 R1 ; [+5]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K5 ["reset"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reset"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reset"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["CurrentDataModelTypeChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R0 R0 K2 ["Connect"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Parent"]
        3 GETTABLEKS                       R0 R0 K1 ["MultipleDocumentInterfaceInstance"]
        5 GETTABLEKS                       R1 R0 K2 ["FocusedDataModelSession"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       13 LOADK                            R4 K3 ["FocusedDataModelSession is nil"]
       14 GETIMPORT                        R2 K5 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K6 ["useEffect"]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R4 0 0
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["TestInExperienceUtil"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_3]
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1
