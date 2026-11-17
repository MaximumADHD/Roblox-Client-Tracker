PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["boolean"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["hasPublishingFeePreview must be a boolean"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 LOADB                            R3 1
       16 JUMPIFEQKNIL                     R1 ; [+10]
       18 FASTCALL1                        TYPE R1 ; [+3]
       19 MOVE                             R5 R1
       20 GETIMPORT                        R4 K1 [type]
       22 CALL                             R4 1 1
       23 JUMPIFEQKS                       R4 K6 ["number"] ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       29 LOADK                            R4 K7 ["publishingFeePreview must be a number or nil"]
       30 GETIMPORT                        R2 K5 [assert]
       32 CALL                             R2 2 0
       33 DUPTABLE                         R2 K10 [{"hasPublishingFeePreview", "publishingFeePreview"}]
       34 SETTABLEKS                       R0 R2 K8 ["hasPublishingFeePreview"]
       36 SETTABLEKS                       R1 R2 K9 ["publishingFeePreview"]
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K7 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["Action"]
       20 MOVE                             R4 R3
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K9 ["Name"]
       25 DUPCLOSURE                       R6 K10 [PROTO_0]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1
